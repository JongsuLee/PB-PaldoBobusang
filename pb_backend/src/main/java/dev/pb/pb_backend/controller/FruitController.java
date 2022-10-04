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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import dev.pb.pb_backend.entity.Fruit;
import dev.pb.pb_backend.service.FruitService;

@RestController
@RequestMapping("fruits")
@CrossOrigin(origins = "http://localhost:3000")
public class FruitController {
	
	@Autowired
	private FruitService fruitService;
	
	// 'GET' http://localhost:8090/users
	@GetMapping
	public List<Fruit.Response> findAllFruits() {
		System.out.println("GET: findAllFruits() of FruitController called");		
		List<Fruit> fruitList = fruitService.findAllFruits();
		return Fruit.Response.toResponseList(fruitList);
	}
	
	// 'GET' http://localhost:8090/fruits/:code
	@GetMapping("/{code}")
	public Fruit.Response findFruitByCode(@PathVariable int code) {
		System.out.println("GET: findFruitByCode() of FruitController called");		
		Fruit foundFruit = fruitService.findFruitByCode(code);
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
	
	// 'GET' http://localhost:8090/fruits/harvest
	@GetMapping("/harvest")
	public List<Fruit.Response> findFruitsByHarvest() {
		System.out.println("GET: findFruitsByHarvest() of FruitController called");
		Date curDate = new Date();
		List<Fruit> fruitList = fruitService.findFruitsByHarvest(curDate);
		return Fruit.Response.toResponseList(fruitList);
	}
	
}
