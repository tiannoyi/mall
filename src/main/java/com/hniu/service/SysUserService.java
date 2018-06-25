package com.hniu.service;

import java.util.List;

import com.hniu.pojo.SysUser;

public interface SysUserService {
	//查询所有用户信息
	List<SysUser> selectAll();
	//查询单个用户信息
	SysUser selectUser(String usercode);
	//修改单个用户信息
	int updateUser(SysUser user);
	//删除单个用户信息
	int deleteUser(Integer id);
	//批量删除
	int deleteBatch(Integer[] id);
	//修改密码
	int updatePassword(Integer id,String oldPassword,String newPassword,String secendPassword);
}
