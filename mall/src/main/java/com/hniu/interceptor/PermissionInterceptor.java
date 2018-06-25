package com.hniu.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.hniu.pojo.ActiveUser;
import com.hniu.pojo.SysPermission;
import com.hniu.util.ResourcesUtil;

/**
 * @author Acer
 *授权拦截器拦截器
 */
public class PermissionInterceptor implements HandlerInterceptor{

	
	//进入Handler方法之前执行
	//用于生认证、身份授权
	//比如身份认证，如果认证通过，表示当前用户没有登录，需要此方法拦截不在向下执行
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	
		//获取请求的url
		String url = request.getRequestURI();
		//判断url是否是公开地址（实际使用时将公开地址配置到配置文件中)
		//这里公开地址就是登陆提交的地址
		
		//从配置文件中取出匿名访问url
		
		List<String> open_urls = ResourcesUtil.gekeyList("anonymousURL");
		//遍历公开地址，如果是公开地址则放行
			for(String open_url:open_urls) {
				if(url.indexOf(open_url)>=0) {
				//如果是公开地址则放行
				return true;
			}
		}
		
			
			//从配置文件中获取公共访问地址
			List<String> common_urls = ResourcesUtil.gekeyList("commonURL");
			//遍历公用地址，如果是公用地址则放行
			for(String common_url : common_urls) {
				if(url.indexOf(common_url)>=0) {
					//如果是公开地址则放行
					return true;
				}
			}
			
			//获取session
			//判断session
			HttpSession session = request.getSession();
			//从session中取出用户身份信息
			ActiveUser activeUser = (ActiveUser) session.getAttribute("activeUser");
			
			//从session中取出权限范围的url
			List<SysPermission> permissions = activeUser.getPermissions();
			for(SysPermission sysPermission:permissions) {
				//权限url
				String permission_url = sysPermission.getUrl();
				if(url.indexOf(permission_url)>=0) {
					//如果是权限url地址则放行
					return true;
				}
			}
		
		
		
		
		//执行到这里拦截，跳转到无权访问的提示页面
		request.getRequestDispatcher("/WEB-INF/jsp/refuse.jsp").forward(request, response);
		
		
		//return false表示拦截，不向下执行
		//return true表示放行
		
		
		return false;
	}

	
	//进入Handler方法之后，返回modelAndView之前执行
	//应用场景从modelAndView出发：将公用的模型数据（比如菜单导航）在这里传到视图，也可以在这统一指定视图
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		
		System.out.println("HandlerInterceptor1.......postHandle");
	}

	
	//执行Handler完成执行此方法
	//应用场景：统一异常处理，统一日志处理
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
		System.out.println("HandlerInterceptor1.......afterCompletion");
		
	}

}
