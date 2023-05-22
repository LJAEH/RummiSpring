package org.spring.rummi.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebFilter(filterName="initFilter", urlPatterns = "/*")
public class InitFilter extends HttpFilter implements Filter{
	
	private Logger logger = LoggerFactory.getLogger(InitFilter.class);

	@Override
	public void init(FilterConfig fConfig) throws ServletException {
		logger.info("초기화 필터 생성");
	}
	
	@Override
	public void destroy() {
		logger.info("초기화 필터 파괴");
	}
	
	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		
		// 요청/응답 UTF-8 인코딩 고정
		req.setCharacterEncoding("UTF-8");
		res.setCharacterEncoding("UTF-8");
		
		// 최상위 주소 contextPath 로 설정
		ServletContext application = req.getServletContext();
		String contextPath =  ( (HttpServletRequest)req ).getContextPath();
		application.setAttribute("contextPath", contextPath);
		chain.doFilter(req, res);
	}
	
}
