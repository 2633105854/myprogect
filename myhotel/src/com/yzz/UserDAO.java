package com.yzz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.yzz.employee;
import com.zt.util.DBHelper;

public class UserDAO {
	public ArrayList<employee> getUser(){
		ArrayList<employee> list = new ArrayList<employee>();
		Connection conn=null;
		PreparedStatement ps =null;
		ResultSet rs=null;
		try{
			conn=DBHelper.getConnection();
			String sql = "select * from employee";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				employee user=new employee();
//				System.out.println(rs.getString("e_email"));
				user.sete_id(rs.getString("e_id"));
				user.sete_name(rs.getString("e_name"));
				user.sete_sex(rs.getString("e_sex"));
				user.sete_phone(rs.getString("e_phone"));
				user.sete_email(rs.getString("e_email"));
//				
				list.add(user);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}finally{
			
		}
	}
//	public static void main(String[] args) {
////		ArrayList<Order> getOrder();
//	}
}
