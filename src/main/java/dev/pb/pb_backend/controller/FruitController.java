package dev.pb.pb_backend.controller;

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
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import dev.pb.pb_backend.entity.Fruit;
import dev.pb.pb_backend.service.FruitService;

@RestController
@RequestMapping("fruits")

public class FruitController {
	
	@Autowired
	private FruitService fruitService;
	
	// 'GET' http://localhost:8090/fruits
	@GetMapping
	public List<Fruit.Response> findAllFruits() {
		System.out.println("GET: findAllFruits() of FruitController called");		
		List<Fruit> fruitList = fruitService.findAllFruits();
		return Fruit.Response.toResponseList(fruitList);
	}
	
	// 'GET' http://localhost:8090/fruits/:fruitCode
	@GetMapping("/{fruitCode}")
	public Fruit.Response findFruitByCode(@PathVariable int fruitCode) {
		System.out.println("GET: findFruitByCode() of FruitController called");		
		Fruit foundFruit = fruitService.findFruitByCode(fruitCode);
		return Fruit.Response.toResponse(foundFruit);
	}
	
	// 'POST' http://localhost:8090/fruits
	@PostMapping
	public ResponseEntity<Fruit.Response> createFruit(@RequestBody @Valid Fruit.Request request) {
		System.out.println("POST: createFruit() of FruitController called");		
		Fruit newFruit = Fruit.Request.toEntity(request);
		//Address address = request.getAddress();
		Fruit savedFruit = fruitService.createFruit(newFruit);
		//address.setUser(savedUser);
		//addressRepository.save(address);
		Fruit.Response response = Fruit.Response.toResponse(savedFruit);
		return ResponseEntity.status(HttpStatus.CREATED).body(response);
	}

	// 'GET' http://localhost:8090/fruits/location/:locationId
	@GetMapping("/location/{locationId}")
	public List<Fruit.Response> findFruitsByLocationId(@PathVariable int locationId) {
		System.out.println("GET: findFruitsByLocationId() of FruitController called");		
		List<Fruit> fruitList = fruitService.findFruitsByLocationId(locationId);
		return Fruit.Response.toResponseList(fruitList);
	}
	
	// 'GET' http://localhost:8090/fruits/list/harvest
	@GetMapping("/list/harvest")
	public List<Fruit.Response> findFruitsByHarvest() {
		System.out.println("GET: findFruitsByHarvest() of FruitController called");
		Date curDate = new Date();
		List<Fruit> fruitList = fruitService.findFruitsByHarvest(curDate);
		return Fruit.Response.toResponseList(fruitList);
	}
	
//	// 'GET' http://localhost:8090/fruits/harvest/list
//	@GetMapping("/harvest/list")
//	public List<Fruit.ResponseItemImage> findFruitsByHarvestInList() {
//		System.out.println("GET: findFruitsByHarvestInList() of FruitController called");
//		Date curDate = new Date();
//		List<FruitItemImageProjection> fruitList = fruitService.findFruitsByHarvestInList(curDate);
//		return Fruit.ResponseItemImage.toResponseList(fruitList);
//	}
	
	// 'PUT' http://localhost:8090/fruits
	@PutMapping
	public Fruit.Response updateFruit(@RequestBody Fruit.Request request) {
		Fruit fruit = fruitService.updateFruit(request);
		return Fruit.Response.toResponse(fruit);
	}
	
	// 'GET' http://localhost:8090/fruits/localEngName/:localEngName
	@GetMapping("/localEngName/{localEngName}")
	public List<Fruit.Response> findFruitsByLocalEngName(@PathVariable String localEngName) {
		System.out.println("GET: findFruitsByLocalEngName() of FruitController called");		
		List<Fruit> fruitList = fruitService.findFruitsByLocalEngName(localEngName);
		return Fruit.Response.toItemNameAndLocalEngNameResponseList(fruitList, localEngName);
	}	

	// 'GET' http://localhost:8090/fruits/itemNameAndLocalEngName/:locationId
	@GetMapping("/itemNameAndLocalEngName/{itemName}/{localEngName}")
	public Fruit.Response findFruitsByItemNameLocalEngName(@PathVariable String itemName, @PathVariable String localEngName) {
		System.out.println("GET: findFruitsByItemNameLocalEngName() of FruitController called");		
		Fruit fruit = fruitService.findFruitsByItemNameLocalEngName(itemName, localEngName);
		return Fruit.Response.toItemNameAndLocalEngNameResponse(fruit, localEngName);
	}	
	
}
