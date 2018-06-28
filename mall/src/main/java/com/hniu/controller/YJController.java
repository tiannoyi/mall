package com.hniu.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hniu.pojo.AdminInfo;
import com.hniu.service.YJService;

@Controller
public class YJController {
	@Autowired
	YJService yjService;
	@ResponseBody
	@RequestMapping(value = "/admininfo")
	public AdminInfo admininfo(Map<String,Object> map,int id,Model model){
		AdminInfo adminInfo =yjService.GetAdminByAID(id);
		map.put("admininfo", adminInfo);
		model.addAttribute("s", adminInfo);
		return adminInfo;
		
	}
}
