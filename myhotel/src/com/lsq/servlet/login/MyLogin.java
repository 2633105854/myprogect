package com.lsq.servlet.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import com.lsq.dao.ClientDao;
import com.lsq.mode.Client;

public class MyLogin extends HttpServlet {

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
		
		 String name= request.getParameter("username");
		 String pass=request.getParameter("password");
		ClientDao dao=new ClientDao();
		boolean bo=false;
		bo=dao.getLogin(new Client(name, pass));
		
		if(bo)
		{
			
			
			response.getWriter().print("" +
					"<script>alert('µÇÂ¼³É¹¦');</script>");
			
			response.setHeader("refresh","0;URL=/myhotel/lsq/index.html");
			//response.sendRedirect("/myhotel/lsq/index.html");
			ClientDao dao1=new ClientDao();
			Client myc=dao1.getClientByNnP(name, pass);
			System.out.println(myc.toString());
		    HttpSession session=request.getSession();
//			System.out.println(c.toString());
			session.setAttribute("client", myc);
			
		}
		else
		{
			System.out.println("======shibai");
			
			
			response.getWriter().print("" +
					"<script>alert('µÇÂ¼Ê§°Ü');</script>");
			response.setHeader("refresh","0;URL=/myhotel/lsq/login/login.html");
			//response.sendRedirect("/myhotel/lsq/login/login.html");
			
		}
		
		//Client c =new Client(name, password, realname, card, phone, vip);
		//dao.getLogin(c );

		 
		  
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
