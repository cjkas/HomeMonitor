package cz.slaw.home.auto.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cz.slaw.home.auto.dao.WeatherStationDao;
import cz.slaw.home.auto.dto.DataDto;
import cz.slaw.home.auto.dto.WeatherStationProbe;
import cz.slaw.home.auto.model.WeatherStationProbeEntity;
import cz.slaw.home.auto.service.WeatherStationService;

@Service
public class WeatherStationServiceImpl implements WeatherStationService {

	@Autowired
	WeatherStationDao wsDao;

	private WeatherStationProbe toDto(WeatherStationProbeEntity entity) {
		WeatherStationProbe dto = new WeatherStationProbe();
		dto.setId(entity.getId());
		dto.setBatteryVoltage(entity.getBatteryVoltage());
		dto.setHumidity(entity.getHumidity());
		dto.setPressure(entity.getPressure());
		dto.setTempBattery(entity.getTempBattery());
		dto.setTempExternal(entity.getTempExternal());
		dto.setWindSpeed(entity.getWindSpeed());
		dto.setCreated(entity.getCreated());
		return dto;
	}

	@Override
	@Transactional(readOnly = true)
	public List<WeatherStationProbe> findAll() {
		List<WeatherStationProbe> all = new ArrayList<>();
		for (WeatherStationProbeEntity entity : wsDao.findAll()) {
			all.add(toDto(entity));
		}
		return all;
	}

	@Override
	@Transactional(readOnly = true)
	public WeatherStationProbe getLast() {
		return toDto(wsDao.getLast());
	}

	@Override
	@Transactional(readOnly=true)
	public List<DataDto> getDataForParam(final String parameter) {
		List<DataDto> res = new ArrayList<>();
		for (WeatherStationProbeEntity entity : wsDao.findAll()) {
			DataDto dto = new DataDto();
			dto.setDate(entity.getCreated());
			switch (parameter) {
			case "tempExt":
				dto.setValue(entity.getTempExternal());
				break;
			case "pressure":
				dto.setValue(entity.getPressure());
				break;
			case "wind":
				dto.setValue(entity.getWindSpeed());
				break;
			case "humidity":
				dto.setValue(entity.getHumidity());
				break;
			case "tempBat":
				dto.setValue(entity.getTempBattery());
				break;
			case "batVol":
				dto.setValue(entity.getBatteryVoltage());
				break;
			default:
				break;
			}
			res.add(dto);
		}
		return res;
	}
}
