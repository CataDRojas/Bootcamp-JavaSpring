package com.codingdojo.ninjagold.controllers;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	private ArrayList<String> msg = new ArrayList<>();
	@GetMapping("/gold")
	public String home(HttpSession session) {
		if(session.getAttribute("count")==null) {
			session.setAttribute("count", 0);
		}
		LocalDateTime miFecha = LocalDateTime.now();
        DateTimeFormatter format = DateTimeFormatter.ofPattern("LLLL d YYYY hh:mm a");
        String formattedDate = miFecha.format(format);
        session.setAttribute("date", formattedDate);
        session.setAttribute("msg", msg);
        return "home.jsp";
	}
	@PostMapping("/reset")
		public String reset(HttpSession session) {
		 session.invalidate();
		 msg.clear();
		 return "redirect:/gold";
	}
	@PostMapping("/farm")
	public String farm(HttpSession session) {
		Random random = new Random();
		int num1 = random.nextInt(11) + 10;
		String msgu = "You entered a farm and earned " + num1 + " gold. (" + session.getAttribute("date") + ")";
		msg.add(msgu);
		Integer count = (Integer) session.getAttribute("count");
		count += num1;
		session.setAttribute("count", count);
		return "redirect:/gold";
	}
	@PostMapping("/cave")
	public String cave(HttpSession session) {
		Random random = new Random();
		int num2 = random.nextInt(6) + 5;
		String msgd = "You entered a cave and earned " + num2 + " gold. (" + session.getAttribute("date") + ")";
		msg.add(msgd);
		Integer count = (Integer) session.getAttribute("count");
		count += num2;
		session.setAttribute("count", count);
		return "redirect:/gold";
		
	}
	@PostMapping("/house")
	public String house(HttpSession session) {
		Random random = new Random();
		int num3 = random.nextInt(4) + 2;
		String msgt = "You entered a cave and earned " + num3 + " gold. (" + session.getAttribute("date") + ")";
		msg.add(msgt);
		Integer count = (Integer) session.getAttribute("count");
		count += num3;
		session.setAttribute("count", count);
		return "redirect:/gold";
	}
	
	@PostMapping("/casino")
	public String casino(HttpSession session) {
		Random random = new Random();
		int num4 = random.nextInt(50) + 1;
		Integer count = (Integer) session.getAttribute("count");
		int plusMinus = random.nextInt(2);
		if (plusMinus==0) {
			count += num4;
			String msgc = "You entered a casino and earned " + num4 +  " gold. (" + session.getAttribute("date") + ")";
			msg.add(msgc);
			session.setAttribute("count", count);
		} else {
			count -= num4;
			String msgc = "You entered a casino and lost " + Math.abs(num4) + " gold. Ouch (" + session.getAttribute("date") + ")";
			msg.add(msgc);
			session.setAttribute("count", count);
		}
		return "redirect:/gold";
	}
	@PostMapping("/spa")
	public String spa(HttpSession session) {
		Random random = new Random();
		int num5 = random.nextInt(20) + 1;
		Integer count = (Integer) session.getAttribute("count");
		count -= num5;
		String msgc = "You entered a casino and lost " + Math.abs(num5) + " gold. Ouch (" + session.getAttribute("date") + ")";
		msg.add(msgc);
		session.setAttribute("count", count);
		return "redirect:/gold";
	}
}
