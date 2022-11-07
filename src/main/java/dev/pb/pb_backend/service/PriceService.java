package dev.pb.pb_backend.service;

import java.util.Date;
import java.util.List;

import dev.pb.pb_backend.entity.Price;
import dev.pb.pb_backend.projection.PriceLocationIdProjection;

public interface PriceService {

	// 전체 테이블 조회
	List<Price> findAllPrices();
	// 레코드(record) 조회
	Price findPriceByPriceId(int priceId);
	// 레코드 생성
	Price createPrice(Price newPrice);
	
	// ??
//	List<Price>

	// PriceRepository 쿼리 메서드
	// location.countryCode 으로 조회
	List<Price> findByLocationCountryCode(int countryCode);
	
	List<PriceLocationIdProjection> findByFruitCode(int fruitCode);
	List<PriceLocationIdProjection> findByVegetableCode(int vegetableCode);
	List<Price> findByFruitCodeAndLocationId(int fruitCode, int locationId);
	List<Price> findByVegetableCodeAndLocationId(int vegetableCode, int locationId);
	
	Price findByFruitCodeAndLocationIdAndPriceDate(int fruitCode, int locationId, Date priceDate);
	Price findByVegetableCodeAndLocationIdAndPriceDate(int vegetableCode, int locationId, Date priceDate);

	List<Price> findByFruitItemNameAndLocalEngName(String itemName, String localEngName);
	List<Price> findByVegetableItemNameAndLocalEngName(String itemName, String localEngName);
	
}
