package com.lsq.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.lsq.connection.MyConnection;
import com.lsq.mode.Room;

public class RoomDao {
	Connection conn;

	public RoomDao() {
		super();
		conn=MyConnection.GetConnection();
		// TODO Auto-generated constructor stub
	}
	public boolean insertRoom(Room ro)
	{
		
		String sql="insert into room values(default,'"+ro.getR_num()+"',"+ro.getRt_id()+",'"+ro.getState()+"')";
		try {
			PreparedStatement prs=conn.prepareStatement(sql);
			   int num= prs.executeUpdate();
			   if(num>0)
			   {
				   return true;
			   }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return false;
		
	}
	
	public ArrayList<Room> finRoomlist(String r_num,int rt_id,String state)
	{
		ArrayList<Room> list=new ArrayList<Room>();
		String sql="";
		if(rt_id==-1)
		{
			sql="select * from room where r_num like '%"+r_num+"%'  and r_state like '%"+state+"%'";
		}
		else
		{
		sql="select * from room where r_num like '%"+r_num+"%' and rt_id like "+rt_id+" and r_state like '%"+state+"%'";
		}
		try {
			PreparedStatement prs=conn.prepareStatement(sql);
		    ResultSet res=prs.executeQuery();
		    while(res.next())
		    {
		    	Room rom=new Room(res.getInt(1),res.getString(2), res.getInt(3), res.getString(4));
		    	list.add(rom);
		    }
		    return list;
		
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
		
	}
	
	public Room findRoomByRtId(int rt_id)
	{
		String sql="select * from room where rt_id="+rt_id+" and r_state='δס'";
		try {
			
		PreparedStatement ps=	conn.prepareStatement(sql);
		 ResultSet rs=  ps.executeQuery();
		 if(rs.last())
		 {
			 Room ro=new Room(rs.getInt(1),rs.getString(2), rs.getInt(3), rs.getString(4));
			return ro;
		 }
		 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return null;
		
	}
	public Room findRoomById(int id)
	{
		
		String sql="select * from room where r_id="+id+"";
		try {
			
		PreparedStatement ps=	conn.prepareStatement(sql);
		 ResultSet rs=  ps.executeQuery();
		 if(rs.last())
		 {
			 Room ro=new Room(id,rs.getString(2), rs.getInt(3), rs.getString(4));
			return ro;
		 }
		 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
		
	}
	
	public boolean updateRoom(Room r)
	{
		boolean bo=false;
		   String sql="update room set r_num ='"+r.getR_num()+"',rt_id="+r.getRt_id()+", r_state='"+r.getState()+"' where r_id ="+r.getR_id()+"";
		try {
			PreparedStatement prs=conn.prepareStatement(sql);
			int num =prs.executeUpdate();
			if(num>0)
			{
				bo=true;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return bo;
		
	}
	
	
	public static void main(String[] args) {
	//	System.out.println(new RoomDao().findRoomByRtId(2));
		String a=null,b=null;
		ArrayList<Room> li =new RoomDao().finRoomlist("1", -1, "");
		for(Room rom:li)
		{
			System.out.println(rom.toString());
		}
	}

}
