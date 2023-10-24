package com.HelpCenter.Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import com.HelpCenter.Model.Message;
import com.HelpCenter.Util.HelpCenterUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelpCenterServlet
 */
public class HelpCenterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve form data
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String issueType = request.getParameter("issueType");
		String Description = request.getParameter("description");

		Message Msg = new Message(name, email, phone, issueType, Description);
		boolean isTrue = HelpCenterUtil.passMsg(Msg);
		PrintWriter out = response.getWriter();
		if (isTrue) {
			// navigate to response
			response.setContentType("text/html");
			out.println("<script type = 'text/javascript'> " + "location='HelpCenterResponse.jsp'</script>");
		} else {
			// Alert failed
			// navigate to Help Center
			response.setContentType("text/html");
			out.println("<script type = 'text/javascript'> " + "alert('Request failed !');"
					+ "location='HelpCenter.jsp'</script>");

		}
	}
}
