package com.yzz;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class PersonlServlet extends HttpServlet {

	private static Connection conn;
	JDBCLog jdbcLog = new JDBCLog();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//鍛婅瘔鏈嶅姟鍣ㄨ浣跨敤浠�箞缂栫爜锛屾敞锛氭祻瑙堝櫒浣跨敤鐨勬槸浠�箞缂栫爜浼犺繃鏉ョ殑灏辨槸浠�箞缂栫爜 
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
//		jdbcLog.insertemployee();
		jdbcLog.insertemployee(e_name,sex,e_phone,e_email);
//		
//		jdbcLog.getconn();
//		try {
////			String sqlkyd = "insert into employee value(default,'"+e_name+"','"+sex+"','"+e_phone+"','"+e_email+"')";
//			String sqlkyd = "insert into employee values(2,4,5,6,7)";
//			PreparedStatement pskyd = conn.prepareStatement(sqlkyd);
//
//			pskyd.executeUpdate();
//			System.out.println("ok!!!!!!");
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		jdbcLog.closeMethod();
		//request.getRequestDispatcher("../yzz/user-list.jsp").forward(request, response);
		response.sendRedirect("http://localhost:8080/myhotel/yzz/user-list.jsp");
		
	}
	

//	private void test1(HttpServletRequest request) throws UnsupportedEncodingException {
//		//閼惧嘲褰囩悰銊ュ礋閺佺増宓�
//		
//		//閺嶈宓佺悰銊ュ礋娑撶挾ame鐏炵偞锟介惃鍕倳閿涘矁骞忛崣鏉lue鐏炵偞锟介惃鍕拷閺傝纭�
//		String e_name = request.getParameter("e_name");
//		String sex = request.getParameter("sex");
//		String e_id = request.getParameter("e_id");
//		String e_phone = request.getParameter("e_phone");
//		String e_email = request.getParameter("e_email");
//
//		jdbcLog.getconn();
//		insertemployee();
//		jdbcLog.closeMethod();
//		
////		e_name = new String(e_name.getBytes("iso-8859-1"),"UTF-8");
//		System.out.println(e_name);
//		System.out.println(sex);
//		System.out.println(e_id);
//		System.out.println(e_phone);
//		System.out.println(e_email);
////		for (int i = 0;hobbys!=null && i < hobbys.length; i++) {
////			System.out.print(hobbys[i]+"\t");
////		}
//		System.out.println();
//		
//	}
//	public static void insertemployee(){
//		JDBCLog.getconn();
//		try {
//			String sqlkyd = "insert into employee value(default,'"+e_name+"','"++"','"++"','"++"')";
//			PreparedStatement pskyd = conn.prepareStatement(sqlkyd);
//
//			pskyd.executeUpdate();
//
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
	

}
