package com.lsq.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.lsq.connection.MyConnection;
import com.lsq.mode.RoomType;

public class RoomTypeDao {

	Connection conn=null;
	public RoomTypeDao() {
		super();
		// TODO Auto-generated constructor stub
		conn=MyConnection.GetConnection();
	}
	public boolean addNumById(int rt_id)
	{
		boolean bo=false;
		String sql="update room_type set rt_num=rt_num+1 where rt_id="+rt_id+"";
		try {
		  PreparedStatement ps=conn.prepareStatement(sql);
		  int num=ps.executeUpdate();
		  if(num>0)
		  {
			  bo=true;
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
		return bo;
		
	}
	public boolean delNumById(int rt_id)
	{
		boolean bo=false;
		String sql="update room_type set rt_num=rt_num-1 where rt_id="+rt_id+"";
		try {
		  PreparedStatement ps=conn.prepareStatement(sql);
		  int num=ps.executeUpdate();
		  if(num>0)
		  {
			  bo=true;
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
		return bo;
		
	}
	public String fingTypeById(int rt_id)
	{
		String type="";
		String sql="select * from room_type where rt_id="+rt_id+"";
		try {
		PreparedStatement prs=	conn.prepareStatement(sql);
		  ResultSet rs=prs.executeQuery();
		  if(rs.last())
		  {
			 type= rs.getString(2);
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
		return type;
		
	}
	
	public ArrayList<RoomType> findRoomTypes()
	{
		String sql="select * from room_type";
		ArrayList<RoomType> list=new ArrayList<RoomType>();
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			ResultSet res=  ps.executeQuery();
			while(res.next())
			{
				RoomType roomtype=new RoomType(res.getInt(1), res.getString(2), res.getDouble(3), res.getInt(4));
				list.add(roomtype);
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
		
		
		return list;
		
	}
	
	public RoomType findModelById(int id)
	{
		String sql="select * from room_type where rt_id="+id+"";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet res=  ps.executeQuery();
			if(res.last())
			{
			    RoomType rt=new RoomType(id,res.getString(2), res.getDouble(3), res.getInt(4));
			    return rt;
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
		
	}
	
	public boolean changeRoom(RoomType rt)
	{
		boolean bo=false;
		String sql="update room_type set rt_type='"+rt.getType()+"',rt_price="+rt.getPrice()+",rt_num="+rt.getNum()+" where rt_id="+rt.getId()+"";
		try {
		    
			PreparedStatement prs=conn.prepareStatement(sql);
		    int num=prs.executeUpdate();
		    if(num>0)
		    {
		    	bo=true;
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
		
		return bo;
		
	}
   public static void main(String[] args) {
	 RoomTypeDao dao=new RoomTypeDao();
//	 System.out.println(dao.findModelById(8));
//	 ArrayList<RoomType> li=new ArrayList<RoomType>();
//	 li=dao.findRoomTypes();
//	 for(RoomType roo:li)
//	 {
//		 System.out.println(roo.toString());
//	 }
	 //dao.changeRoom();
	 
	 dao.delNumById(4);
	 
  }
}
