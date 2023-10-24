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
 * Servlet implementation class UpdateReservationServlet
 */
public class UpdateReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateReservationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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

				// Service Provider data retrieval
				List<Reservation> res = ReservationDBUtil.getReservations();
				request.setAttribute("reservations", res);

				RequestDispatcher dis = request.getRequestDispatcher("res-list.jsp");
				dis.forward(request, response);
				
				//Succeed Alert
				response.setContentType("text/html");
				out.println("<script type = 'text/javascript'> " + "alert('Update successfull!');"
						+ "location='res-list.jsp'</script>");
			} else {
				
				// Failed Alert
				response.setContentType("text/html");
				out.println("<script type = 'text/javascript'> " + "alert('Update failed !');"
						+ "location='res-form.jsp'</script>");

			}
		}


}
