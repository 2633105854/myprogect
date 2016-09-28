package com.ht.servlet.change;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lsq.dao.RoomTypeDao;
import com.lsq.mode.RoomType;

public class RoomTypeChange extends HttpServlet {

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
                String rt_id =request.getParameter("rt_id");
                String rt_type=request.getParameter("rt_type");
                String rt_price=request.getParameter("rt_price");
                String rt_num=request.getParameter("rt_num");
                RoomTypeDao rtdao=new RoomTypeDao();
                
                int id= Integer.parseInt(rt_id);
                Double price=Double.parseDouble(rt_price);
                int num=Integer.parseInt(rt_num);
                
               RoomType rt=new RoomType(id,rt_type,price,num);
               
               if(rtdao.changeRoom(rt))
               {
            	      response.getWriter().print("<script>alert('SUCCESS.');</script>");
		        	  response.setHeader("refresh","0;URL=/myhotel/ht/roomtype_select.jsp");
               }
               else
               {
            	   response.getWriter().print("<script>alert('ERROR.');</script>");
		           response.setHeader("refresh","0;URL=/myhotel/ht/roomtype_select.jsp");   
               }
                
                
                
                
              System.out.println(rt_id+""+rt_type+""+rt_price+""+rt_num);
                
		
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
