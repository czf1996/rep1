package com.czf.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.czf.domain.Admi;

public class AdmiLoginInterceptor  implements HandlerInterceptor{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
		// TODO Auto-generated method stub
		// 获取uri
		String uri = request.getRequestURI();
		// 除了AdmiLogin.jsp可以通过/adminlogin(控制器方法映射)公开访问，其他的都进行拦截
		if (uri.indexOf("/admilogin") != -1 || uri.indexOf("/before")!= -1) {
			return true;
		}
		// 获取session
		HttpSession session = request.getSession();
		Admi admi = (Admi) session.getAttribute("admi");
		// 如果登录过了就放行,
		if (admi != null) {
			return true;
		}
		// 不符合就并重定向到登录界面
		//解决frameset框架重定向只有其中一个框架跳转问题,实现整个框架跳转
		response.getWriter().println("<script>top.document.location='AdmiLogin.jsp'</script>");
		/*response.sendRedirect(request.getContextPath()+"/AdmiLogin.jsp");*/
		return false;
	}

		


	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object o, ModelAndView mv)
			throws Exception {
		// TODO Auto-generated method stub
		
}
}