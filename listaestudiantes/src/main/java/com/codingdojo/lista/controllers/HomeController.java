package com.codingdojo.lista.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.lista.services.ContactService;
import com.codingdojo.lista.services.StudentService;

@Controller
@RequestMapping("/students")
public class HomeController {
	private final ContactService contactService;
	
	private final StudentService studentService;
	
	public HomeController(ContactService contactService, StudentService studentService) {
		this.contactService = contactService;
		this.studentService = studentService;
	}
	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("studentInfo", studentService.allStudent());
		model.addAttribute("contactInfo", contactService.allContact());
		return "students.jsp";
	}
}
