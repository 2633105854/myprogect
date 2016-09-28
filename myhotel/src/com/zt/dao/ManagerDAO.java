package com.zt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.zt.manager.Manager;
import com.zt.util.DBHelper;

public class ManagerDAO {
	public boolean addManager(Manager mag2){
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			conn=DBHelper.getConnection();
			String sql="insert into manager values(null,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, mag2.getMag_name());
			ps.setString(2, mag2.getMag_password());
			int num = ps.executeUpdate();
			if(num>0){
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean LoginManager(Manager mag){
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		boolean flag=false;
		try{
			conn=DBHelper.getConnection();
			String sql="select * from manager where mag_name=? and mag_password=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, mag.getMag_name());
			ps.setString(2, mag.getMag_password());
			rs=ps.executeQuery();
			if(rs.next()){
				flag=true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null){
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(ps!=null){
				try {
					ps.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return flag;
	}
}
