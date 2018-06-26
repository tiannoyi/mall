package com.hniu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hniu.shiro.CustomRealm;

/**
 * @author 熊俊
 *手动调用controller清除shiro的缓存
 *将来是在service中写
 * @date 2018年5月15日
 *
 */
@Controller
public class ClearShiroCache {
	//注入realm
	@Autowired
	CustomRealm customRealm;

	@RequestMapping("/clearShiroCache")
	public String clearShiroCache() {
		//清除缓存,将来正常开放要在service调用clearShiroCache
		customRealm.clearCached();
		
		return "success";
	}
}
