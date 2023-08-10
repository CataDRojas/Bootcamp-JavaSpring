package com.codingdojo.contador.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;
@Controller
public class HomeController {
	
    @RequestMapping("/")
    public String home(HttpSession session) {
    	
    	if (session.getAttribute("count") == null)
    			{
    		session.setAttribute("count", 0);
    			}
    	Integer count = (Integer) session.getAttribute("count");
    	count++;
    	session.setAttribute("count", count);
    	
        return "home.jsp";
        
       
    }
    @RequestMapping("/counter")
    public String counter() {
        return "counter.jsp";
    }
    
}


