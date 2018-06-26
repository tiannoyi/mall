package com.hniu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hniu.mapper.YJMapper;
import com.hniu.pojo.AdminInfo;
import com.hniu.service.YJService;
@Service
public class YJServiceImpl implements YJService {
@Autowired
YJMapper yjMapper;
	@Override
	public AdminInfo GetAdminByAID(int id) {
		// TODO Auto-generated method stub
		AdminInfo adminInfo=yjMapper.GetAdminByAID(id);
		return adminInfo;
	}

}
