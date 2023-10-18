package com.Login.Controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.Admin.AdminPortalContent.AttendeeSection.Model.Attendee;
import com.Admin.AdminPortalContent.AttendeeSection.Util.AttendeeDBUtil;
import com.Login.Model.Login;
import com.Login.Util.AtendeeLoginDBUtil;

public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		
		Login lg = new Login(userName,password);
		
		//Getting the first 2 characters from username
		char letter1 = userName.charAt(0);
		char letter2 = userName.charAt(1);
		
		
		
		 if(letter1 == 'E' && letter2 == 'P') {
			 boolean isTrue = AtendeeLoginDBUtil.validate(lg);
			
			if (isTrue == true) {
				// navigate to admin portal
				RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
				dis.forward(request, response);

			} else {
				// Alert and redirect to the login page
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				out.println("<script type = 'text/javascript'> " + "alert('Your username or password is incorrect');"
						+ "location='Login.jsp'</script>");
			}
		}else {
			
		}
		
		

	}
	
}
