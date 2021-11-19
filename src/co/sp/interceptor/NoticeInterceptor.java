package co.sp.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import co.sp.beans.Member_s;

public class NoticeInterceptor implements HandlerInterceptor {

	private Member_s loginBean;
	
	public NoticeInterceptor(Member_s loginBean) {
		this.loginBean = loginBean;
	}
	
	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		String contextPath = request.getContextPath();
		
		if(loginBean.isMemLogin() == false) {
			response.sendRedirect(contextPath + "/board/limit");
			return false;
		}
		else if(!loginBean.getMem_grade().equals("0")) {
			response.sendRedirect(contextPath + "/board/limit");
			return false;
		}
		return true;
	}
}
