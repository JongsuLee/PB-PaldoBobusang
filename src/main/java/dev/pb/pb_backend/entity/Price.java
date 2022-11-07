package dev.pb.pb_backend.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

import dev.pb.pb_backend.projection.PriceLocationIdProjection;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//Jpa 설정
@Entity

//Lombok 설정
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Getter @Setter
@ToString
public class Price {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "PRICE_ID")
	private int priceId;
	
	private int priceValue;
	
	@Column(name = "PRICE_DATE")
	@Temporal(TemporalType.DATE)
	private Date priceDate;
	
	@ManyToOne
	@JoinColumn(name = "LOCATION_ID")
	private Location location;

	@ManyToOne
	@JoinColumn(name = "VEGETABLE_CODE")
	private Vegetable vegetable;

	@ManyToOne
	@JoinColumn(name = "FRUIT_CODE")
	private Fruit fruit;
	
	// 요청 받을 때 사용할 User Entity의 DTO
	@Setter
	@Getter
	@Builder
	@ToString
	public static class Request {

		@NotNull
		private int priceId;

		@NotNull
		private int priceValue;
		
		@NotNull
		private Date priceDate;
		
		Location location;
		Vegetable vegetable;
		Fruit fruit;

		public static Price toEntity(final Price.Request request) {
			return Price.builder()
					.priceId(request.getPriceId())
					.priceValue(request.getPriceValue())
					.priceDate(request.getPriceDate())
					.location(request.getLocation())
					.vegetable(request.getVegetable())
					.fruit(request.getFruit())
					.build();
		}
		
	}

	// 서버가 응답할 때 사용할 User Entity의 DTO
	@Setter
	@Getter
	@Builder
	@NoArgsConstructor
	@AllArgsConstructor
	public static class Response {

		private int priceId;
		private int priceValue;
		private Date priceDate;
		
		Location.Response location;
		Vegetable.Response vegetable;
		Fruit.Response fruit;

		public static Price.Response toResponse(final Price price) {
			return Price.Response.builder()
					.priceId(price.getPriceId())
					.priceValue(price.getPriceValue())
					.priceDate(price.getPriceDate())
					.location(Location.Response.toPriceResponse(price.getLocation()))
					.vegetable(Vegetable.Response.toPriceResponse(price.getVegetable()))
					.fruit(Fruit.Response.toPriceResponse(price.getFruit()))
					.build();
		}

		public static List<Price.Response> toResponseList(final List<Price> prices) {
			List<Price.Response> resList = new ArrayList<>();
			for (Price price : prices) {
				resList.add(Price.Response.toResponse(price));
			}
			return resList;
		}
		
		public static Price.Response toLocationFruitResponse(final Price price) {
			return Price.Response.builder()
					.priceId(price.getPriceId())
					.priceValue(price.getPriceValue())
					.priceDate(price.getPriceDate())
//					.vegetable(Vegetable.Response.toPriceResponse(price.getVegetable()))
					// 나중에 가격 연결후 주석해제해서 확인해보기
//					.fruit(Fruit.Response.toFruitLocationPriceResponse(price.getFruit()))
					.build();
		}

		public static List<Price.Response> toLocationFruitResponseList(final List<Price> prices, int fruitCode) {
			List<Price.Response> resList = new ArrayList<>();
			for (Price price : prices) {
				if (price.getFruit() != null && price.getFruit().getFruitCode() == fruitCode) {
					resList.add(Price.Response.toLocationFruitResponse(price));
				}
			}
			return resList;
		}
		
		public static List<Price.Response> toFruitLocationResponseList(final List<Price> prices, int locationId) {
			List<Price.Response> resList = new ArrayList<>();
			for (Price price : prices) {
				if (price.getLocation() != null && price.getLocation().getLocationId() == locationId) {
					resList.add(Price.Response.toLocationFruitResponse(price));
				}
			}
			return resList;
		}
		
		public static Price.Response toLocationVegetableResponse(final Price price) {
			return Price.Response.builder()
					.priceId(price.getPriceId())
					.priceValue(price.getPriceValue())
					.priceDate(price.getPriceDate())
//					.vegetable(Vegetable.Response.toPriceResponse(price.getVegetable()))
//					.fruit(Fruit.Response.toPriceResponse(price.getFruit()))
					.build();
		}

		public static List<Price.Response> toLocationVegetableResponseList(final List<Price> prices, int vegetableCode) {
			List<Price.Response> resList = new ArrayList<>();
			for (Price price : prices) {
				if (price.getVegetable() != null && price.getVegetable().getVegetableCode() == vegetableCode) {
					resList.add(Price.Response.toLocationVegetableResponse(price));
				}
			}
			return resList;
		}
		
		public static List<Price.Response> toVegetableLocationResponseList(final List<Price> prices, int locationId) {
			List<Price.Response> resList = new ArrayList<>();
			for (Price price : prices) {
				if (price.getLocation() != null && price.getLocation().getLocationId() == locationId) {
					resList.add(Price.Response.toLocationVegetableResponse(price));
				}
			}
			return resList;
		}
		
	}
	
	// PriceLocationIdProjection Projection 을 이용한 Response DTO
	@Setter
	@Getter
	@Builder
	@NoArgsConstructor
	@AllArgsConstructor
	public static class ResponseLocationId {

		private int locationId;

		public static Price.ResponseLocationId toResponse(final PriceLocationIdProjection price) {
			return Price.ResponseLocationId.builder()
					.locationId(price.getLocation().getLocationId())
					.build();
		}

		public static List<Price.ResponseLocationId> toResponseList(final List<PriceLocationIdProjection> prices) {
			List<Price.ResponseLocationId> resList = new ArrayList<>();
			for (PriceLocationIdProjection price : prices) {
				resList.add(Price.ResponseLocationId.toResponse(price));
			}
			return resList;
		}
	}
	
}






