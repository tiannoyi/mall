
package com.hniu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hniu.mapper.HelpMapper;
import com.hniu.pojo.Help;
import com.hniu.pojo.HelpExample;
import com.hniu.service.HelpService;

@Service
public class HelpServiceImpl implements HelpService {

	@Autowired
	HelpMapper helpMapper;
	
	@Override
	public List<Help> getAllHelp() {
		HelpExample example=new HelpExample();
		example.setOrderByClause("id desc");
		return helpMapper.selectByExample(example);
	}

	@Override
	public List<Help> getHelpByType(String type) {
		return helpMapper.selectByType(type);
	}

	@Override
	public List<Help> getHelpLike(String s) {
		return helpMapper.selectByLike(s);
	}

}