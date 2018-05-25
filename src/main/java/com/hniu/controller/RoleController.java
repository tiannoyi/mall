package com.hniu.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hniu.exception.CustomException;
import com.hniu.pojo.SysPermission;
import com.hniu.pojo.SysRole;
import com.hniu.service.RoleService;
import com.hniu.service.SysService;
import com.hniu.util.Page;
import com.hniu.util.State;

@Controller
@RequestMapping("role")
public class RoleController {
	@Autowired
	RoleService roleService;
	@Autowired
	SysService sysService;
	
	
	//查询所有角色信息
	@GetMapping("selectAll")
	public String selectAll(Model model,Page page,Integer id) throws Exception{
		PageHelper.offsetPage(page.getStart(), page.getCount());
		List<SysRole> list = roleService.selectAll();
		int total = (int) new PageInfo<>(list).getTotal();
		try {
			List<SysPermission> permissions = sysService.findPermissionListByUserId(id);
			model.addAttribute("permission",permissions);
		} catch (Exception e) {
			throw new CustomException("查询权限url出错");
		}
		page.setTotal(total);
		model.addAttribute("list",list);
		model.addAttribute("page",page);
		return "admin/editRoleList";
	}
	//查询单个角色
	@GetMapping("selectRole")
	public String selectRole(Model model,String RoleName) {
		SysRole role = roleService.selectRole(RoleName);
		List<SysRole> list = new ArrayList<>();
		list.add(role);
		model.addAttribute("list",list);
		return "admin/editRoleList";
	}
	//添加角色
	@PostMapping("insertRole")
	@ResponseBody
	public State insertRole(SysRole role) {
		State state = new State();
		int i = roleService.insert(role);
		if(i==1) {
			state.setIsSuccess(true);
			state.setMessage("角色添加成功");
			return state;
		}else if(i == 2) {
			state.setIsSuccess(false);
			state.setMessage("请输入所添加角色的信息");
			return state;
		}else {
			state.setIsSuccess(false);
			state.setMessage("角色添加失败");
			return state;
		}
		
	}
	//修改单个角色
	@RequestMapping("updateRole")
	@ResponseBody
	public State updateRole(SysRole role) {
		State state = new State();
		int i = roleService.updateRole(role);
		if(i==1) {
			state.setIsSuccess(true);
			state.setMessage("数据更新成功");
			return state;
		}else if(i == 2){
			state.setIsSuccess(false);
			state.setMessage("此角色不存在");
			return state;
		}else {
			state.setIsSuccess(false);
			state.setMessage("数据更新失败");
			return state;
		}
	}
	//删除单个角色
	@RequestMapping(value="/deleteRole")
	@ResponseBody
	public State deleteRole(Integer id) {
		State state = new State();
		int i = roleService.deleteRole(id);
		if(i==1) {
			state.setIsSuccess(true);
			state.setMessage("删除成功");
			return state;
		}else if(i == 2){
			state.setIsSuccess(false);
			state.setMessage("此角色不存在");
			return state;
		}else {
			state.setIsSuccess(false);
			state.setMessage("删除失败");
			return state;
		}
	}
	//批量删除角色
	@RequestMapping(value="deleteBatch")
	@ResponseBody
	public State deleteBatch(Integer[] id) {
		State state = new State();
		int i = roleService.deleteBatch(id);
		if(i == 1) {
			state.setIsSuccess(true);
			state.setMessage("角色批量删除成功");
			return state;
		}else {
			state.setIsSuccess(false);
			state.setMessage("角色批量删除失败");
			return state;
		}
		
	}
	
}
