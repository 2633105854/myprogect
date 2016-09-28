package com.lsq.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.lsq.connection.MyConnection;
import com.lsq.mode.MyOrder;

public class MyOrderDao {

	Connection conn;
	public MyOrderDao() {
		super();
		conn=MyConnection.GetConnection();
		// TODO Auto-generated constructor stub
	}
	public boolean delModerById(int or_id)
	{
		boolean bo=false;
		String sql="delete from myorder where or_id="+or_id+"";
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
	public boolean insertModer(MyOrder my)
	{
		String sql="insert into myorder values(default,"+my.getCl_id()+","+my.getR_id()+",'"+my.getStart_time()+"','"+my.getDays()+"','Î´¸¶')";
		try {
		PreparedStatement prs=	conn.prepareStatement(sql);
	     int num=prs.executeUpdate();
	     if(num>0)
	     {
	    	 return true;
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
		return false;
		
	}
	public MyOrder findModeByid(int or_id)
	{   
		String sql="select * from myorder where or_id ="+or_id+"";
		try {
	PreparedStatement   ps=		conn.prepareStatement(sql);
	  ResultSet rs=    ps.executeQuery();
	  if(rs.last())
	  {
		  MyOrder my=new MyOrder(or_id, rs.getInt(2), rs.getInt(3), rs.getString(4),rs.getString(5), rs.getString(6));
		  return my;
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
	public ArrayList<MyOrder> findOrderByIdNO(int cl_id,String state)
	{
		ArrayList<MyOrder> list=new ArrayList<MyOrder>();
		String sql="select * from myorder where cl_id="+cl_id+" and or_state='"+state+"'";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
		    ResultSet rs=	ps.executeQuery();
		    while(rs.next())
		    {
		    	MyOrder mo=new MyOrder(rs.getInt(1), rs.getInt(2), rs.getInt(3),rs.getString(4),rs.getString(5),rs.getString(6));
		    	list.add(mo);
		    	
		    }
			if(list.size()>0)
			{
				return list;
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
		return list;
	   	
	}
	
	public ArrayList<MyOrder> findOrderById(int cl_id)
	{
		ArrayList<MyOrder> list=new ArrayList<MyOrder>();
		String sql="select * from myorder where cl_id="+cl_id+"";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
		    ResultSet rs=	ps.executeQuery();
		    while(rs.next())
		    {
		    	MyOrder mo=new MyOrder(rs.getInt(1), rs.getInt(2), rs.getInt(3),rs.getString(4),rs.getString(5),rs.getString(6));
		    	list.add(mo);
		    	
		    }
			if(list.size()>0)
			{
				return list;
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
		return list;
	   	
	}
	
	
	
	public boolean orderChange(int or_id,int r_id,String data,String days)
	{
		String sql="update myorder set r_id="+r_id+",or_start_time='"+data+"',or_days='"+days+"' where or_id="+or_id+" ";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
		   int i=	ps.executeUpdate();
		   if(i>0)
		   {
			   return true;
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
		return false;
		
	}
	
	public static void main(String[] args) {
//		ArrayList<MyOrder> mylist=new ArrayList<MyOrder>();
//	   mylist=new MyOrderDao().findOrderById(3);
//	   for(MyOrder myorder:mylist)
//	   {
//		   System.out.println(myorder.toString());
//	   }
//	System.out.println(	new MyOrderDao().findModeByid(4));
	//System.out.println(	new MyOrderDao().insertModer(new MyOrder(0, 1, 1, "111", "2", "ss")));
		System.out.println(new MyOrderDao().delModerById(21));
	}
       
}
