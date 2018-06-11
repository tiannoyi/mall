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
import com.hniu.service.PermissionService;
import com.hniu.service.SysService;
import com.hniu.util.Page;
import com.hniu.util.State;

@Controller
@RequestMapping("permission")
public class PermissionController {
	@Autowired
	PermissionService permissionService;
	@Autowired
	SysService sysService;
	
	@GetMapping("selectAll")
	public String selectAll(Model model,Page page,Integer id) throws Exception {
		PageHelper.offsetPage(page.getStart(), page.getCount());
		List<SysPermission> list = permissionService.selectAll();
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
		return "admin/editPermissionList";
	}
	
	//查询单个权限
	@GetMapping("selectPermission")
	public String selectPermission(Model model,String permissionName,Page page) {
		SysPermission permission = permissionService.selectPermission(permissionName);
		List<SysPermission> list = new ArrayList<>();
		list.add(permission);
		model.addAttribute("list",list);
		model.addAttribute("page",page);
		return "admin/editPermissionList";
	}
	
	//添加权限
	@PostMapping("insertPermission")
	@ResponseBody
	public State insertPermission(SysPermission permission) {
		State state = new State();
		int i = permissionService.insertPermission(permission);
		if(i == 1) {
			state.setIsSuccess(true);
			state.setMessage("权限添加成功");
			return state;
		}else if(i == 2) {
			state.setIsSuccess(false);
			state.setMessage("请输入所添加权限的信息");
			return state;
		}else {
			state.setIsSuccess(false);
			state.setMessage("权限添加失败");
			return state;
		}
	}
	
	//修改单个权限
	@RequestMapping("updatePermission")
	@ResponseBody
	public State updatePermission(SysPermission permission) {
		State state = new State();
		int i = permissionService.updatePermission(permission);
		if(i == 1) {
			state.setIsSuccess(true);
			state.setMessage("数据更新成功");
			return state;
		}else if(i == 2) {
			state.setIsSuccess(false);
			state.setMessage("次权限不存在");
			return state;
		}else {
			state.setIsSuccess(false);
			state.setMessage("数据更新失败");
			return state;
		}
	}
	
	//删除单个角色
	@RequestMapping("deletePermission")
	@ResponseBody
	public State deletePermission(Integer id) {
		State state = new State();
		int i = permissionService.deletePermission(id);
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
	@RequestMapping("deleteBatch")
	@ResponseBody
	public State deleteBatch(Integer[] id) {
		State state = new State();
		int i = permissionService.deleteBatch(id);
		if(i == 1) {
			state.setIsSuccess(true);
			state.setMessage("权限批量删除成功");
			return state;
		}else {
			state.setIsSuccess(false);
			state.setMessage("权限批量删除失败");
			return state;
		}
		
	}
}
