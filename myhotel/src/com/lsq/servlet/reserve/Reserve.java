package com.lsq.servlet.reserve;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lsq.dao.MyOrderDao;
import com.lsq.mode.Client;
import com.lsq.mode.MyOrder;

public class Reserve extends HttpServlet {

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
            Client myc=   (Client)request.getSession().getAttribute("client");  
                
            int cl_id=myc.getId();
            int r_id=(Integer) (request.getSession().getAttribute("res_r_id"));
          
            String time =request.getParameter("time");
            String days=request.getParameter("days");
            
          //  System.out.println(r_id+""+cl_id+""+time+""+days);
            
            MyOrderDao myorderdao=new MyOrderDao();
         boolean boo=   myorderdao.insertModer(new MyOrder(0, cl_id, r_id, time, days,"Î´¸¶"));
          if(boo=true)
          {
        	  response.getWriter().print("<script>alert('success.');</script>");
 		      response.setHeader("refresh","0;URL=/myhotel/lsq/index.html");
          }
          else
          {
        	  response.getWriter().print("<script>alert('default.');</script>");
 		      response.setHeader("refresh","0;URL=/myhotel/lsq/index.html");
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
