package com.lsq.servlet.reserve;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lsq.dao.RoomDao;
import com.lsq.dao.RoomTypeDao;
import com.lsq.mode.Room;

public class SelectRoom extends HttpServlet {

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
           String num=request.getParameter("r_num");
           String state=request.getParameter("r_state");
           int rt_id=Integer.parseInt(request.getParameter("rt_id"));
         System.out.println(num+""+state+""+rt_id);
           if(num==null)
           {
        	   num="";
           }
           if(state==null)
           {
        	   state="";
           }
           
           RoomDao rdao=new RoomDao();
           ArrayList<Room> li = rdao.finRoomlist(num, rt_id, state);
           ArrayList<String> typeli =new ArrayList<String>();
           for(Room room :li)
           {
        	 int id=room.getRt_id();
        	 RoomTypeDao dao=new RoomTypeDao();
        	 String type=dao.fingTypeById(id);
        	 typeli.add(type);
           }
               
           request.getSession().setAttribute("select_romms", li);
           request.getSession().setAttribute("select_romms_types", typeli);
           
           
           
           response.setHeader("refresh","0;URL=/myhotel/lsq/reserve/select_order.jsp");
           
//   		for(Room rom:li)
//   		{
//   			System.out.println(rom.toString());
//   		}
           
		
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
