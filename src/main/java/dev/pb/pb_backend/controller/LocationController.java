package dev.pb.pb_backend.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import dev.pb.pb_backend.entity.Fruit;
import dev.pb.pb_backend.entity.Location;
import dev.pb.pb_backend.entity.Vegetable;
import dev.pb.pb_backend.projection.LocationCountryCodeProjection;
import dev.pb.pb_backend.projection.LocationLocationIdProjection;
import dev.pb.pb_backend.service.LocationService;

@RestController
@RequestMapping("locations")

public class LocationController {

	private final Long MILLI_SECONDS_IN_DAY = (long) 86400000;
	
	@Autowired
	private LocationService locationService;
	
	// 'GET' http://localhost:8090/locations
	@GetMapping
	public List<Location.Response> findAllLocations() {
		System.out.println("GET: findAllLocations() of LocationController called");		
		List<Location> locationList = locationService.findAllLocations();
		return Location.Response.toResponseList(locationList);
	}
	
	// 'GET' http://localhost:8090/locations/:locationId
	@GetMapping("/{locationId}")
	public Location.Response findLocationByLocationId(@PathVariable int locationId) {
		System.out.println("GET: findLocationByLocationId() of LocationController called");		
		Location foundLocation = locationService.findLocationByLocationId(locationId);
		return Location.Response.toResponse(foundLocation);
	}
	
	// 'GET' http://localhost:8090/locations/:locationId
	@GetMapping("/countryCode/{countryCode}")
	public Location.ResponseLocationId findLocationIdByCountryCode(@PathVariable int countryCode) {
		System.out.println("GET: findLocationIdByCountryCode() of LocationController called");		
		LocationLocationIdProjection foundLocation = locationService.findLocationIdByCountryCode(countryCode);
		return Location.ResponseLocationId.toResponse(foundLocation);
	}
	
	// 'POST' http://localhost:8090/locations
	@PostMapping
	public ResponseEntity<Location.Response> createLocation(@RequestBody @Valid Location.Request request) {
		System.out.println("POST: createLocation() of LocationController called");		
		Location newLocation = Location.Request.toEntity(request);
		//Address address = request.getAddress();
		Location savedLocation = locationService.createLocation(newLocation);
		//address.setUser(savedUser);
		//addressRepository.save(address);
		Location.Response response = Location.Response.toResponse(savedLocation);
		return ResponseEntity.status(HttpStatus.CREATED).body(response);
	}

	// 'GET' http://localhost:8090/locations/localName/:localName
	@GetMapping("/localName/{localName}")
	public List<Location.ResponseCountryCode> findLocationsByLocalName(@PathVariable String localName) {
		System.out.println("GET: findLocationsByLocalName() of LocationController called " + localName);		
		List<LocationCountryCodeProjection> locationList = locationService.findByLocalName(localName);
		return Location.ResponseCountryCode.toResponseList(locationList);
	}
	
	// 'GET' http://localhost:8090/locations/localEngName/:localEngName
	@GetMapping("/localEngName/{localEngName}")
	public List<Location.Response> findByLocalEngName(@PathVariable String localEngName) {
		System.out.println("GET: findByLocalEngName() of LocationController called");		
		List<Location> locationList = locationService.findByLocalEngName(localEngName);
		for (Location location : locationList) {
			List<Vegetable> newVegetables = new ArrayList<>();
			List<Vegetable> vegetables = location.getVegetables();
			for (Vegetable vegetable : vegetables) {
				if (checkIfHarvest(vegetable)) {
					newVegetables.add(vegetable);
				}
			}
			location.setVegetables(newVegetables);

			List<Fruit> newFruits = new ArrayList<>();
			List<Fruit> fruits = location.getFruits();
			for (Fruit fruit : fruits) {
				if (checkIfHarvest(fruit)) {
					newFruits.add(fruit);
				}
			}
			location.setFruits(newFruits);
		}
		return Location.Response.toResponseList(locationList);
	}
	
	// 'GET' http://localhost:8090/locations/cityEngName/:cityEngName
	@GetMapping("/cityEngName/{cityEngName}")
	public List<Location.Response> findByCityEngName(@PathVariable String cityEngName) {
		System.out.println("GET: findByCityEngName() of LocationController called");		
		List<Location> locationList = locationService.findByCityEngName(cityEngName);
		for (Location location : locationList) {
			List<Vegetable> newVegetables = new ArrayList<>();
			List<Vegetable> vegetables = location.getVegetables();
			for (Vegetable vegetable : vegetables) {
				if (checkIfHarvest(vegetable)) {
					newVegetables.add(vegetable);
				}
			}
			location.setVegetables(newVegetables);

			List<Fruit> newFruits = new ArrayList<>();
			List<Fruit> fruits = location.getFruits();
			for (Fruit fruit : fruits) {
				if (checkIfHarvest(fruit)) {
					newFruits.add(fruit);
				}
			}
			location.setFruits(newFruits);
		}
		return Location.Response.toResponseList(locationList);
	}
	
	private boolean checkIfHarvest(Vegetable vegetable) {
		boolean test = false;
		Date curDate = new Date();
		Long curMilliSeconds = curDate.getTime();
		Date plusOneDay = new Date();
		plusOneDay.setTime(curMilliSeconds + MILLI_SECONDS_IN_DAY);
		Date minusOneDay = new Date();
		minusOneDay.setTime(curMilliSeconds - MILLI_SECONDS_IN_DAY);
		if (vegetable.getHarvestStart() != null && vegetable.getHarvestEnd() != null) {
			if (vegetable.getHarvestStart().before(plusOneDay) && vegetable.getHarvestEnd().after(minusOneDay)) {
				test = true;
			}
		}
		return test;
	}

	private boolean checkIfHarvest(Fruit fruit) {
		boolean test = false;
		Date curDate = new Date();
		Long curMilliSeconds = curDate.getTime();
		Date plusOneDay = new Date();
		plusOneDay.setTime(curMilliSeconds + MILLI_SECONDS_IN_DAY);
		Date minusOneDay = new Date();
		minusOneDay.setTime(curMilliSeconds - MILLI_SECONDS_IN_DAY);
		if (fruit.getHarvestStart() != null && fruit.getHarvestEnd() != null) {
			if (fruit.getHarvestStart().before(plusOneDay) && fruit.getHarvestEnd().after(minusOneDay)) {
				test = true;
			}
		}
		return test;
	}
	
}
