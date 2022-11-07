package dev.pb.pb_backend.controller;

import java.time.LocalDate;
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

import dev.pb.pb_backend.entity.Price;
import dev.pb.pb_backend.entity.Price.ResponseLocationId;
import dev.pb.pb_backend.projection.PriceLocationIdProjection;
import dev.pb.pb_backend.service.PriceService;

@RestController
@RequestMapping("prices")

public class PriceController {
	
	@Autowired
	private PriceService priceService;
	
	// 'GET' http://localhost:8090/prices
	@GetMapping
	public List<Price.Response> findAllPrices() {
		System.out.println("GET: findAllPrices() of PriceController called");		
		List<Price> priceList = priceService.findAllPrices();
		return Price.Response.toResponseList(priceList);
	}
	
	// 'GET' http://localhost:8090/prices/:priceId
	@GetMapping("/{priceId}")
	public Price.Response findLocationByLocationId(@PathVariable int priceId) {
		System.out.println("GET: findLocationByLocationId() of PriceController called");		
		Price foundPrice = priceService.findPriceByPriceId(priceId);
		return Price.Response.toResponse(foundPrice);
	}
	
	// 'POST' http://localhost:8090/prices
	@PostMapping
	public ResponseEntity<Price.Response> createPrice(@RequestBody @Valid Price.Request request) {
		System.out.println("POST: createPrice() of PriceController called");		
		Price newPrice = Price.Request.toEntity(request);
		//Address address = request.getAddress();
		Price savedPrice = priceService.createPrice(newPrice);
		//address.setUser(savedUser);
		//addressRepository.save(address);
		Price.Response response = Price.Response.toResponse(savedPrice);
		return ResponseEntity.status(HttpStatus.CREATED).body(response);
	}

	// 'GET' http://localhost:8090/prices/location/countryCode/:countryCode
	@GetMapping("/location/countryCode/{countryCode}")
	public List<Price.Response> findByLocationCountryCode(@PathVariable int countryCode) {
		System.out.println("GET: findByLocationCountryCode() of PriceController called");		
		List<Price> priceList = priceService.findByLocationCountryCode(countryCode);
		return Price.Response.toResponseList(priceList);
	}

	// 'GET' http://localhost:8090/prices/list/fruitCode/:fruitCode
	@GetMapping("/list/fruitCode/{fruitCode}")
	public List<ResponseLocationId> findByFruitCode(@PathVariable int fruitCode) {
		System.out.println("GET: findByFruitCode() of PriceController called");		
		List<PriceLocationIdProjection> priceList = priceService.findByFruitCode(fruitCode);
		return Price.ResponseLocationId.toResponseList(priceList);
	}

	// 'GET' http://localhost:8090/prices/list/vegetableCode/:vegetableCode
	@GetMapping("/list/vegetableCode/{vegetableCode}")
	public List<ResponseLocationId> findByVegetableCode(@PathVariable int vegetableCode) {
		System.out.println("GET: findByFruitCode() of PriceController called");		
		List<PriceLocationIdProjection> priceList = priceService.findByVegetableCode(vegetableCode);
		return Price.ResponseLocationId.toResponseList(priceList);
	}

	// 'GET' http://localhost:8090/prices/list/fruitCodeAndLocationId/:fruitCode/:locationId
	@GetMapping("/list/fruitCodeAndLocationId/{fruitCode}/{locationId}")
	public List<Price.Response> findByFruitCodeAndLocationId(@PathVariable int fruitCode, @PathVariable int locationId) {
		System.out.println("GET: findByFruitCodeAndLocationId() of PriceController called");		
		List<Price> priceList = priceService.findByFruitCodeAndLocationId(fruitCode, locationId);
		return Price.Response.toResponseList(priceList);
	}

	// 'GET' http://localhost:8090/prices/list/vegetableCodeAndLocationId/:vegetableCode/:locationId
	@GetMapping("/list/vegetableCodeAndLocationId/{vegetableCode}/{locationId}")
	public List<Price.Response> findByVegetableCodeAndLocationId(@PathVariable int vegetableCode, @PathVariable int locationId) {
		System.out.println("GET: findByVegetableCodeAndLocationId() of PriceController called");		
		List<Price> priceList = priceService.findByVegetableCodeAndLocationId(vegetableCode, locationId);
		return Price.Response.toResponseList(priceList);
	}

	// 'GET' http://localhost:8090/prices/map/fruitItemNameAndLocalEngName/:itemName/:localEngName
	@GetMapping("/map/fruitItemNameAndLocalEngName/{itemName}/{localEngName}")
	public List<Price.Response> findByFruitItemNameAndLocalEngName(@PathVariable String itemName, @PathVariable String localEngName) {
		System.out.println("GET: findByFruitItemNameAndLocalEngName() of PriceController called");		
		List<Price> priceList = priceService.findByFruitItemNameAndLocalEngName(itemName, localEngName);
		return Price.Response.toResponseList(priceList);
	}

	// 'GET' http://localhost:8090/prices/map/vegetableItemNameAndLocalEngName/:itemName/:localEngName
	@GetMapping("/map/vegetableItemNameAndLocalEngName/{itemName}/{localEngName}")
	public List<Price.Response> findByVegetableItemNameAndLocalEngName(@PathVariable String itemName, @PathVariable String localEngName) {
		System.out.println("GET: findByFruitItemNameAndLocalEngName() of PriceController called");		
		List<Price> priceList = priceService.findByVegetableItemNameAndLocalEngName(itemName, localEngName);
		return Price.Response.toResponseList(priceList);
	}

	// 'GET' http://localhost:8090/prices/fruitDateCheck/:fruitCode/:locationId/:priceDate
	@GetMapping("/fruitDateCheck/{fruitCode}/{locationId}/{priceDate}")
	public Price.Response findByFruitCodeAndLocationIdAndPriceDate(@PathVariable int fruitCode, @PathVariable int locationId, @PathVariable String priceDate) {
		System.out.println("GET: findByFruitCodeAndLocationIdAndPriceDate() of PriceController called");
//		LocalDate localDate = LocalDate.parse(priceDate);
		Date date = java.sql.Date.valueOf(priceDate);
		Price price = priceService.findByFruitCodeAndLocationIdAndPriceDate(fruitCode, locationId, date);
		if (price == null) {
			return new Price.Response();
		} else {
			return Price.Response.toResponse(price);
		}
	}

	// 'GET' http://localhost:8090/prices/vegetableDateCheck/:vegetableCode/:locationId/:priceDate
	@GetMapping("/vegetableDateCheck/{vegetableCode}/{locationId}/{priceDate}")
	public Price.Response findByVegetableCodeAndLocationIdAndPriceDate(@PathVariable int vegetableCode, @PathVariable int locationId, @PathVariable String priceDate) {
		System.out.println("GET: findByVegetableCodeAndLocationIdAndPriceDate() of PriceController called");
		Date date = java.sql.Date.valueOf(priceDate);		
		Price price = priceService.findByVegetableCodeAndLocationIdAndPriceDate(vegetableCode, locationId, date);
		if (price == null) {
			return new Price.Response();
		} else {
			return Price.Response.toResponse(price);
		}
	}
	
	
}
