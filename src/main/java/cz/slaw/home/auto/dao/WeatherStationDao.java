package cz.slaw.home.auto.dao;

import java.util.List;

import cz.slaw.home.auto.model.WeatherStationProbeEntity;

public interface WeatherStationDao {

	List<WeatherStationProbeEntity> findAll();

	WeatherStationProbeEntity getLast();

}
