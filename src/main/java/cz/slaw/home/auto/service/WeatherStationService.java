package cz.slaw.home.auto.service;

import java.util.List;

import cz.slaw.home.auto.dto.DataDto;
import cz.slaw.home.auto.dto.WeatherStationProbe;

public interface WeatherStationService {

	List<WeatherStationProbe> findAll();

	WeatherStationProbe getLast();

	List<DataDto> getDataForParam(String parameter);

}
