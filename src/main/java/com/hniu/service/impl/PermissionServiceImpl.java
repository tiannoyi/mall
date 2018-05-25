package com.hniu.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.hniu.mapper.SysPermissionMapper;
import com.hniu.pojo.SysPermission;
import com.hniu.pojo.SysPermissionExample;
import com.hniu.service.PermissionService;

@Service
public class PermissionServiceImpl implements PermissionService{
	@Autowired
	SysPermissionMapper permissionMapper;

	@Override
	public List<SysPermission> selectAll() {
		SysPermissionExample example = new SysPermissionExample();
		example.setOrderByClause("id desc");
		return permissionMapper.selectByExample(example);
	}

	@Override
	public SysPermission selectPermission(String name) {
		SysPermissionExample example = new SysPermissionExample();
		example.createCriteria().andNameEqualTo(name);
		List<SysPermission> permissions = new ArrayList<>();
		permissions = permissionMapper.selectByExample(example);
		if(permissions.isEmpty()) {
			return null;
		}
		return permissions.get(0);
	}

	@Override
	public int insertPermission(SysPermission permission) {
		if(StringUtils.isEmpty(permission)) {
			return 2;
		}
		int i = permissionMapper.insertSelective(permission);
		if(i != 0) {
			return 1;
		}
		return 0;
	}

	@Override
	public int updatePermission(SysPermission permission) {
		if(StringUtils.isEmpty(permissionMapper.selectByPrimaryKey(permission.getId()))) {
			return 2;
		}
		int i = permissionMapper.updateByPrimaryKeySelective(permission);
		if(i != 0) {
			return 1;
		}
		return 0;
	}

	@Override
	public int deletePermission(Integer id) {
		if(StringUtils.isEmpty(permissionMapper.selectByPrimaryKey(id))) {
			return 2;
		}
		int i = permissionMapper.deleteByPrimaryKey(id);
		if(i != 0) {
			return 1;
		}
		return 0;
	}

	@Override
	public int deleteBatch(Integer[] id) {
		if(id != null && id.length>0) {
			int sum = id.length;
			int i = permissionMapper.deleteBatch(id);
			if(i == sum) {
				return 1;
			}else {
				return 0;
			}
		}
		return 0;
	}
}
