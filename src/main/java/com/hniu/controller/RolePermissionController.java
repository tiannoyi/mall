package com.hniu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hniu.pojo.SysPermission;
import com.hniu.service.RolerPermissionService;
import com.hniu.util.Page;
import com.hniu.util.State;

@Controller
@RequestMapping("RolePermission")
public class RolePermissionController {
	@Autowired
	RolerPermissionService rolePermissionService;
	
	
	private static Integer id = null;
	
	//查看角色权限
	@RequestMapping("selectRolePermission")
	public String selectRolePermission(Integer roleId,Model model,Page page) {
		if(roleId != null) {
			id = roleId;
		}
		PageHelper.offsetPage(page.getStart(),page.getCount());
		List<SysPermission> list = rolePermissionService.selectRolePermission(id);
		int total = (int) new PageInfo<>(list).getTotal();
		page.setTotal(total);
		model.addAttribute("roleId",roleId);
		model.addAttribute("list",list);
		model.addAttribute("page",page);
		List<SysPermission> listPermission = rolePermissionService.selectAll();
		model.addAttribute("listPermission",listPermission);
		return "admin/selectRolePermission";
	}
	
	//添加权限
	@RequestMapping("insertPermission")
	@ResponseBody
	public State insertPermission(Integer roleId,Integer permissionId) {
		State state = new State();
		if(roleId == null || permissionId == null) {
			state.setIsSuccess(false);
			state.setMessage("权限添加失败");
			return state;
		}
		int i = rolePermissionService.addPermission(roleId, permissionId);
		if(i != 0) {
			state.setIsSuccess(true);
			state.setMessage("权限添加成功");
			return state;
		}else if(i == 2){
			state.setIsSuccess(false);
			state.setMessage("此管角色拥有此权限");
			return state;
		}else {
			state.setIsSuccess(false);
			state.setMessage("权限添加失败");
			return state;
		}
	}
	
	//删除权限
	@RequestMapping("deleteRolePermission")
	@ResponseBody
	public State deleteRolePermission(Integer roleId,Integer permissionId) {
		State state = new State();
		if(roleId == null) {
			state.setIsSuccess(false);
			state.setMessage("删除权限失败");
		}
		int i = rolePermissionService.deletePermission(roleId, permissionId);
		if(i != 0) {
			state.setIsSuccess(true);
			state.setMessage("权限删除成功");
			return state;
		}else {
			state.setIsSuccess(false);
			state.setMessage("权限删除失败");
			return state;
		}
	}

}
