package com.Customer.Signup;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class customerUpdateServlet
 */
public class customerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		
		boolean isTrue = CustomerDbUtil.updateAttendee(name,address,phone,email,username,password);

		if (isTrue == true) {
			//session token creating
			HttpSession session = request.getSession();
			session.setAttribute("AttendeeUsername", "token");
			// Customer retrieve
	
			request.setAttribute("username",username);
			RequestDispatcher dis = request.getRequestDispatcher("attendee.jsp");
			dis.forward(request, response);
			
		} else {
			RequestDispatcher dis = request.getRequestDispatcher("attendee.jsp");
			dis.forward(request, response);
		}
	}
	

}
