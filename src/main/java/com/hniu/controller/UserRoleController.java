package com.hniu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hniu.pojo.SysRole;
import com.hniu.service.UserRolerService;
import com.hniu.util.Page;
import com.hniu.util.State;

@Controller
@RequestMapping("UserRoler")
public class UserRoleController {
	@Autowired
	UserRolerService userRoleService;
	
	private static Integer id = null;
	//查看此管理员角色
	@RequestMapping("selectUserRole")
	public String selectUserRole(Integer userId,Model model,Page page){
		if(userId != null) {
			id = userId;
		}
		PageHelper.offsetPage(page.getStart(),page.getCount());
		List<SysRole> list = userRoleService.selectUserRole(id);
		int total = (int) new PageInfo<>(list).getTotal();
		page.setTotal(total);
		model.addAttribute("userId",userId);
		model.addAttribute("list",list);
		model.addAttribute("page",page);
		List<SysRole> listRole = userRoleService.selectAll();
		model.addAttribute("listRole",listRole);
		return "admin/selectUserRole";
	}
	
	//添加角色
	@RequestMapping("insertRole")
	@ResponseBody
	public State addRole(Integer userId,Integer roleId){
		State state = new State();
		if(userId == null || roleId == null) {
			state.setIsSuccess(false);
			state.setMessage("角色添加失败");
			return state;
		}
		int i = userRoleService.addRoler(userId, roleId);
		if(i != 0) {
			state.setIsSuccess(true);
			state.setMessage("角色添加成功");
			return state;
		}else if(i == 2){
			state.setIsSuccess(false);
			state.setMessage("此管理员拥有此角色");
			return state;
		}else {
			state.setIsSuccess(false);
			state.setMessage("角色添加失败");
			return state;
		}
		
	}
	
	//删除角色
	@RequestMapping("deleteUserRole")
	@ResponseBody
	public State deleteUserRole(Integer id,Integer userId) {
		State state = new State();
		if(id == null) {
			state.setIsSuccess(false);
			state.setMessage("删除角色失败");
		}
		int i = userRoleService.deleteRole(id,userId);
		if(i != 0) {
			state.setIsSuccess(true);
			state.setMessage("角色删除成功");
			return state;
		}else {
			state.setIsSuccess(false);
			state.setMessage("角色删除失败");
			return state;
		}
	}

}
