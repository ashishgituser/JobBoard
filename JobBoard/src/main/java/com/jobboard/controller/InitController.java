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
}
