package com.hniu.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hniu.pojo.Help;
import com.hniu.service.HelpService;

@Controller
@RequestMapping("")
public class BtmBtnController {

	@Autowired
	HelpService helpService;

	@RequestMapping("ensure1")
	public String ensure1() {
		return "btmbtn/ensure1";
	}

	@RequestMapping("ensure2")
	public String ensure2() {
		return "btmbtn/ensure2";
	}

	@RequestMapping("exc_safeguarding")
	public String exc_safeguarding() {
		return "btmbtn/exc_safeguarding";
	}

	// 天猫帮助（保障）
	@RequestMapping("helpGuarantee")
	public String help(Model model,String type){
		System.out.println("=========type======"+type);
		if (type == null || type.length() <= 0) {
			type = "论坛";
		}

//		List<Help> list1 = helpService.getAllHelp();
//		List<Help> list3 = helpService.getHelpLike("帮派");
		List<Help> helps = helpService.getHelpByType(type);
		
		model.addAttribute("helps", helps);
		model.addAttribute("type", type);
		return "btmbtn/helpGuarantee";
	}
	
	@RequestMapping("helpTreeList")
	@ResponseBody
	public String helpTree(Model model,Help help){
		
		System.out.println(help.getType());
		/*System.out.println("=========type======"+type);
		if (type == null || type.length() <= 0) {
			type = "论坛";
		}

//		List<Help> list1 = helpService.getAllHelp();
//		List<Help> list3 = helpService.getHelpLike("帮派");
		List<Help> helps = helpService.getHelpByType(type);
		
		model.addAttribute("helps", helps);
		model.addAttribute("type", type);*/
		return "true";
	}
	
}
