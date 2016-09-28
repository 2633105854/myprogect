package com.yzz;
import java.sql.*; 

public class JDBCLog {
public static Statement smt;
public static ResultSet rs;
public static Connection conn;
public static String url;
public static String username;
public static String password;

public static void getconn(){
	
	try {
		Class.forName("org.gjt.mm.mysql.Driver");
//	String url = "jdbc:mysql://localhost:3306/hotel_manager?useUnicode=true&characterEncoding=utf8";
		url = "jdbc:mysql://localhost:3306/myhotel";
		conn = DriverManager.getConnection(url, "root", "xjing.521");
		smt = conn.createStatement();
		System.out.println("success");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}

public static void reademployee() {
	int i = 0;
	employeeinFormation();

	try {
		while (rs.next()) {
							System.out.println(rs.getString("e_email"));
//			object[i][1] = rs.getString("e_name");
//			object[i][2] = rs.getString("e_sex");
//			object[i][0] = rs.getString("e_id");
//			object[i][3] = rs.getString("e_phone");
//			object[i][4] = rs.getString("e_email");

			i++;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

}
public static void roombooking(){
	try {
		String sqlkyd = "update room set yuding='V'  where roomnum=101";
		PreparedStatement pskyd = conn.prepareStatement(sqlkyd);

		pskyd.executeUpdate();

	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public static void deleteuser(String e_id){
	try {
//		rs =smt.executeQuery("delete from employee where e_id='"+e_id+"'");
		String sqlkyd = "delete from employee where e_id='"+e_id+"'";
		PreparedStatement pskyd = conn.prepareStatement(sqlkyd);

		pskyd.executeUpdate();
		System.out.println("ok!!!1");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public static void employeeinFormation() {
	try {
		rs =smt.executeQuery("select *from employee;");
//		while(rs.next()){
//			String roomnum = rs.getString("roomnum");
//			String roomtype = 
//			System.out.println(str);
//		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public static employee readprofile(String e_id) {
	employee user=new employee();
	try {
//		String e_id = "4";
		rs =smt.executeQuery("select *from employee where e_id='"+e_id+"';");
//		while(rs.next()){
		rs.next();
		user.sete_id(rs.getString("e_id"));
		user.sete_name(rs.getString("e_name"));
		user.sete_sex(rs.getString("e_sex"));
		user.sete_phone(rs.getString("e_phone"));
		user.sete_email(rs.getString("e_email"));
			String e_name = rs.getString("e_name");
//			String roomtype = 
			System.out.println(e_name);
			System.out.println(user.gete_name());
//		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
//	employee user;
	return user;
}
public static void userLog()  {
	try {
		rs =	smt.executeQuery("select *from user_log;");
		rs.next();
		username = rs.getString("username");
		password = rs.getString("password");
		System.out.println("success2");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}

public static void closeMethod() {
	try {
		System.out.println("success3");
		if (rs!=null) {
			rs.close();
		}
		if (smt!=null) {
			smt.close();
		}
		if (conn!=null) {
			conn.close();
		}
			
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public static void insertemployee(String e_name,String sex,String e_phone,String e_email){
//public static void insertemployee(){
	try {
//		String sqlkyd = "insert into employee value(7,'ew','we','ew','e')";
//		int e_id = 10;
//		String e_name = PersonlServlet
		String sqlkyd = "insert into employee values(default,'"+e_name+"','"+sex+"','"+e_phone+"','"+e_email+"')";
//		String sqlkyd = "insert into employee values(default,'澹ぇ澶�,5,6,7)";
		PreparedStatement pskyd = conn.prepareStatement(sqlkyd);

		pskyd.executeUpdate();
		System.out.println("ok!!!1");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
//public static void editPerson(String e_id,String e_name,String sex,String e_phone,String e_email){
	public static void editPerson(String e_id,String e_name,String e_sex,String e_phone,String e_email){
		
		
		try {
//			
			String sqlkyd = "update employee set e_name='"+e_name+"',e_sex='"+e_sex+"',e_phone='"+e_phone+"',e_email='"+e_email+"' where e_id='"+e_id+"'";
			PreparedStatement pskyd = conn.prepareStatement(sqlkyd);

			pskyd.executeUpdate();
			System.out.println("ok!!!1");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
public static void main(String[] args)  {
	getconn();
//	reademployee();
//	readprofile();
//	insertemployee();
	//editPerson();
	closeMethod();
}
}
