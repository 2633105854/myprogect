package com.zt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.zt.manager.Client;
import com.zt.util.DBHelper;

public class ClientDAO {
	public ArrayList<Client> selectClient(){
		ArrayList<Client> list = new ArrayList<Client>();
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			conn=DBHelper.getConnection();
			String sql="select * from cilent";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				Client cl=new Client();
				cl.setCl_id(rs.getInt("cl_id"));
				cl.setCl_name(rs.getString("cl_name"));
				cl.setCl_password(rs.getString("cl_password"));
				cl.setCl_realname(rs.getString("cl_realname"));
				cl.setCl_card(rs.getString("cl_card"));
				cl.setCl_phone(rs.getString("cl_phone"));
				cl.setCl_vip(rs.getString("cl_vip"));
				list.add(cl);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}finally{
			
		}
	}
}
