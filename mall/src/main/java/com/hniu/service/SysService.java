package com.hniu.service;

import java.util.List;

import com.hniu.pojo.ActiveUser;
import com.hniu.pojo.SysPermission;
import com.hniu.pojo.SysUser;

/**
 * @author 熊俊
 *认证授权服务接口
 * @date 2018年5月10日
 *
 */
public interface SysService {

	//根据用户的身份和密码进行认证，如果认证通过，返回用户身份信息
	public ActiveUser authenticat(String userCode,String password) throws Exception;

	//根据用户账号查询用户信息
	public SysUser findSysUserByUserCode(String userCode)throws Exception;
	
	//根据用户id查询权限范围的菜单
	public List<SysPermission> findMenuListByUserId(Integer userid)throws Exception;
	
	//根据用户id查询权限范围的url
	public List<SysPermission> findPermissionListByUserId(Integer userid)throws Exception;

	
}
