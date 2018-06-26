package com.hniu.service;

import java.util.List;

import com.hniu.pojo.SysPermission;

public interface PermissionService {
	//查询所有权限信息
	List<SysPermission> selectAll();
	//查询单个权限信息
	SysPermission selectPermission(String name);
	//添加权限
	int insertPermission(SysPermission permission);
	//修改当个权限信息
	int updatePermission(SysPermission permission);
	//删除单个权限
	int deletePermission(Integer id);
	//批量删除权限
	int deleteBatch(Integer[] id);
}
