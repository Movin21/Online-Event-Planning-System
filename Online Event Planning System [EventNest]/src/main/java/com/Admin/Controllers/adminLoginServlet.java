package com.Admin.Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import com.Admin.Model.Admin;
import com.Admin.Util.AdminDBUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminLogin
 */
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("adminUsername");
		String password = request.getParameter("adminPassword");
		Admin admin = new Admin(userName, password);
		boolean isTrue = AdminDBUtil.validate(admin);

		if (isTrue == true) {
			// attendee retreive

			/*
			 * List<Attendee> attendeeDetails = AttendeeDBUtil.getAttendee();
			 * request.setAttribute("attendeeDetails", attendeeDetails);
			 * 
			 * RequestDispatcher dis = request.getRequestDispatcher("/adminPortal.jsp");
			 * dis.forward(request, response);
			 */

			// navigate to admin portal

		} else {
			// Alert and redirect to the login page
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			out.println("<script type = 'text/javascript'> " + "alert('Your username or password is incorrect');"
					+ "location='adminLoginPage.jsp'</script>");
		}

	}

}
