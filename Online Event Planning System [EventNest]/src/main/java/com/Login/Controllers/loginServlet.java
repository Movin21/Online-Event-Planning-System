package com.Login.Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import com.Login.Model.Login;
import com.Login.Util.AtendeeLoginDBUtil;
import com.Login.Util.EventPlannerLoginDBUtil;
import com.Login.Util.ServiceProviderLoginDBUtil;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("username");
		String password = request.getParameter("password");

		Login lg = new Login(userName, password);

		// Getting the first 2 characters from username
		char letter1 = userName.charAt(0);
		char letter2 = userName.charAt(1);

		boolean isTrue = false;
		
		if (letter1 == 'E' && letter2 == 'P') {
			isTrue = EventPlannerLoginDBUtil.validate(lg);

			if (isTrue == true) {
				HttpSession session = request.getSession();
				session.setAttribute("username", userName);
				// navigate to Event page
				RequestDispatcher dis = request.getRequestDispatcher("eventPlannerPortal.jsp");
				dis.forward(request, response);

			} else {
				// Alert and redirect to the login page
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				out.println("<script type = 'text/javascript'> " + "alert('Your username or password is incorrect');"
						+ "location='Login.jsp'</script>");
			}

		} else if (letter1 == 'S' && letter2 == 'P') {
			isTrue = ServiceProviderLoginDBUtil.validate(lg);

			if (isTrue == true) {
			
				RequestDispatcher dis = request.getRequestDispatcher("res-list.jsp");
				dis.forward(request, response);

			} else {
				// Alert and redirect to the login page
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				out.println("<script type = 'text/javascript'> " + "alert('Your username or password is incorrect');"
						+ "location='Login.jsp'</script>");
			}

		} else {
			isTrue = AtendeeLoginDBUtil.validate(lg);

			if (isTrue == true) {
							
				// navigate to  customer portal
				request.setAttribute("username",userName);
				RequestDispatcher dis = request.getRequestDispatcher("attendee.jsp");
				dis.forward(request, response);

			} else {
				// Alert and redirect to the login page
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				out.println("<script type = 'text/javascript'> " + "alert('Your username or password is incorrect');"
						+ "location='Login.jsp'</script>");
			}

		}

	}

}
