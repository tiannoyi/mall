package com.hniu.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.hniu.mapper.SysUserMapper;
import com.hniu.pojo.SysUser;
import com.hniu.pojo.SysUserExample;
import com.hniu.service.SysUserService;

@Service
public class SysUserServiceImpl implements SysUserService{
	
	@Autowired
	SysUserMapper userMapper;

	@Override
	public List<SysUser> selectAll() {
		SysUserExample example = new SysUserExample();
		example.setOrderByClause("id desc");
		return userMapper.selectByExample(example);
	}

	@Override
	public SysUser selectUser(String usercode) {
		SysUserExample example = new SysUserExample();
		example.createCriteria().andUsercodeEqualTo(usercode);
		List<SysUser> users = new ArrayList<>();
		users =userMapper.selectByExample(example);
		if(users.isEmpty()) {
			return null;
		}
		return users.get(0);
	}

	@Override
	public int updateUser(SysUser user) {
	if(StringUtils.isEmpty(userMapper.selectByPrimaryKey(user.getId()))) {
		return 2;
	}
		int i = userMapper.updateByPrimaryKeySelective(user);
		if(i!=0) {
			return 1;
		}
		return 0;
	}

	@Override
	public int deleteUser(Integer id) {
		if(StringUtils.isEmpty(userMapper.selectByPrimaryKey(id))) {
			return 2;
		}
		int i = userMapper.deleteByPrimaryKey(id);
		if(i != 0) {
			return 1;
		}
		return 0;
	}

	@Override
	public int deleteBatch(Integer[] id) {	
		if(id!=null && id.length > 0) {
			int sum = id.length;
			int i = userMapper.deleteBatch(id);
			if(i == sum) {
				return 1;
			}else {
				return 0;
			}
		}
		return 0;
	}

	@Override
	public int updatePassword(Integer id, String oldPassword, String newPassword, String secendPassword) {
		SysUser user = userMapper.selectByPrimaryKey(id);
		String password = user.getPassword();
		String salt = user.getSalt();
		int hashIterations = 1;
		
		Md5Hash md5Hash = new Md5Hash(oldPassword,salt,hashIterations);
		String password_md5 = md5Hash.toString();
		if(!password.equals(password_md5)) {
			return 2;
		}else if(!newPassword.equals(secendPassword)) {
			return 3;
		}
		Md5Hash md5Hash1 = new Md5Hash(newPassword,salt,hashIterations);
		String newPwd = md5Hash1.toString();
		user.setPassword(newPwd);
		int i = userMapper.updateByPrimaryKeySelective(user);
		if(i != 0) {
			return 0;
		}
		return 4;
	}
	
	
	
	

}
