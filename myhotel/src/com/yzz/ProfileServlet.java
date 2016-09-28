package com.yzz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProfileServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String e_id = request.getParameter("e_id");
			System.out.println(e_id);
//			request.setAttribute(e_id, e_id);
//			JDBCLog jdbcLog = new JDBCLog();
//			employee user = new employee(); 
//jdbcLog.getconn();
//employee readprofile = jdbcLog.readprofile(e_id);
//user = readprofile;
//System.out.println(readprofile.gete_email());
//jdbcLog.closeMethod();
			System.out.println("ok");
			
			response.sendRedirect("http://localhost:8080/myhotel/yzz/user-profile.jsp?e_id="+e_id+"");
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doGet(request, response);
	
	}

}
