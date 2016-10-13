package cz.slaw.home.auto.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cz.slaw.home.auto.dao.WeatherStationDao;
import cz.slaw.home.auto.model.WeatherStationProbeEntity;

@Repository
public class WeatherStationDaoImpl implements WeatherStationDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@SuppressWarnings("unchecked")
	public List<WeatherStationProbeEntity> findAll() {
		return sessionFactory.getCurrentSession().createQuery("FROM WeatherStationProbeEntity ORDER BY id").list();
	}

	@Override
	public WeatherStationProbeEntity getLast() {
		Query query = sessionFactory.getCurrentSession().createQuery("FROM WeatherStationProbeEntity ORDER BY id DESC)");
		query.setMaxResults(1);
		return (WeatherStationProbeEntity) query.uniqueResult();
	}

}
