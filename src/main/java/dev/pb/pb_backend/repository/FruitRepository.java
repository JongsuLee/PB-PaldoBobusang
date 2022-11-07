package dev.pb.pb_backend.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import dev.pb.pb_backend.entity.Fruit;

@Repository
public interface FruitRepository extends JpaRepository<Fruit, Integer> {

	// 쿼리 메서드
	// https://docs.spring.io/spring-data/jpa/docs/current/reference/html/#jpa.query-methods
	
	// locationId 으로 조회
	List<Fruit> findByLocationsLocationId(int locationId);
	List<Fruit> findDistinctByLocationsLocalEngName(String localEngName);
	Fruit findDistinctByItemNameAndLocationsLocalEngName(String itemName, String localEngName);
	// harvestDate 으로 조회
	List<Fruit> findByHarvestStartBeforeAndHarvestEndAfter(Date curDate1, Date curDate2);
	
}
