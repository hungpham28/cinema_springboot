package com.example.cinema_client.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/error")
public class ErrorController implements org.springframework.boot.web.servlet.error.ErrorController {
	@GetMapping
	public String displayError(HttpSession session) {
		if(session.getAttribute("jwtResponse")==null) {
			return "redirect:/login";
		}
		else {
			return "redirect:/";
		}
	}
}
