package com.Admin.AdminPortalContent.ServiceProvider.Controller;

/*Author:IT22332608 | Liyanage M.I.H*/
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
import com.HelpCenter.Model.Message;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class deleteServiceProviderServlet
 */
public class deleteServiceProviderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String reservationId = request.getParameter("reservationId");
		boolean isTrue = ReservationDBUtil.deleteReservation(reservationId);

		PrintWriter out = response.getWriter();
		if (isTrue) {
			// session token create
			HttpSession session = request.getSession();
			session.setAttribute("username", "token");
			// update the view
			List<Attendee> attendeeDetails = AttendeeDBUtil.getAttendee();
			request.setAttribute("attendeeDetails", attendeeDetails);
			// Event retrieve
			List<Event> eventDetails = EventDBUtil.getEvent();
			request.setAttribute("eventDetails", eventDetails);

			// Service Provider retrieve
			List<Reservation> reservations = ReservationDBUtil.getReservations();
			request.setAttribute("reservations", reservations);

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

			RequestDispatcher dis = request.getRequestDispatcher("/adminPortal.jsp");
			dis.forward(request, response);

		} else {
			// Alert failed
			// navigate to admin portal
			response.setContentType("text/html");
			out.println("<script type = 'text/javascript'> " + "alert('Delete failed !');"
					+ "location='adminPortal.jsp'</script>");
		}
	}
}
