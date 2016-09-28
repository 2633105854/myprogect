package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zt.dao.ManagerDAO;
import com.zt.manager.Manager;

public class MagServlet extends HttpServlet {

	private ManagerDAO magDao = new ManagerDAO();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		System.out.println(action);
		if (action == null) {
			String mag_name = request.getParameter("mag_name");
			String mag_password = request.getParameter("mag_password");
			request.getSession().setAttribute("name", mag_name);
			Manager mag = new Manager(mag_name, mag_password);
			if (magDao.LoginManager(mag)) {
				response.sendRedirect("zt/index.jsp");
			}
		} else {
			String r_name = request.getParameter("r_mag_name");
			String r_password = request.getParameter("r_mag_password");
			Manager mag2 = new Manager(r_name, r_password);
			if (magDao.addManager(mag2)) {
				response.sendRedirect("zt/mid.html");
			}
		}
	}

}
