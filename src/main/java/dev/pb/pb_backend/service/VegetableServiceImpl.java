package dev.pb.pb_backend.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dev.pb.pb_backend.entity.Location;
import dev.pb.pb_backend.entity.Price;
import dev.pb.pb_backend.entity.Vegetable;
import dev.pb.pb_backend.repository.VegetableRepository;

@Service
public class VegetableServiceImpl implements VegetableService {
	
	private final Long MILLI_SECONDS_IN_DAY = (long) 86400000;

	@Autowired
	private VegetableRepository vegetableRepository;
	
	@Override
	public List<Vegetable> findAllVegetables() {
		return vegetableRepository.findAll();
	}

	@Override
	public Vegetable findVegetableByCode(int code) {
		return vegetableRepository.findById(code).orElseThrow(() -> new RuntimeException(String.format("%d 코드에 해당하는 Vegetable이 존재하지 않습니다.", code)));
	}

	@Override
	public Vegetable createVegetable(Vegetable newVegetable) {
		return vegetableRepository.save(newVegetable);
	}

	@Override
	public List<Vegetable> findVegetablesByLocationId(int locationId) {
		return vegetableRepository.findByLocationsLocationId(locationId);
	}

	@Override
	public List<Vegetable> findVegetablesByHarvest(Date curDate) {
		Long curMilliSeconds = curDate.getTime();
		Date plusOneDay = new Date();
		plusOneDay.setTime(curMilliSeconds + MILLI_SECONDS_IN_DAY);
		Date minusOneDay = new Date();
		minusOneDay.setTime(curMilliSeconds - MILLI_SECONDS_IN_DAY);
		return vegetableRepository.findByHarvestStartBeforeAndHarvestEndAfter(plusOneDay, minusOneDay);
	}

	@Override
	public Vegetable updateVegetable(Vegetable.Request request) {
		final Vegetable foundVegetable = findVegetableByCode(request.getVegetableCode());
		List<Location> locationList = foundVegetable.getLocations();
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
			foundVegetable.setLocations(locationList);
		} else {
			if (request.getLocations() != null) {
				locationList.addAll(request.getLocations());
			}
			foundVegetable.setLocations(locationList);
		}
		Vegetable savedVegetable = vegetableRepository.save(foundVegetable);
		return savedVegetable;
	}

	@Override
	public List<Vegetable> findVegetablesByLocalEngName(String localEngName) {
		return vegetableRepository.findDistinctByLocationsLocalEngName(localEngName);
	}

	@Override
	public Vegetable findVegetablesByItemNameLocalEngName(String itemName, String localEngName) {
		return vegetableRepository.findDistinctByItemNameAndLocationsLocalEngName(itemName, localEngName);
	}

}









