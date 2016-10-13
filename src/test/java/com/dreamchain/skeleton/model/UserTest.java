//package com.dreamchain.skeleton.model;
//
//import java.util.HashMap;
//import java.util.Map;
//
//import javax.validation.ConstraintViolation;
//import javax.validation.Validation;
//import javax.validation.Validator;
//
//import org.junit.Test;
//
//import cz.slaw.home.auto.model.WeatherStationProbeEntity;
//
//import static org.junit.Assert.*;
//
//public class UserTest {
//	
//	
//	@Test
//	public void assert_that_certain_fields_cant_be_null_or_blank() {
//		WeatherStationProbeEntity user = new WeatherStationProbeEntity();
//		Map<String, ConstraintViolation<WeatherStationProbeEntity>> violationsMap = validate(user);
//		assertTrue(violationsMap.get("name").getMessageTemplate().contains("NotEmpty"));
//		assertTrue(violationsMap.get("email").getMessageTemplate().contains("NotEmpty"));
//		assertTrue(violationsMap.get("address").getMessageTemplate().contains("NotNull"));
//	}
//
//	@Test
//	public void assert_that_email_has_to_be_an_email() {
//		WeatherStationProbeEntity user = new WeatherStationProbeEntity();
//		user.setEmail("invalid@email@yes");
//		Map<String, ConstraintViolation<WeatherStationProbeEntity>> violationsMap = validate(user);
//		assertTrue(violationsMap.get("email").getMessageTemplate().contains("Email"));
//	}
//	
//	private <T> Map<String, ConstraintViolation<T>>  validate(T user) {
//		Validator validator = Validation.buildDefaultValidatorFactory().getValidator();
//		Map<String, ConstraintViolation<T>> violations = new HashMap<String, ConstraintViolation<T>>();
//		for (ConstraintViolation<T> violation : validator.validate(user)) {
//			violations.put(violation.getPropertyPath().toString(), violation);
//		}
//		return violations;
//	}
//
//}
