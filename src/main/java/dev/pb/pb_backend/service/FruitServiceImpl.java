package dev.pb.pb_backend.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dev.pb.pb_backend.entity.Fruit;
import dev.pb.pb_backend.entity.Fruit.Request;
import dev.pb.pb_backend.entity.Location;
import dev.pb.pb_backend.entity.Price;
import dev.pb.pb_backend.repository.FruitRepository;

@Service
public class FruitServiceImpl implements FruitService {
	
	private final Long MILLI_SECONDS_IN_DAY = (long) 86400000;

	@Autowired
	private FruitRepository fruitRepository;
	
	@Override
	public List<Fruit> findAllFruits() {
		return fruitRepository.findAll();
	}

	@Override
	public Fruit findFruitByCode(int code) {
		return fruitRepository.findById(code).orElseThrow(() -> new RuntimeException(String.format("%d 코드에 해당하는 Fruit가 존재하지 않습니다.", code)));
	}

	@Override
	public Fruit createFruit(Fruit newFruit) {
		return fruitRepository.save(newFruit);
	}

	@Override
	public List<Fruit> findFruitsByLocationId(int locationId) {
		return fruitRepository.findByLocationsLocationId(locationId);
	}

	@Override
	public List<Fruit> findFruitsByHarvest(Date curDate) {
		Long curMilliSeconds = curDate.getTime();
		Date plusOneDay = new Date();
		plusOneDay.setTime(curMilliSeconds + MILLI_SECONDS_IN_DAY);
		Date minusOneDay = new Date();
		minusOneDay.setTime(curMilliSeconds - MILLI_SECONDS_IN_DAY);
		return fruitRepository.findByHarvestStartBeforeAndHarvestEndAfter(plusOneDay, minusOneDay);
	}
	
//	@Override
//	public List<FruitItemImageProjection> findFruitsByHarvestInList(Date curDate) {
//		Long curMilliSeconds = curDate.getTime();
//		Date plusOneDay = new Date();
//		plusOneDay.setTime(curMilliSeconds + MILLI_SECONDS_IN_DAY);
//		Date minusOneDay = new Date();
//		minusOneDay.setTime(curMilliSeconds - MILLI_SECONDS_IN_DAY);
//		return fruitRepository.findDistinctByHarvestStartBeforeAndHarvestEndAfter(plusOneDay, minusOneDay);
//	}

//	@Override
//	public Fruit updateFruitLocations(Request request) {
//		final Fruit foundFruit = findFruitByCode(request.getFruitCode());
//		foundFruit.setLocations(request.getLocations());
//		Fruit savedFruit = fruitRepository.save(foundFruit);
//		return savedFruit;
//	}
	
	@Override
	public Fruit updateFruit(Request request) {
		final Fruit foundFruit = findFruitByCode(request.getFruitCode());
		List<Location> locationList = foundFruit.getLocations();
		boolean test = false;
		int index = 0;
		for (Location loc : locationList) {
			if (loc.getLocationId() == request.getLocations().get(0).getLocationId()) {
				test = true;
				break;
			}
			index ++;
		}
		if (test) {
			List<Price> priceList = locationList.get(index).getPrices();
			if (request.getPrices() != null) {
				priceList.addAll(request.getPrices());
			}
			foundFruit.setLocations(locationList);
		} else {
			if (request.getLocations() != null) {
				locationList.addAll(request.getLocations());
			}
			foundFruit.setLocations(locationList);
		}
		Fruit savedFruit = fruitRepository.save(foundFruit);
		return savedFruit;
	}

	@Override
	public List<Fruit> findFruitsByLocalEngName(String localEngName) {
		return fruitRepository.findDistinctByLocationsLocalEngName(localEngName);
	}

	@Override
	public Fruit findFruitsByItemNameLocalEngName(String itemName, String localEngName) {
		return fruitRepository.findDistinctByItemNameAndLocationsLocalEngName(itemName, localEngName);
	}

}









