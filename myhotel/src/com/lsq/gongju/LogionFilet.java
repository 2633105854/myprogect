package com.lsq.gongju;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lsq.mode.Client;

public class LogionFilet implements Filter{

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest  hsr=(HttpServletRequest) request;
		HttpServletResponse hsp=(HttpServletResponse) response;
		
		HttpSession session=hsr.getSession();
		Client c=(Client) session.getAttribute("client");
		if(c==null)
		{
		  hsp.sendRedirect("/myhotel/lsq/error/login.html");
		   
		}
		
		chain.doFilter(request,response);
		
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
