package com.zt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.zt.manager.Room;
import com.zt.util.DBHelper;

public class RoomDAO {
	
	public ArrayList<Room> getRoom(){
		ArrayList<Room> list = new ArrayList<Room>();
		Connection conn=null;
		PreparedStatement ps =null;
		ResultSet rs=null;
		try{
			conn=DBHelper.getConnection();
			String sql= "select * from room";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				Room room = new Room();
				room.setR_id(rs.getInt("r_id"));
				room.setR_num(rs.getString("r_num"));
				room.setRt_id(rs.getInt("rt_id"));
				room.setR_state(rs.getString("r_state"));
				list.add(room);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}finally{
			
		}
	}
	
}
