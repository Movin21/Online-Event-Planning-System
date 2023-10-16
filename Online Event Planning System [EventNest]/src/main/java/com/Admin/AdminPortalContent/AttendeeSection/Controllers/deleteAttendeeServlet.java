package com.Admin.AdminPortalContent.AttendeeSection.Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.Admin.AdminPortalContent.AttendeeSection.Model.Attendee;
import com.Admin.AdminPortalContent.AttendeeSection.Util.AttendeeDBUtil;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AttendeeDeleteServlet
 */
public class deleteAttendeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		boolean isTrue = AttendeeDBUtil.deleteAttendee(username);

		PrintWriter out = response.getWriter();
		if (isTrue == true) {
			// update the view
			List<Attendee> attendeeDetails = AttendeeDBUtil.getAttendee();
			request.setAttribute("attendeeDetails", attendeeDetails);

			RequestDispatcher dis = request.getRequestDispatcher("/adminPortal.jsp");
			dis.forward(request, response);
			// Alert Success
			// navigate to admin portal
			response.setContentType("text/html");
			out.println("<script type = 'text/javascript'> " + "alert('Delete successful!');"
					+ "location='adminPortal.jsp'</script>");
		} else {
			// Alert failed
			// navigate to admin portal
			response.setContentType("text/html");
			out.println("<script type = 'text/javascript'> " + "alert('Delete failed !');"
					+ "location='adminPortal.jsp'</script>");

			List<Attendee> attendeeDetails = AttendeeDBUtil.getAttendee();
			request.setAttribute("attendeeDetails", attendeeDetails);

			RequestDispatcher dis = request.getRequestDispatcher("/adminPortal.jsp");
			dis.forward(request, response);

		}
	}
}