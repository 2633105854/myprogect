package com.ht.servlet.select;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lsq.dao.RoomDao;
import com.lsq.dao.RoomTypeDao;
import com.lsq.mode.Room;

public class RoomUpdate extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	       String room_id=  request.getParameter("room_id");
	         int rid=Integer.parseInt(room_id);
	       String room_num=  request.getParameter("room_num");
	       String rt_id=  request.getParameter("rt_id");
	         int rtid=Integer.parseInt(rt_id);
	       String room_state=  request.getParameter("room_state");
	       System.out.println(room_id+room_num+rt_id+room_state);
	       RoomDao roomdao=new RoomDao();
	       
	       //更新处理
	       Room ro=new RoomDao().findRoomById(rid);
	       new RoomTypeDao().delNumById(ro.getRt_id());
	       
	       
	       if(roomdao.updateRoom(new Room(rid, room_num, rtid, room_state)))
	       {
	    	     
	    	      new RoomTypeDao().addNumById(rtid);
	    	      response.getWriter().print("<script>alert('SUCCESS.');</script>");
	        	  response.setHeader("refresh","0;URL=/myhotel/ht/room_solect.jsp");
	       }
	       else
	       {
	    	      response.getWriter().print("<script>alert('error.');</script>");
	        	  response.setHeader("refresh","0;URL=/myhotel/ht/room_solect.jsp");
	       }
	       
	       
		
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
		
	}

}
