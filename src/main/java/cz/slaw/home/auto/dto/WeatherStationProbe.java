package cz.slaw.home.auto.dto;

import java.io.Serializable;
import java.util.Date;

public class WeatherStationProbe implements Serializable {

	private static final long serialVersionUID = -4060739788760795254L;

	private Long id;

	private Float tempExternal;

	private Float tempBattery;

	private Integer pressure;

	private Integer humidity;

	private Float windSpeed;

	private Float batteryVoltage;
	
	private Date created;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Float getTempExternal() {
		return tempExternal;
	}

	public void setTempExternal(Float tempExternal) {
		this.tempExternal = tempExternal;
	}

	public Float getTempBattery() {
		return tempBattery;
	}

	public void setTempBattery(Float tempBattery) {
		this.tempBattery = tempBattery;
	}

	public Integer getPressure() {
		return pressure;
	}

	public void setPressure(Integer pressure) {
		this.pressure = pressure;
	}

	public Integer getHumidity() {
		return humidity;
	}

	public void setHumidity(Integer humidity) {
		this.humidity = humidity;
	}

	public Float getWindSpeed() {
		return windSpeed;
	}

	public void setWindSpeed(Float windSpeed) {
		this.windSpeed = windSpeed;
	}

	public Float getBatteryVoltage() {
		return batteryVoltage;
	}

	public void setBatteryVoltage(Float batteryVoltage) {
		this.batteryVoltage = batteryVoltage;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

}
