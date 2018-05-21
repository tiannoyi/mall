package com.hniu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hniu.mapper.SysUserMapper;
import com.hniu.pojo.SysUser;
import com.hniu.pojo.SysUserExample;
import com.hniu.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	SysUserMapper userMapper;

	@Override
	public List<SysUser> selectAll() {
		SysUserExample example = new SysUserExample();
		example.setOrderByClause("id desc");
		return userMapper.selectByExample(example);
	}
	

}
