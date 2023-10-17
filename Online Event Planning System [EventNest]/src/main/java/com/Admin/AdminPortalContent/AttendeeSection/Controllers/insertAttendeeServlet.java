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
 * Servlet implementation class AttendeeServlet
 */
public class insertAttendeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int attendeeId = Integer.parseInt(request.getParameter("attendeeId"));
		String attendeeName = request.getParameter("attendeeName");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		int tickets = Integer.parseInt(request.getParameter("tickets"));
		String previouslyAttendedEvents = request.getParameter("previouslyAttendedEvents");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		Attendee attendee = new Attendee(attendeeId, attendeeName, address, phone, email, tickets,
				previouslyAttendedEvents, username, password);
		boolean isTrue = AttendeeDBUtil.insertAttendee(attendee);

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
			out.println("<script type = 'text/javascript'> " + "alert('Atendee added successfully!');"
					+ "location='adminPortal.jsp'</script>");
		} else {
			// Alert failed
			// navigate to admin portal
			response.setContentType("text/html");
			out.println("<script type = 'text/javascript'> " + "alert('Insertion failed !');"
					+ "location='adminPortal.jsp'</script>");

			List<Attendee> attendeeDetails = AttendeeDBUtil.getAttendee();
			request.setAttribute("attendeeDetails", attendeeDetails);

			RequestDispatcher dis = request.getRequestDispatcher("/adminPortal.jsp");
			dis.forward(request, response);

		}
	}
}
