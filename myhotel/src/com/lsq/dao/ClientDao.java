package com.lsq.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.lsq.connection.MyConnection;
import com.lsq.mode.Client;
import com.lsq.servlet.login.MyLogin;

public class ClientDao {

	Connection conn=null;
	public ClientDao() {
		super();
		conn=MyConnection.GetConnection();
		
		// TODO Auto-generated constructor stub
	}
	public Client getClientById(int id)
	{
		Client myc=null;
		String sql="select * from client where cl_id='"+id+"'";
		    try {
				PreparedStatement ps =conn.prepareStatement(sql);
				ResultSet    rs =ps.executeQuery();
				
				while(rs.next())
				{
					   myc=new Client(rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5), rs.getString(6), rs.getString(7));
					   return myc;
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
		return null;
		
	}
	
	
	public Client getClientByNnP(String name,String pass)
	{
		Client myc=null;
		String sql="select * from client where cl_name='"+name+"' and cl_password='"+pass+"' ";
		  try {
			  PreparedStatement ps=conn.prepareStatement(sql);
			  ResultSet res=ps.executeQuery();
			  while(res.next())
			  {
			  myc=new Client(res.getInt(1), name, pass, res.getString(4), res.getString(5),res.getString(6), res.getString(7));
			  }
			  return myc;
			  
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
		return null;
	}
	
	public boolean getLogin(Client c)
	{
		boolean bo=false;
		String name=c.getName();
		String pass=c.getPassword();
		String sql="select * from client where cl_name='"+name+"' and cl_password='"+pass+"' ";
		try {
		         PreparedStatement prs=	conn.prepareStatement(sql);
	             ResultSet  rs=    prs.executeQuery();	
	             if(rs.last())
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
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return bo;
		
	}
	
	
	public void setInsert(Client c)
	{
		
		try {
			
			
			String sql="insert into client values(default,'"+c.getName()+"','"+c.getPassword()+"'," +
					"'"+c.getRealname()+"','"+c.getCard()+"','"+c.getPhone()+"',null)";
			PreparedStatement ps=conn.prepareStatement(sql);
	        ps.executeUpdate();
			
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
	}
	public static void main(String[] args) {
		//System.out.println(new ClientDao().getLogin(new Client("lsq", "xjing.521")));
		//new ClientDao().setInsert(new Client("li", "xjing.521", "ÀîÊ¿Èº", "123", "123", ""));
		
//		Client c=new ClientDao().getClientByNnP("xjing", "xjing.521");
//		System.out.println(c.toString());
//		boolean b=new ClientDao().UnpChange(4, "xjing", "xjing.522");
//		System.out.println(b);
		
//		Client myc=new  ClientDao().getClientById(3);
//		System.out.println(myc.toString());
		
		ClientDao dao=new ClientDao();
	;
		System.out.println(	dao.RelChange(3, "yin", "yin", "yin"));
	}
	
	public boolean RelChange(int id,String relname,String card,String phone)
	{
		String sql= "update client set cl_realname='"+relname+"', cl_card='"+card+"',cl_phone='"+phone+"' where cl_id="+id+"";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			int p=ps.executeUpdate();
			if(p>0)
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
	
	public boolean UnpChange(int id,String name,String pass)
	{
		
		String sql="update client set cl_name='"+name+"',cl_password='"+pass+"' where cl_id="+id+"";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			int p=ps.executeUpdate();
			if(p>0)
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

}
