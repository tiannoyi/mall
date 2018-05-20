package com.hniu.mapper;

import java.util.List;

import com.hniu.pojo.SysPermission;

/**
 * @author 熊俊
 * 权限mapper
 * @date 2018年5月11日
 *
 */
public interface SysPermissionMapperCustom {
	
	//根据用户的id查询菜单
	public List<SysPermission> findMenuListByUserId(String userid) throws Exception;
	//根据用好久id查询权限url
	public List<SysPermission> findPermissionListByUserId(String userid) throws Exception;

}
