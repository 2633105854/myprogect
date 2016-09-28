package com.lsq.servlet.mid;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lsq.dao.MyOrderDao;
import com.lsq.dao.RoomDao;
import com.lsq.mode.Room;

public class OrderChange extends HttpServlet {

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

		     int or_id =Integer.parseInt(request.getParameter("or_id"));
		     String time =request.getParameter("time");
		     String days=request.getParameter("days");
		     int rt_id=Integer.parseInt(request.getParameter("rt_id"));
		     MyOrderDao dao=new MyOrderDao();
		    // dao.orderChange(or_id, r_id, data, days);
		    RoomDao roomdao=new RoomDao();
		      Room room= roomdao.findRoomByRtId(rt_id);
		         if(room==null)
		         {
		        	  response.getWriter().print("<script>alert('This type of room is empty.');</script>");
		        	  response.setHeader("refresh","0;URL=/myhotel/lsq/mymid/mymid.html");
		        	  //response.sendRedirect("/myhotel/lsq/mymid/mymid.html");
		         }
		         else{
		      int r_id=room.getR_id();
		    boolean bo=  dao.orderChange(or_id, r_id, time, days);
		     
		    if(bo)
		    {
		    	 response.getWriter().print("<script>alert('success');</script>");
		    	 response.setHeader("refresh","0;URL=/myhotel/lsq/mymid/mymid.html");
		    }
		    
		//     System.out.println(or_id+""+time+""+days+""+rt_id);
		    // response.sendRedirect("/myhotel/lsq/mymid/mymid.html");
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
