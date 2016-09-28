package com.zt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.zt.manager.Order;
import com.zt.util.DBHelper;

public class OrderDAO {
	
	Connection conn=null;
	public OrderDAO() {
		super();
		try {
			conn=DBHelper.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public ArrayList<Order> getOrder(){
		ArrayList<Order> list = new ArrayList<Order>();
	
		PreparedStatement ps =null;
		ResultSet rs=null;
		try{
			//conn=DBHelper.getConnection();
			String sql = "select * from myorder";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				Order or=new Order();
				or.setOr_id(rs.getInt("or_id"));
				or.setCl_id(rs.getInt("cl_id"));
				or.setR_id(rs.getInt("r_id"));
				or.setOr_start_time(rs.getString("or_start_time"));
				or.setOr_days(rs.getString("or_days"));
				or.setOr_state(rs.getString("or_state"));
				list.add(or);
				
			}
			return list;
			
		}catch(Exception e){
			e.printStackTrace();
			
		}finally{
//			try {
//				conn.close();
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
		}
		return list;
	}
	public boolean delectOrder(int id){
		//Connection conn=null;
		boolean bo=false;
		PreparedStatement ps =null;
		try{
			//conn=DBHelper.getConnection();
			String sql = "delete from myorder where or_id=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			int num=ps.executeUpdate();
			if(num>0)
				return true;
			
		}catch(Exception e){
			e.printStackTrace();
			
		}finally
		{
//			try {
//				conn.close();
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
		}
		return bo;
	}
	
	public boolean updateOrder(Order or,int id){
		PreparedStatement ps=null;
		try{
			String sql="update myorder set cl_id=?,r_id=?,or_start_time=?,or_days=?,or_state=? where or_id=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, or.getCl_id());
			ps.setInt(2, or.getR_id());
			ps.setString(3, or.getOr_start_time());
			ps.setString(4, or.getOr_days());
			ps.setString(5, or.getOr_state());
			ps.setInt(6, id);
			int num = ps.executeUpdate();
			if(num>0){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
//			try {
//				conn.close();
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
		}
		return false;
	}
	
	public ArrayList<Order> selectOrder(String in_or_id,String in_cl_id,String or_state){
		StringBuffer sql = new StringBuffer();
		int or_id = 0;
		int cl_id = 0;
		ArrayList<Order> list =new ArrayList<Order>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		System.out.println(in_or_id);
		System.out.println(in_cl_id);
	
		try{
			sql.append("select * from myorder t where 1=1 ");
			if(in_or_id != null && !("".equals(in_or_id))){
				or_id = Integer.parseInt(in_or_id);
				sql.append(" and t.or_id=" + or_id);
			}
			if(in_cl_id != null && !("".equals(in_cl_id))){
				cl_id = Integer.parseInt(in_cl_id);
				sql.append(" and t.cl_id=" + cl_id);
			}
			if(or_state != null && !("".equals(or_state))){
				sql.append(" and t.or_state like '%" + or_state+"%'" );
			}
//			StringUtils.isNotBlank()
			ps=conn.prepareStatement(sql.toString());
			
			rs = ps.executeQuery();
			while(rs.next()){
				Order or=new Order();
				or.setOr_id(rs.getInt("or_id"));
				or.setCl_id(rs.getInt("cl_id"));
				or.setR_id(rs.getInt("r_id"));
				or.setOr_start_time(rs.getString("or_start_time"));
				or.setOr_days(rs.getString("or_days"));
				or.setOr_state(rs.getString("or_state"));
				list.add(or);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
		}
		return list;
	}
	
	public static void main(String[] args) {
		 ArrayList<Order> selectOrder = new OrderDAO().selectOrder("2", "2", "");
		 System.out.println();
		
	}
}
