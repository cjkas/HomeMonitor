package cz.slaw.home.auto.web;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cz.slaw.home.auto.dto.DataDto;
import cz.slaw.home.auto.service.WeatherStationService;

@Controller
@RequestMapping("/")
public class WeatherStationController {

	@Autowired
	WeatherStationService wsService;

	
	@RequestMapping(method = RequestMethod.GET, value="index")
	public String index(Model model) {
		return "index";
	}
	
	@RequestMapping(method = RequestMethod.GET, value="lastProbe")
	public ModelAndView lastProbe() {
		return new ModelAndView("lastProbe", "probe", wsService.getLast());
	}
	
	@RequestMapping(method = RequestMethod.GET, value="lastProbeDate")
	public @ResponseBody Date lastProbeDate() {
		return wsService.getLast().getCreated();
	}
	
	@RequestMapping(method = RequestMethod.GET, value="weatherStationCharts")
	public ModelAndView weatherStationCharts() {
		return new ModelAndView("weatherStationCharts", "probes", wsService.findAll());
	}
	
	@RequestMapping(method = RequestMethod.GET, value="weatherData")
	public @ResponseBody List<DataDto> weatherData(@RequestParam(required=true, value="param")final String parameter) {
		return wsService.getDataForParam(parameter);
	}
}
