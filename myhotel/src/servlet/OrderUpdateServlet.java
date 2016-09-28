package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zt.dao.OrderDAO;
import com.zt.manager.Order;

public class OrderUpdateServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");

		String action = request.getParameter("action");
		if (action == null) {
			String osor_id = request.getParameter("osor_id");
			System.out.println(osor_id);
			request.getSession().setAttribute("osor_id", osor_id);
			response.sendRedirect("zt/updateOrder.jsp");
		} else {
			String or_id = request.getParameter("or_id");
			String cl_id = request.getParameter("cl_id");
			String r_id = request.getParameter("r_id");
			String or_start_time = request.getParameter("or_start_time");
			String or_days = request.getParameter("or_days");
			String or_state = request.getParameter("or_state");
			
			Order or =new Order();
			or.setOr_id(Integer.parseInt(or_id));
			or.setCl_id(Integer.parseInt(cl_id));
			or.setR_id(Integer.parseInt(r_id));
			or.setOr_start_time(or_start_time);
			or.setOr_days(or_days);
			or.setOr_state(or_state);
			
			OrderDAO orDao=new OrderDAO();
			orDao.updateOrder(or, Integer.parseInt(or_id));
			List<Order> list = orDao.getOrder();
			request.setAttribute("list", list);
			request.getRequestDispatcher("zt/order1.jsp").forward(request, response);
		}
	}

}
