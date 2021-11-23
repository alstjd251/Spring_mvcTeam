package co.sp.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import co.sp.beans.Member_s;

public class AdminInterceptor implements HandlerInterceptor {

	private Member_s loginBean;
	
	public AdminInterceptor(Member_s loginBean) {
		this.loginBean = loginBean;
	}
	
	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		String contextPath = request.getContextPath();
		String grade = loginBean.getMem_grade();
		if(grade == null) {
			grade = "1";
		}
		if(!grade.equals("0")) {
			response.sendRedirect(contextPath + "/admin_limit");
			return false;
		}
		return true;
	}
}
