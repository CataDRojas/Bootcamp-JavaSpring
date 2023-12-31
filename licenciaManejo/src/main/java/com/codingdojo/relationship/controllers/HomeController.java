package com.codingdojo.relationship.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codingdojo.relationship.models.License;
import com.codingdojo.relationship.models.Person;
import com.codingdojo.relationship.services.LicenseService;
import com.codingdojo.relationship.services.PersonService;

import jakarta.validation.Valid;

@Controller
public class HomeController {
	private final PersonService personService;
	private final LicenseService licenseService;

	public HomeController(LicenseService licenseService, PersonService personService) {
		this.personService = personService;
		this.licenseService = licenseService;
	}
	@RequestMapping("/persons/new")
	public String newPerson(@Valid @ModelAttribute("person") Person person) {
		return "newPerson.jsp";
	}
	@RequestMapping(value="/licenses/new", method=RequestMethod.POST)
	public String newLicense(@Valid @ModelAttribute("license") License license, BindingResult result) {
		if (result.hasErrors()) {
			return "newLicense.jsp";
		}
		licenseService.saveLicense(license);
		return "redirect:/licenses/new";
	}
	
	@RequestMapping(value="/persons/new", method=RequestMethod.POST)
	public String createPerson(@Valid @ModelAttribute("person") Person person, BindingResult result) {
		if (result.hasErrors()) {
			return "newPerson.jsp";
		}
		personService.create(person);
		return "redirect:/persons/new";
	}
	
	@RequestMapping("/licenses/new")
	public String newLicense(Model model,@Valid @ModelAttribute("license") License license) {
		List<Person> persons = personService.personasSinLicencia();
		model.addAttribute("persons", persons);
		return "newLicense.jsp";
	}
	@RequestMapping("/persons/{id}")
	 public String profile(Model model, @PathVariable("id") Long id) {
		 Person person = personService.findUser(id);
		 License license = licenseService.findLicense(id);
	     model.addAttribute("person", person);
	     model.addAttribute("license", license);
	     
	     return "profile.jsp";
	}

}
