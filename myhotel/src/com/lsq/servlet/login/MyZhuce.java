package com.lsq.servlet.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lsq.dao.ClientDao;
import com.lsq.mode.Client;

public class MyZhuce extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		 System.out.println("到这里了");
		 String name=request.getParameter("username");
         String pass=request.getParameter("password");
         String realname=request.getParameter("realname");
         String card=request.getParameter("card");
         String phone=request.getParameter("phone");
         System.out.println(name+pass+realname+card+phone);
         
         ClientDao dao=new ClientDao();
         Client c=new Client(name, pass, realname, card, phone, "");
		 dao.setInsert(c);
		 
		 response.getWriter().print("" +
					"<script>alert('成功注册');</script>");
			
			response.setHeader("refresh","0;URL=/myhotel/lsq/login/login.html");
		 //response.sendRedirect("/myhotel/lsq/login/login.html");
		
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
               this.doGet(request, response);
	}

}
