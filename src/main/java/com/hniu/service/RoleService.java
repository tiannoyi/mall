package com.hniu.service;

import java.util.List;

import com.hniu.pojo.SysRole;
import com.hniu.util.Page;

public interface RoleService {
	//查询所有角色信息
	List<SysRole> selectAll();
	//查询单个角色信息
	SysRole selectRole(String name);
	//修改单个角色信息
	int updateRole(SysRole role);
	//删除单个角色
	int deleteRole(Integer id);
	//添加角色
	int insert(SysRole role);
	//批量删除角色
	int deleteBatch(Integer[] id);
}
