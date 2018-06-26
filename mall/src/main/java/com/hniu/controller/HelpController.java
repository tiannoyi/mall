package com.hniu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("help")
public class HelpController {
	
	
	@RequestMapping("helpPage")
	public String helpPage() {
		return "admin/helpPage";
	}

}
