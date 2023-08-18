package com.mattmottle.omikujiform.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/omikuji")
public class formController {
	
	@RequestMapping("")
	public String form() {
		return "form.jsp";
	}
	@PostMapping("/processForm")
	public String processForm(
			@RequestParam(value="number") String number,
			@RequestParam(value="city") String city,
			@RequestParam(value="person") String person,
			@RequestParam(value="hobby") String hobby,
			@RequestParam(value="thing") String thing,
			@RequestParam(value="message") String message,
			HttpSession session) {
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("thing", thing);
		session.setAttribute("message", message);
		
		return "redirect:/omikuji/show";
	}
	@GetMapping("/show")
	public String results(HttpSession session, Model results) {
		results.addAttribute("number", Integer.valueOf((String) session.getAttribute("number")));
		results.addAttribute("city", (String) session.getAttribute("city"));
		results.addAttribute("person", (String) session.getAttribute("person"));
		results.addAttribute("hobby", (String) session.getAttribute("hobby"));
		results.addAttribute("thing", (String) session.getAttribute("thing"));
		results.addAttribute("message", (String) session.getAttribute("message"));
		
		return "show.jsp";
	}
	
}
