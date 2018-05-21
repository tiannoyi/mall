package com.hniu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hniu.pojo.SysUser;
import com.hniu.service.UserService;
import com.hniu.util.Page;

@Controller
@RequestMapping(value="")
public class UserController {
	@Autowired
	UserService userService;
	
	//查询所有用户
	@GetMapping(value="selectAll")
	@ResponseBody
	public String selectAll(Model model,Page page) {
		PageHelper.offsetPage(page.getStart(), page.getCount());
		List<SysUser> list = userService.selectAll();
		int total = (int) new PageInfo<>(list).getTotal();//通过PageInfo获取总数
		page.setTotal(total);
		model.addAttribute("list",list);
		model.addAttribute("page",page);
		return null;
	}
	
	// 获取指定id用户
	/*@GetMapping(value="selectUserID")
	@ResponseBody
	public SysUser */
	
}
