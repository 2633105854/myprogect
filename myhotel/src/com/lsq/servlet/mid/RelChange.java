package com.lsq.servlet.mid;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lsq.dao.ClientDao;
import com.lsq.mode.Client;

public class RelChange extends HttpServlet {

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
		HttpSession ses=request.getSession();
		Client  myc=(Client) ses.getAttribute("client");
		int id=myc.getId();
		
	
		 String relname= request.getParameter("relname");
         String card= request.getParameter("card");
         String phone= request.getParameter("phone");
     
     	ClientDao  dao=new ClientDao();
    	Boolean boo=dao.RelChange(id, relname, card, phone);
    	if(boo)
    	{
    		 response.getWriter().print("<script>alert('success');</script>");
 			
 			 response.setHeader("refresh","0;URL=/myhotel/lsq/mymid/mymid.html");
    		// response.sendRedirect("/myhotel/lsq/mymid/mymid.html");
    	}
    	else
    	{
    		 response.getWriter().print("<script>alert('error');</script>");
    		// response.setHeader("refresh","0;URL=/myhotel/lsq/mymid/mymid.html");
    		 response.sendRedirect("/myhotel/lsq/my_error.html");
    	}
		
         System.out.println(relname+card+phone+"-------RelChange–≈œ¢");
         
         
         
         
        // Client c=new Client(id, myc.get, password, realname, card, phone, vip)
         
		
		
		
		
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
