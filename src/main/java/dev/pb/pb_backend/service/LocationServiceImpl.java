package dev.pb.pb_backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dev.pb.pb_backend.entity.Location;
import dev.pb.pb_backend.projection.LocationCountryCodeProjection;
import dev.pb.pb_backend.projection.LocationLocationIdProjection;
import dev.pb.pb_backend.repository.LocationRepository;

@Service
public class LocationServiceImpl implements LocationService {
	
	@Autowired
	private LocationRepository locationRepository;

	@Override
	public List<Location> findAllLocations() {
		return locationRepository.findAll();
	}

	@Override
	public Location findLocationByLocationId(int locationId) {
		return locationRepository.findById(locationId).orElseThrow(() -> new RuntimeException(String.format("%d locationId에 해당하는 Location이 존재하지 않습니다.", locationId)));
	}

	@Override
	public Location createLocation(Location newLocation) {
		return locationRepository.save(newLocation);
	}

	@Override
	public List<LocationCountryCodeProjection> findByLocalName(String localName) {
		return locationRepository.findByLocalName(localName);
	}

	@Override
	public LocationLocationIdProjection findLocationIdByCountryCode(int countryCode) {
		return locationRepository.findByCountryCode(countryCode);
	}

	@Override
	public List<Location> findByLocalEngName(String localEngName) {
		return locationRepository.findByLocalEngName(localEngName);
	}

	@Override
	public List<Location> findByCityEngName(String cityEngName) {
		return locationRepository.findByCityEngName(cityEngName);
	}

}









