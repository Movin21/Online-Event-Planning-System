package com.Customer.Signup;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

/**
 * Servlet implementation class SignupServlet
 */
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = 1;
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isTrue;
		Customer customer=new Customer(id,name,email,address,phone,username,password);
		
		PrintWriter out = response.getWriter();
		
		try {
			isTrue = CustomerDbUtil.insertcustomer(customer);
			if(isTrue == true) {
				
				RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
				dis.forward(request, response);
				out.println("<script type = 'text/javascript'> " + "alert('Registration added successfully!');"
						+ "location='adminPortal.jsp'</script>");
			}
			else {
				RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
				dis.forward(request, response);
				out.println("<script type = 'text/javascript'> " + "alert('Registration unsuccessfull!');"
						+ "location='adminPortal.jsp'</script>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	}


