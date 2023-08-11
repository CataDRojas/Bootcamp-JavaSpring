package com.codingdojo.cyj.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.codingdojo.cyj.services.ApiService;

@Controller
public class ApiController {
	@Autowired
	private final ApiService countryService;
	

	public ApiController(ApiService countryService) {
		this.countryService = countryService;
		
	}
	@GetMapping("/query1")
	public String mostrarLenguajeEsloveno(Model model) {
		List<Object[]> table = countryService.obtenerEsloveno();
		model.addAttribute("table", table);
		return "query1.jsp";
	}
	
	@GetMapping("/query2")
	public String totalCiudadPorPais(Model model) {
		List<Object[]> table = countryService.obtenerCiudades();
		model.addAttribute("table", table);
		return "query2.jsp";
	}
	
	@GetMapping("/query3")
	public String cantidadCiudad01(Model model) {
		List<Object[]> table = countryService.obtenerCiudades();
		model.addAttribute("table", table);
		return "query3.jsp";		
	}
	@GetMapping("/query4")
	public String paises89Lang(Model model) {
		List<Object[]> table = countryService.obtenerPaises89();
		model.addAttribute("table", table);
		return "query4.jsp";		
	}
	@GetMapping("/query5")
	public String paisesTamanos(Model model) {
		List<Object[]> table = countryService.obtenerTamano();
		model.addAttribute("table", table);
		return "query5.jsp";		
	}
	@GetMapping("/query6")
	public String paisesMonarquia(Model model) {
		List<Object[]> table = countryService.obtenerMonarquia();
		model.addAttribute("table", table);
		return "query6.jsp";		
	}
	
	@GetMapping("/query7")
	public String citiesArgentinas500000(Model model) {
		List<Object[]> table = countryService.obtenerCantPorRegion();
		model.addAttribute("table", table);
		return "query7.jsp";		
	}
	@GetMapping("/query8")
	public String obtenerCantidadPorRegion(Model model) {
		List<Object[]> table = countryService.obtenerCantPorRegion();
		model.addAttribute("table", table);
		return "query8.jsp";		
	}
}
