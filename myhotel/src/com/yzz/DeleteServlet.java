package com.yzz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String e_id = request.getParameter("e_id");
		System.out.println(e_id);
		JDBCLog jdbcLog = new JDBCLog();
		jdbcLog.getconn();
		jdbcLog.deleteuser(e_id);
		jdbcLog.closeMethod();
		response.sendRedirect("http://localhost:8080/myhotel/yzz/user-list.jsp");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
doGet(request, response);
	}

}
