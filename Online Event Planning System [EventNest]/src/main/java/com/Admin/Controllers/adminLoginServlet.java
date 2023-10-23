package com.Admin.Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.Admin.AdminPortalContent.AttendeeSection.Model.Attendee;
import com.Admin.AdminPortalContent.AttendeeSection.Util.AttendeeDBUtil;
import com.Admin.AdminPortalContent.Event.Model.Event;
import com.Admin.AdminPortalContent.Event.Util.EventDBUtil;
import com.Admin.AdminPortalContent.HelpCenterResponse.Util.HelpCenterResponseUtil;
import com.Admin.AdminPortalContent.ServiceProvider.Model.Reservation;
import com.Admin.AdminPortalContent.ServiceProvider.Utill.ReservationDBUtil;
import com.Admin.Model.Admin;
import com.Admin.Util.AdminDBUtil;
import com.HelpCenter.Model.Message;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

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

		if (isTrue) {
			// session create
			HttpSession session = request.getSession();
			session.setAttribute("username", userName);
			// attendee retrieve
			List<Attendee> attendeeDetails = AttendeeDBUtil.getAttendee();
			request.setAttribute("attendeeDetails", attendeeDetails);

			// Event retrieve
			List<Event> eventDetails = EventDBUtil.getEvent();
			request.setAttribute("eventDetails", eventDetails);

			// Service Provider retrieve
			List<Reservation> reservations = ReservationDBUtil.getReservations();
			request.setAttribute("reservations", reservations);
			// Message retrieve
			List<Message> Messages = HelpCenterResponseUtil.getHelpCenterEntries();
			request.setAttribute("Messages", Messages);

			int mcount = HelpCenterResponseUtil.countHelpCenterRecords();
			request.setAttribute("MessageCount", mcount);

			int atcount = AttendeeDBUtil.countRecords();
			request.setAttribute("attendeeCount", atcount);

			int rcount = ReservationDBUtil.countRecords();
			request.setAttribute("ReservationCount", rcount);

			int ecount = EventDBUtil.countRecords();
			request.setAttribute("EventCount", ecount);

			// navigate to admin portal
			RequestDispatcher dis = request.getRequestDispatcher("adminPortal.jsp");
			dis.forward(request, response);

		} else {
			// Alert and redirect to the login page
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			out.println("<script type = 'text/javascript'> " + "alert('Your username or password is incorrect');"
					+ "location='adminLoginPage.jsp'</script>");
		}

	}

}
