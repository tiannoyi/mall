package com.hniu.service;

import java.util.List;

import com.hniu.pojo.SysPermission;

public interface RolerPermissionService {
	
	//查询所有权限
	List<SysPermission> selectAll();
	
	//查询此角色的权限
	List<SysPermission> selectRolePermission(Integer roleId);
	
	//分配角色
	int addPermission(Integer roleId,Integer permissionId);
	
	//删除此角色权限
	int deletePermission(Integer roleId,Integer permissionId);

}
