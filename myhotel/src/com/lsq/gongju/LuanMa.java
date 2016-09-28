package com.lsq.gongju;


import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class LuanMa extends HttpServletRequestWrapper{
	
	private boolean  flag=true;
	private HttpServletRequest request;

	public LuanMa(HttpServletRequest request) {
		super(request);
		
		this.request=request;
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String getParameter(String name) {
		// TODO Auto-generated method stub
	  if(getParameterMap().get(name)==null)
	  {
		  return null;
	  }
		return 	getParameterMap().get(name)[0];
	}
	@Override
	public String[] getParameterValues(String name) {
		// TODO Auto-generated method stub
		if(getParameterMap()==null)
		{
			return null;
		}
		
		return getParameterMap().get(name);
	}
	
	@Override
	public Map<String, String[]> getParameterMap() {
		// TODO Auto-generated method stub
		 
		
		
		try{
		if(request.getMethod().equalsIgnoreCase("post"))
		{
				request.setCharacterEncoding("utf-8");
				System.out.println("post---------------------");
				return request.getParameterMap();
		}
		else
		   {
			if(flag){
		     flag=false;
			
			Map<String,String[]> map= request.getParameterMap();
			 for(String str1:map.keySet())
			 {
				String[] strs= map.get(str1);
				for(int i=0;i<strs.length;i++)
				{
					//String string=null;
					strs[i]=new String(strs[i].getBytes("iso8859-1"),"utf-8");
					//strs[i]=string;
				}
			 }
			 return map;
			}
			 
		   }
		}
		catch(Exception e)
		{
			
		}
		return super.getParameterMap();
	}
}
