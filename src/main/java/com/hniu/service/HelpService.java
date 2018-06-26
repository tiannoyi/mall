
package com.hniu.service;

import java.util.List;
import com.hniu.pojo.Help;

public interface HelpService {
	
	List<Help> getAllHelp();

	List<Help> getHelpByType(String type);
	
	List<Help> getHelpLike(String s);
}