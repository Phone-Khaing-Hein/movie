package com.movie.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter({
	"/admin/genre/*",
	"/admin/movie/*",
	"/admin/payment/*",
	"/admin/suggestion/*",
	"/admin/user/*",
	"/admin/dashboard",
	"/admin/profile",
	"/logout"
})
public class SecurityFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		if(req.getSession().getAttribute("adminUser") == null) {
			resp.sendRedirect(req.getServletContext().getContextPath().concat("/admin/login"));
		}else {
			chain.doFilter(request, response);
		}
	}
}
