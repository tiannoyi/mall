package com.hniu.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hniu.mapper.SysRoleMapper;
import com.hniu.mapper.SysUserRoleMapper;
import com.hniu.pojo.SysRole;
import com.hniu.pojo.SysRoleExample;
import com.hniu.pojo.SysUserRole;
import com.hniu.pojo.SysUserRoleExample;
import com.hniu.service.UserRolerService;
@Service
public class UserRolerServiceImpl implements UserRolerService{
	@Autowired
	 SysUserRoleMapper userRoleMapper;
	@Autowired
	SysRoleMapper roleMapper;

	@Override
	public int addRoler(Integer userId, Integer roleId) {
		List<Integer> id = null;
		SysUserRole ur = new SysUserRole();
		ur.setSysUserId(userId);
		ur.setSysRoleId(roleId);
		/*SysUserRoleExample example = new SysUserRoleExample();
		example.setOrderByClause("id desc");
		List<SysUserRole> list = userRoleMapper.selectByExample(example);
		SysUserRoleExample example2 = new SysUserRoleExample();
		example2.createCriteria().andSysUserIdEqualTo(userId).andSysRoleIdEqualTo(roleId);
		List<SysUserRole> list1 = userRoleMapper.selectByExample(example2);
		for(int i = 0;i<list.size();i++) {
			id.add(list1.get(i).getId());
		}
		Boolean b = id.contains(list1.get(0).getId());		
		if(b) {
			return 2;
		}*/
		int i = userRoleMapper.insertSelective(ur);
		if(i != 0) {
			return 1;
		}
		return 0;
	}

	@Override
	public List<SysRole> selectUserRole(Integer userId) {
		if(userId == null) {
			return null;
		}
		return roleMapper.selectUserRole(userId);
	}

	@Override
	public List<SysRole> selectAll() {
		SysRoleExample example = new SysRoleExample();
		example.setOrderByClause("id desc");
		return roleMapper.selectByExample(example);
	}

	@Override
	public int deleteRole(Integer id,Integer userId) {
		SysUserRoleExample example = new SysUserRoleExample();
		example.createCriteria().andSysUserIdEqualTo(userId).andSysRoleIdEqualTo(id);
		List<SysUserRole> list = userRoleMapper.selectByExample(example);
		if(list.size() == 0) {
			return 0;
		}
		Integer urId = list.get(0).getId();
		int i = userRoleMapper.deleteByPrimaryKey(urId);
		if(i != 0) {
			return 1;
		}
		return 0;
	}

}
