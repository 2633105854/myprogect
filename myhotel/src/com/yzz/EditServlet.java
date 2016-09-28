package com.yzz;
import com.yzz.JDBCLog;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditServlet extends HttpServlet {

	private static Connection conn;
	JDBCLog jdbcLog = new JDBCLog();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");//鍙兘瑙ｅ喅post鏂瑰紡鐨勪贡鐮�
		String e_name = request.getParameter("e_name");
		String sex = request.getParameter("sex");
		String e_id = request.getParameter("e_id");
		String e_phone = request.getParameter("e_phone");
		String e_email = request.getParameter("e_email");

//		e_name = new String(e_name.getBytes("iso-8859-1"),"UTF-8");
		System.out.println(e_name);
		System.out.println(sex);
		System.out.println(e_id);
		System.out.println(e_phone);
		System.out.println(e_email);
//		test1(request);
		
		jdbcLog.getconn();
		jdbcLog.editPerson(e_id,e_name,sex,e_phone,e_email);
		jdbcLog.closeMethod();

//		jdbcLog.getconn();
//		jdbcLog.insertemployee();
//		jdbcLog.editPerson(e_name,sex,e_phone,e_email);
		
		response.sendRedirect("http://localhost:8080/myhotel/yzz/user-list.jsp");
//		
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		doGet(request, response);
	}

}
