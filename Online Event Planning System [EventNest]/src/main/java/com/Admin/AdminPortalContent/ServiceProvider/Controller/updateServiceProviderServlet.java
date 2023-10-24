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
 * Servlet implementation class updateServiceProviderServlet
 */
public class updateServiceProviderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int reservationId = Integer.parseInt(request.getParameter("reservationId"));
		String reservationName = request.getParameter("reservationName");
		int numberOfCrew = Integer.parseInt(request.getParameter("numberOfCrew"));
		String reservationType = request.getParameter("reservationType");
		String reservationDescription = request.getParameter("reservationDescription");
		double reservationPrice = Double.parseDouble(request.getParameter("reservationPrice"));
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		Reservation reservation = new Reservation(reservationId, reservationName, numberOfCrew, reservationType,
				reservationDescription, reservationPrice, username, password);

		boolean isSuccess = ReservationDBUtil.updateReservation(reservation);
		PrintWriter out = response.getWriter();
		if (isSuccess) {

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
			out.println("<script type = 'text/javascript'> " + "alert('Update failed !');"
					+ "location='adminPortal.jsp'</script>");

		}
	}

}
