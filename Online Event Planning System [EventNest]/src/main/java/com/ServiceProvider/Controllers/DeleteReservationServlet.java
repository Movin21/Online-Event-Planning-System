package com.ServiceProvider.Controllers;

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
import com.Admin.AdminPortalContent.Event.Model.Event;
import com.Admin.AdminPortalContent.Event.Util.EventDBUtil;
import com.Admin.AdminPortalContent.HelpCenterResponse.Util.HelpCenterResponseUtil;
import com.Admin.AdminPortalContent.ServiceProvider.Model.Reservation;
import com.Admin.AdminPortalContent.ServiceProvider.Utill.ReservationDBUtil;
import com.HelpCenter.Model.Message;

/**
 * Servlet implementation class DeleteReservationServlet
 */
public class DeleteReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteReservationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String reservationId = request.getParameter("reservationId");
		boolean isTrueval = ReservationDBUtil.deleteReservation(reservationId);

		PrintWriter out = response.getWriter();
		if (isTrueval) {

			// Service Provider retrieve data
			List<Reservation> res = ReservationDBUtil.getReservations();
			request.setAttribute("reservations", res);

			int rcount = ReservationDBUtil.countRecords();
			request.setAttribute("ReservationCount", rcount);
			
			RequestDispatcher dis = request.getRequestDispatcher("res-list.jsp");
			dis.forward(request, response);
			
			// Alert Success
			response.setContentType("text/html");
			out.println("<script type = 'text/javascript'> " + "alert('Delete successful!');"
						+ "location='res-list.jsp'</script>");
			} else {
			// Alert failed
			response.setContentType("text/html");
			out.println("<script type = 'text/javascript'> " + "alert('Delete failed !');"
						+ "location='res-list.jsp'</script>");
			}
	}
}
