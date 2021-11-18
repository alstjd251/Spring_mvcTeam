package co.sp.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import co.sp.beans.Member_s;

public class LoginCheckInterceptor implements HandlerInterceptor {

	private Member_s loginBean;
	
	public LoginCheckInterceptor(Member_s loginBean) {
		this.loginBean = loginBean;
	}
	
	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
	
		if(loginBean.isMemLogin() == false) {
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/member/not_login");
			return false;
		}
		return true;
	}
	
}
