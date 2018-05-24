package com.hniu.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.hniu.mapper.SysRoleMapper;
import com.hniu.pojo.SysRole;
import com.hniu.pojo.SysRoleExample;
import com.hniu.service.RoleService;
@Service
public class RoleServiceImpl implements RoleService{
	@Autowired
	SysRoleMapper roleMapper;

	@Override
	public List<SysRole> selectAll() {
		SysRoleExample example = new SysRoleExample();
		example.setOrderByClause("id desc");
		return roleMapper.selectByExample(example);
	}

	@Override
	public SysRole selectRole(String name) {
		SysRoleExample example = new SysRoleExample();
		example.createCriteria().andNameEqualTo(name);
		List<SysRole> roles = new ArrayList<>();
		roles =  roleMapper.selectByExample(example);
		if(roles.isEmpty()) {
			return null;
		}
		return roles.get(0);
	}

	@Override
	public int updateRole(SysRole role) {
		if(StringUtils.isEmpty(roleMapper.selectByPrimaryKey(role.getId()))) {
			return 2;
		}
		int i = roleMapper.updateByPrimaryKeySelective(role);
		if(i != 0) {
			return 1;
		}
		return 0;
	}

	@Override
	public int deleteRole(Integer id) {
		if(StringUtils.isEmpty(roleMapper.selectByPrimaryKey(id))) {
			return 2;
		}
		int i = roleMapper.deleteByPrimaryKey(id);
		if(i != 0) {
			return 1;
		}
		return 0;
	}

	@Override
	public int insert(SysRole role) {
		if(StringUtils.isEmpty(role)) {
			return 2;
		}
		int i = roleMapper.insertSelective(role);
		if(i != 0){
			return 1;
		}
		return 0;
	}

	@Override
	public int deleteBatch(Integer[] id) {
		if(id != null && id.length>0) {
			int sum = id.length;
			int i = roleMapper.deleteBatch(id);
			if(i == sum) {
				return 1;
			}else {
				return 0;
			}
		}
		return 0;
	}
	
	
	
	
}
