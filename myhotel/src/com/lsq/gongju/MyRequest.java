package com.lsq.gongju;

import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class MyRequest extends HttpServletRequestWrapper{
	HttpServletRequest  request1;
	boolean flag=true;

	public MyRequest(HttpServletRequest request) {
		super(request);
		// TODO Auto-generated constructor stub
		this.request1=request;
	}
	
	@Override
	public String getParameter(String name) {
		// TODO Auto-generated method stub
		if(getParameterMap().get(name)==null)
		{
			return null;
		}
		return getParameterMap().get(name)[0];
	}
	@Override
	public String[] getParameterValues(String name) {
		if(getParameterValues(name)==null)
		{
			return null;
		}
		// TODO Auto-generated method stub
		return getParameterValues(name);
	}
	@Override
	public Map<String,String[]> getParameterMap() {
		// TODO Auto-generated method stub
		if(flag)
		{
			flag=false;
		try{
		if(request1.getMethod().equalsIgnoreCase("post"))
		  {
			request1.setCharacterEncoding("utf-8");
			return request1.getParameterMap();
		  }
		else
		{
			Map<String,String[]> map=request1.getParameterMap(); 
			   for(String str:map.keySet())
			   {
				  String[] strs= map.get(str);
				  for(int i=0;i<strs.length;i++)
				  {
					 strs[i]=new String(strs[i].getBytes("iso8859-1"),"utf-8");
				  }
			   }
			  return map;
		}
		
		}
		catch(Exception e)
		{
		
		}
		}
		return super.getParameterMap();
		
	}

}
