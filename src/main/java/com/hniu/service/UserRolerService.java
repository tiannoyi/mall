package com.hniu.service;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.hniu.pojo.SysRole;

public interface UserRolerService {
	
	//查询所有角色
	List<SysRole> selectAll();
	
	//查询此用户角色
	List<SysRole> selectUserRole(Integer userId);
	
	//分配角色
	int addRoler(Integer userId, Integer roleId);
	
	//删除此用户角色
	int deleteRole(Integer id,Integer userId);

}
