package com.hniu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.hniu.exception.CustomException;
import com.hniu.mapper.SysPermissionMapperCustom;
import com.hniu.mapper.SysUserMapper;
import com.hniu.pojo.ActiveUser;
import com.hniu.pojo.SysPermission;
import com.hniu.pojo.SysUser;
import com.hniu.pojo.SysUserExample;
import com.hniu.service.SysService;
import com.hniu.util.MD5;


/**
 * @author 熊俊
 *认证授权的服务接口
 * @date 2018年5月10日
 *
 */
public class SysServiceImpl implements SysService{
	@Autowired
	SysUserMapper sysUserMapper;
	@Autowired
	SysPermissionMapperCustom sysPermissionMapperCustom;

	@Override
	public ActiveUser authenticat(String userCode, String password) throws Exception {
		/*认证过程：
		根据用户身份（账号）查询数据库，如果查询不到用户不存在
		对输入的密码 和数据库密码 进行比对，如果一致，认证通过*/
		
		
		//根据用户账号查询数据库
		SysUser sysUser = this.findSysUserByUserCode(userCode);
		if(sysUser == null) {
			//抛出异常
			throw new CustomException("用户账号不存在:");
		}
		
		//数据库密码(md5密码)
		String password_db = sysUser.getPassword();
		
		//对输入的密码和数据库密码进行对比，如果一致认证通过
		//对页面输入的密码进行md5加密
		String password_input_md5 = new MD5().getMD5ofStr(password);
		if(!password_input_md5.equalsIgnoreCase(password_db)) {//忽略大小写
			//抛出异常
			throw new CustomException("用户名或密码错误");
		}
		//得到用户id
		Integer userid = sysUser.getId();
		
		//根据用户id查询菜单
		List<SysPermission> menuList = this.findMenuListByUserId(userid);
		
		//根据用户id查询url
		List<SysPermission> permissionList= this.findPermissionListByUserId(userid);
		
		
		
		//认证通过，返回用户身份信息
		ActiveUser activeUser = new ActiveUser();
		activeUser.setUserid(sysUser.getId());
		activeUser.setUsercode(userCode);
		activeUser.setUsername(sysUser.getUsername());//用户名称
		
		
		//放入权限范围的菜单和url
		activeUser.setMenus(menuList);
		activeUser.setPermissions(permissionList);
		
		return activeUser;
	}
	
	//根据用户账号查询用户信息
	public SysUser findSysUserByUserCode(String userCode)throws Exception {
		SysUserExample example =  new SysUserExample();
		SysUserExample.Criteria criteria = example.createCriteria();
		criteria.andUsercodeEqualTo(userCode);
		
		List<SysUser> list = sysUserMapper.selectByExample(example);
		if(list != null && list.size()==1) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public List<SysPermission> findMenuListByUserId(Integer userid) throws Exception {
		
		return sysPermissionMapperCustom.findMenuListByUserId(userid);
	}

	@Override
	public List<SysPermission> findPermissionListByUserId(Integer userid) throws Exception {
		
		return sysPermissionMapperCustom.findPermissionListByUserId(userid);
	}

}
