package dev.pb.pb_backend.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dev.pb.pb_backend.entity.Price;
import dev.pb.pb_backend.projection.PriceLocationIdProjection;
import dev.pb.pb_backend.repository.PriceRepository;

@Service
public class PriceServiceImpl implements PriceService {
	
	@Autowired
	private PriceRepository priceRepository;

	@Override
	public List<Price> findAllPrices() {
		return priceRepository.findAll();
	}

	@Override
	public Price findPriceByPriceId(int priceId) {
		return priceRepository.findById(priceId).orElseThrow(() -> new RuntimeException(String.format("%d priceId에 해당하는 Price가 존재하지 않습니다.", priceId)));
	}

	@Override
	public Price createPrice(Price newPrice) {
		return priceRepository.save(newPrice);
	}

	@Override
	public List<Price> findByLocationCountryCode(int countryCode) {
		return priceRepository.findByLocationCountryCode(countryCode);
	}

	@Override
	public List<PriceLocationIdProjection> findByFruitCode(int fruitCode) {
		return priceRepository.findDistinctByFruitFruitCode(fruitCode);
	}

	@Override
	public List<PriceLocationIdProjection> findByVegetableCode(int vegetableCode) {
		return priceRepository.findDistinctByVegetableVegetableCode(vegetableCode);
	}

	@Override
	public List<Price> findByFruitCodeAndLocationId(int fruitCode, int locationId) {
		return priceRepository.findByFruitFruitCodeAndLocationLocationId(fruitCode, locationId);
	}

	@Override
	public List<Price> findByVegetableCodeAndLocationId(int vegetableCode, int locationId) {
		return priceRepository.findByVegetableVegetableCodeAndLocationLocationId(vegetableCode, locationId);
	}

	@Override
	public List<Price> findByFruitItemNameAndLocalEngName(String itemName, String localEngName) {
		return priceRepository.findByFruitItemNameAndLocationLocalEngName(itemName, localEngName);
	}

	@Override
	public List<Price> findByVegetableItemNameAndLocalEngName(String itemName, String localEngName) {
		return priceRepository.findByVegetableItemNameAndLocationLocalEngName(itemName, localEngName);
	}

	@Override
	public Price findByFruitCodeAndLocationIdAndPriceDate(int fruitCode, int locationId, Date priceDate) {
		return priceRepository.findByFruitFruitCodeAndLocationLocationIdAndPriceDate(fruitCode, locationId, priceDate);
	}

	@Override
	public Price findByVegetableCodeAndLocationIdAndPriceDate(int vegetableCode, int locationId, Date priceDate) {
		return priceRepository.findByVegetableVegetableCodeAndLocationLocationIdAndPriceDate(vegetableCode, locationId, priceDate);
	}

}









