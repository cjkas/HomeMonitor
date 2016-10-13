package cz.slaw.home.auto.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "ws")
public class WeatherStationProbeEntity implements Serializable {

	private static final long serialVersionUID = -4060739788760795254L;

	@Id
	@GeneratedValue
	private Long id;

	@Column(name = "temp_ext", nullable = true)
	private Float tempExternal;

	@Column(name = "temp_battery", nullable = true)
	private Float tempBattery;

	@Column(nullable = true)
	private Integer pressure;

	@Column(nullable = true)
	private Integer humidity;

	@Column(name = "wind_speed", nullable = true)
	private Float windSpeed;

	@Column(name = "bat_voltage", nullable = true)
	private Float batteryVoltage;

	@Temporal(TemporalType.TIMESTAMP)
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
