package com.jobboard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class InitController {
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String homePage(ModelMap mode) {
		return "home";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginPage(ModelMap mode) {
		return "login";
	}
	
	@RequestMapping(value="/dashboard", method=RequestMethod.GET)
	public String dashBoardPage(ModelMap mode) {
		return "dashboard";
	}
	
	@RequestMapping(value="/Access_Denied", method=RequestMethod.GET)
	public String accessDeniedPage(ModelMap mode) {
		return "accessDenied";
	}
}
