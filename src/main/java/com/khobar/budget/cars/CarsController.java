package com.khobar.budget.cars;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CarsController {
	@RequestMapping(value = "/cars", method = RequestMethod.GET)
	public String listCars() {
		System.out.println("cars");
		return "cars/list";
	}

}
