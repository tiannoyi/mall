package com.hniu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hniu.mapper.SysPermissionMapper;
import com.hniu.mapper.SysRolePermissionMapper;
import com.hniu.pojo.SysPermission;
import com.hniu.pojo.SysPermissionExample;
import com.hniu.pojo.SysRolePermission;
import com.hniu.pojo.SysRolePermissionExample;
import com.hniu.service.RolerPermissionService;

@Service
public class RolePermissionServiceImpl implements RolerPermissionService{
	@Autowired
	SysRolePermissionMapper rolePermissionMapper;
	@Autowired
	SysPermissionMapper permissionMapper;

	@Override
	public List<SysPermission> selectAll() {
		SysPermissionExample example = new SysPermissionExample();
		example.setOrderByClause("id desc");
		return permissionMapper.selectByExample(example);
	}

	@Override
	public List<SysPermission> selectRolePermission(Integer roleId) {
		if(roleId == null) {
			return null;
		}
		return permissionMapper.selectRolePermission(roleId);
	}

	@Override
	public int addPermission(Integer roleId, Integer permissionId) {
		SysRolePermission rp = new SysRolePermission();
		rp.setSysRoleId(roleId);
		rp.setSysPermissionId(permissionId);
		int i = rolePermissionMapper.insertSelective(rp);
		if(i != 0) {
			return 1;
		}
		return 0;
	}

	@Override
	public int deletePermission(Integer roleId, Integer permissionId) {
		SysRolePermissionExample example = new SysRolePermissionExample();
		example.createCriteria().andSysRoleIdEqualTo(roleId).andSysPermissionIdEqualTo(permissionId);
		List<SysRolePermission> list = rolePermissionMapper.selectByExample(example);
		if(list.size() == 0) {
			return 0;
		}
		Integer rpId = list.get(0).getId();
		int i = rolePermissionMapper.deleteByPrimaryKey(rpId);
		if(i != 0) {
			return 1;
		}
		return 0;
	}
	
	
}
