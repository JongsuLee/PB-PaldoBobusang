package dev.pb.pb_backend.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

// Jpa 설정
@Entity

// Lombok 설정
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Getter @Setter
@ToString
public class Vegetable {

	@Id
	@Column(name = "VEGETABLE_CODE")
	private int vegetableCode;

	@Column(name = "ITEM_NAME", nullable = false)
	private String itemName;
	
	@Column(nullable = false)
	private String unit;

	@Column(name = "ITEM_IMAGE")
	private String itemImage;

	@Column(name = "HARVEST_START")
	@Temporal(TemporalType.DATE)
	private Date harvestStart;

	@Column(name = "HARVEST_END")
	@Temporal(TemporalType.DATE)
	private Date harvestEnd;

	@Column(name = "ETC_DETAILS", columnDefinition = "TEXT")
	private String etcDetails;
	
	@ManyToMany
    @JoinTable(name="VEGETABLE_LOCATION",
        joinColumns=
            @JoinColumn(name="VEGETABLE_CODE", referencedColumnName="VEGETABLE_CODE"),
        inverseJoinColumns=
            @JoinColumn(name="LOCATION_ID", referencedColumnName="LOCATION_ID")
        )
	private List<Location> locations;
	
	@OneToMany(mappedBy = "vegetable")
	private List<Price> prices;
	
	// 요청 받을 때 사용할 User Entity의 DTO
	@Setter
	@Getter
	@Builder
	@ToString
	public static class Request {

		@NotNull
		private int vegetableCode;

		@NotBlank(message = "itemName는 공백('', ' ')이나 Null 지정 불가")
		private String itemName;

		private String unit;
		private String itemImage;

//		@NotNull
		private Date harvestStart;

//		@NotNull
		private Date harvestEnd;

//		@NotBlank(message = "etcDetails는 공백('', ' ')이나 Null 지정 불가")
		private String etcDetails;
		
		private List<Location> locations;
		private List<Price> prices;

		public static Vegetable toEntity(final Vegetable.Request request) {
			return Vegetable.builder()
					.vegetableCode(request.getVegetableCode())
					.itemName(request.getItemName())
					.unit(request.getUnit())
					.itemImage(request.getItemImage())
					.harvestStart(request.getHarvestStart())
					.harvestEnd(request.getHarvestEnd())
					.etcDetails(request.getEtcDetails())
					.locations(request.getLocations())
					.prices(request.getPrices())
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

		private int vegetableCode;
		private String itemName;
		private String unit;
		private String itemImage;
		private Date harvestStart;
		private Date harvestEnd;
		private String etcDetails;
		
		private List<Location.Response> locations;
		private List<Price.Response> prices;

		public static Vegetable.Response toResponse(final Vegetable vegetable) {
			return Vegetable.Response.builder()
					.vegetableCode(vegetable.getVegetableCode())
					.itemName(vegetable.getItemName())
					.unit(vegetable.getUnit())
					.itemImage(vegetable.getItemImage())
					.harvestStart(vegetable.getHarvestStart())
					.harvestEnd(vegetable.getHarvestEnd())
					.etcDetails(vegetable.getEtcDetails())
					.locations(Location.Response.toVegetableResponseList(vegetable.getLocations(), vegetable.getVegetableCode()))
//					.prices(Price.Response.toResponseList(vegetable.getPrices()))
					.build();
		}

		public static List<Vegetable.Response> toResponseList(final List<Vegetable> vegetables) {
			List<Vegetable.Response> resList = new ArrayList<>();
			for (Vegetable vegetable : vegetables) {
				resList.add(Vegetable.Response.toResponse(vegetable));
			}
			return resList;
		}
		
		public static Vegetable.Response toLocationResponse(final Vegetable vegetable, int locationId) {
			return Vegetable.Response.builder()
					.vegetableCode(vegetable.getVegetableCode())
					.itemName(vegetable.getItemName())
					.unit(vegetable.getUnit())
					.itemImage(vegetable.getItemImage())
					.harvestStart(vegetable.getHarvestStart())
					.harvestEnd(vegetable.getHarvestEnd())
					.etcDetails(vegetable.getEtcDetails())
					.prices(Price.Response.toVegetableLocationResponseList(vegetable.getPrices(), locationId))
					.build();
		}
		
		public static List<Vegetable.Response> toLocationResponseList(final List<Vegetable> vegetables, int locationId) {
			List<Vegetable.Response> resList = new ArrayList<>();
			for (Vegetable vegetable : vegetables) {
				resList.add(Vegetable.Response.toLocationResponse(vegetable, locationId));
			}
			return resList;
		}
		
		public static Vegetable.Response toPriceResponse(final Vegetable vegetable) {
			if (vegetable == null) {
				return null;
			} else {
				return Vegetable.Response.builder()
						.vegetableCode(vegetable.getVegetableCode())
						.itemName(vegetable.getItemName())
						.unit(vegetable.getUnit())
						.itemImage(vegetable.getItemImage())
						.harvestStart(vegetable.getHarvestStart())
						.harvestEnd(vegetable.getHarvestEnd())
						.etcDetails(vegetable.getEtcDetails())
						.build();
			}
		}
		
		public static List<Vegetable.Response> toPriceResponseList(final List<Vegetable> vegetables) {
			List<Vegetable.Response> resList = new ArrayList<>();
			for (Vegetable vegetable : vegetables) {
				resList.add(Vegetable.Response.toPriceResponse(vegetable));
			}
			return resList;
		}
		
		public static Vegetable.Response toItemNameAndLocalEngNameResponse(final Vegetable vegetable, String localEngName) {
			return Vegetable.Response.builder()
					.vegetableCode(vegetable.getVegetableCode())
					.itemName(vegetable.getItemName())
					.unit(vegetable.getUnit())
					.itemImage(vegetable.getItemImage())
					.harvestStart(vegetable.getHarvestStart())
					.harvestEnd(vegetable.getHarvestEnd())
					.etcDetails(vegetable.getEtcDetails())
					.locations(Location.Response.toVegetableItemNameAndLocalEngNameResponseList(vegetable.getLocations(), vegetable.getVegetableCode(), localEngName))
//					.locations(Location.Response.toResponseList(fruit.getLocations()))
//					.prices(Price.Response.toResponseList(fruit.getPrices()))
					.build();
		}
		
		public static List<Vegetable.Response> toItemNameAndLocalEngNameResponseList(final List<Vegetable> vegetables, String localEngName) {
			List<Vegetable.Response> resList = new ArrayList<>();
			for (Vegetable vegetable : vegetables) {
				resList.add(Vegetable.Response.toItemNameAndLocalEngNameResponse(vegetable, localEngName));
			}
			return resList;
		}
		
		
	}
	
}















