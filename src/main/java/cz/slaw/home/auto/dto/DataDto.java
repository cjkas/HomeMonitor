package cz.slaw.home.auto.dto;

import java.io.Serializable;
import java.util.Date;

public class DataDto implements Serializable {

	private static final long serialVersionUID = 1L;
	private Date date;
	private Object value;

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Object getValue() {
		return value;
	}

	public void setValue(Object value) {
		this.value = value;
	}

}
