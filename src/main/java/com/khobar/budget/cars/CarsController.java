package com.khobar.budget.cars;

import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;

@Controller
public class CarsController {
	@RequestMapping(value = "/cars", method = RequestMethod.GET)
	public String listCars(Model model) {
		List<String> list = new LinkedList<String>();
		list.add("Kia");
		list.add("Audi");
		list.add("Fiat");
		list.add("Mazda");
		list.add("Opel");
		list.add("Wolswagen");
		list.add("Nysa");
		list.add("Syrena");
		list.add("Łada");
		model.addAttribute("cars",list);
		String jsonString = new Gson().toJson(list);
		model.addAttribute("cars_JSON",jsonString);
		return "cars/list";
	}
	
	@RequestMapping(value = "/cars", method = RequestMethod.POST)
	public String getCars(@RequestParam(value="list_cars")String[] carArray,
			@RequestParam(value="cars_list")String car,
			Model model) {
		
		System.out.println(carArray);
		return "cars/list";
	}

}
