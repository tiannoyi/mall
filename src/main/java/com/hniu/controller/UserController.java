package com.hniu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hniu.exception.CustomException;
import com.hniu.pojo.SysPermission;
import com.hniu.pojo.SysUser;
import com.hniu.service.SysService;
import com.hniu.service.UserService;
import com.hniu.util.Page;

@Controller
@RequestMapping(value="user")
public class UserController {
	@Autowired
	UserService userService;
	@Autowired
	SysService sysService;
	
	//查询所有用户
	@GetMapping(value="selectAll")
	public String selectAll(Model model,Page page,Integer id) throws Exception {
		PageHelper.offsetPage(page.getStart(), page.getCount());
		List<SysUser> list = userService.selectAll();
		int total = (int) new PageInfo<>(list).getTotal();//通过PageInfo获取总数
		try {
			List<SysPermission> permissions = sysService.findPermissionListByUserId(id);
			model.addAttribute("permission",permissions);
		} catch (Exception e) {
			throw new CustomException("查询权限url出错");
		}
		page.setTotal(total);
		model.addAttribute("list",list);
		model.addAttribute("page",page);
		return "user/editUserList";
	}
	
	 //查询单个用户
	@GetMapping(value="selectUser")
	public String selectUser(Model model,String usercode) {
		SysUser user = userService.selectUser(usercode);
		model.addAttribute("list",user);
		return "user/editUserList";
	}
	
}
