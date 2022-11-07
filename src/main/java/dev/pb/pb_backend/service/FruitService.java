package dev.pb.pb_backend.service;

import java.util.Date;
import java.util.List;

import dev.pb.pb_backend.entity.Fruit;

public interface FruitService {

	// 전체 테이블 조회
	List<Fruit> findAllFruits();
	// 레코드(record) 조회
	Fruit findFruitByCode(int code);
	// 레코드 생성
	Fruit createFruit(Fruit newFruit);

	Fruit updateFruit(Fruit.Request request);
	
	
	// FruitRepository 쿼리 메서드
	// locationId 으로 조회
	List<Fruit> findFruitsByLocationId(int locationId);
	List<Fruit> findFruitsByLocalEngName(String localEngName);
	Fruit findFruitsByItemNameLocalEngName(String itemName, String localEngName);
	// harvestDate 으로 조회
	List<Fruit> findFruitsByHarvest(Date curDate);
	
//	List<FruitItemImageProjection> findFruitsByHarvestInList(Date curDate);
	
}
