package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zt.dao.OrderDAO;
import com.zt.manager.Order;

public class OrderServlet extends HttpServlet {

	String action = null;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("myid");
		// HttpSession session = request.getSession();
		// session.setAttribute("or_id", id);
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		if (id == null) {
			response.setContentType("text/html;charset=utf-8");
			request.setCharacterEncoding("utf-8");
			OrderDAO orDao = new OrderDAO();
			String in_or_id = request.getParameter("in_or_id");
			String in_cl_id = request.getParameter("in_cl_id");
			String in_or_state = request.getParameter("in_or_state");
			//System.out.println(in_or_state);
			if ((in_or_id != null || !"".equals(in_or_id)) || in_cl_id != null
					|| in_or_state != null) {
				List<Order> list = orDao.selectOrder(in_or_id, in_cl_id,
						in_or_state);
				request.setAttribute("list", list);
				request.getRequestDispatcher("zt/order1.jsp").forward(request,
						response);
				return;
			} 
				List<Order> list = orDao.getOrder();
				request.setAttribute("list", list);
				request.getRequestDispatcher("zt/order1.jsp").forward(request,
						response);

			
		} else {
			request.setAttribute("osor_id", id);
			int or_id = Integer.parseInt(id);
			System.out.println(or_id);

			OrderDAO orDao1 = new OrderDAO();
			orDao1.delectOrder(or_id);
			List<Order> list = orDao1.getOrder();
			request.setAttribute("list", list);
			request.getRequestDispatcher("zt/order1.jsp").forward(request,
					response);
		}
	}

	// if(request.getParameter("action")!=null){
	// this.action=request.getParameter("action");
	// if(action.equals("delectOrder")){
	// if(delectToOrder(request,response)){
	// request.getRequestDispatcher("/order1.jsp").forward(request,
	// response);
	// }else{
	// request.getRequestDispatcher("/error.jsp").forward(request,
	// response);
	// }
	// }
	// // if(action.equals("delect")){
	// //
	// // }
	// }
	//

	// private boolean delectToOrder(HttpServletRequest request,
	// HttpServletResponse response){
	// String id=request.getParameter("myid");
	// System.out.println("4588888888888888888888888888888"+id);
	// if(orDao.delectOrder(Integer.parseInt(id))){
	// return true;
	// }else{
	// return false;
	// }
	//
	// }

	// private boolean delectToOrder(int or_id){
	// //String id=request.getParameter("myid");
	// System.out.println("4588888888888888888888888888888"+or_id);
	// OrderDAO orDao = new OrderDAO();
	// if(orDao.delectOrder(or_id)){
	// return true;
	// }else{
	// return false;
	// }
	//
	// }

}
