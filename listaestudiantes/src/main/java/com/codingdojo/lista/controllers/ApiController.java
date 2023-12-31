package com.codingdojo.lista.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.lista.models.Contact;
import com.codingdojo.lista.models.Student;
import com.codingdojo.lista.services.ContactService;
import com.codingdojo.lista.services.StudentService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/api")
public class ApiController {
	@Autowired
	private final StudentService studentService;
	@Autowired
	private final ContactService contactService;
	
	public ApiController(StudentService studentService, ContactService contactService) {
		this.studentService = studentService;
		this.contactService = contactService;
	}	
	@GetMapping("/students/create")
	public String createStudentGet(@ModelAttribute("student") Student student) {
		return "student.jsp";
	}
	@GetMapping("/contacts/create")
	public String createContact(Model model,@ModelAttribute("contact") Contact contact) {
		List<Student> persons = studentService.nullStudent();
		model.addAttribute("persons", persons);
		return "contact.jsp";
	}
	@PostMapping("/students/create")
	public String createStudentsPost(@Valid @ModelAttribute("student") Student student, BindingResult result) {
		if(result.hasErrors()) {
			return result.toString();
		}else {
			if("John".equals(student.getFirstName()) && "Doe".equals(student.getLastName())&& student.getAge()==35) {
				studentService.create3Student(student);
			}else {
				studentService.createStudent(student);				
			}
			return "redirect:/api/students/create";			
		}		
	}
	@PostMapping("/contacts/create")
	public String createContactsPost(@Valid @ModelAttribute("contactinfo") Contact contact, BindingResult result) {
		if(result.hasErrors()) {
			return result.toString();
		}else {
			contactService.createContact(contact);
			return "redirect:/api/contacts/create";			
		}		
	}	
}
