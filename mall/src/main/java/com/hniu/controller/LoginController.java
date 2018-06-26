package com.hniu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hniu.exception.CustomException;
import com.hniu.service.SysService;

@Controller
public class LoginController {
	
	@Autowired
	SysService sysService;
	
	//登陆
	
	/**
	 * @param session
	 * @param randomcod 输入的验证码
	 * @param usercode 用户账号
	 * @param password	用户密码
	 * @return
	 * @throws Exception
	 */
	//登陆提交地址，和applicationContext-shiro.xml中配置的login url一致
	@RequestMapping("login")
	public String login(HttpServletRequest request) throws Exception{
		
		//如果登陆失败从request中获取认证异常信息,shiroLoginFailure就是shiro异常类的全限定名
		String exceptionClassName = (String) request.getAttribute("shiroLoginFailure");
		
		//根据shiro返回的异常类路径判断，抛出指定异常信息
		if(exceptionClassName!=null){
			if (UnknownAccountException.class.getName().equals(exceptionClassName)) {
				//最终会抛给异常处理器
				throw new CustomException("账号不存在");
			} else if (IncorrectCredentialsException.class.getName().equals(
					exceptionClassName)) {
				throw new CustomException("用户名/密码错误");
			}else if("randomCodeError".equals(exceptionClassName)) {
				throw new CustomException("验证码错误");
			}else{
				throw new Exception();//最终在异常处理器生成未知错误
			}
			
		}
		
		//此方法不处理登陆成功（认证成功),shiro认证成功会自动跳转到上一个请求路径
		
		//登陆失败还到login页面
		return "login";
	}
	
	
	//退出
/*	@RequestMapping("/logout")
	public String logout(HttpSession session) throws Exception{
		//清除session
		session.invalidate();
		//重定向到商品列表页面
		return "redirect:first.action";
	}*/

}
