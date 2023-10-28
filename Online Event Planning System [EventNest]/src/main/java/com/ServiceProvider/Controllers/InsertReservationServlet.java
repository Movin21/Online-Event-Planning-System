package com.ServiceProvider.Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


import com.Admin.AdminPortalContent.ServiceProvider.Model.Reservation;
import com.Admin.AdminPortalContent.ServiceProvider.Utill.ReservationDBUtil;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class insertReservationServlet
 */
public class InsertReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
		boolean isTrue = ReservationDBUtil.insertReservation(reservation);

		PrintWriter out = response.getWriter();
		if (isTrue == true) {
			//session token creating
			HttpSession session = request.getSession();
			session.setAttribute("SPUsername", "token");
			RequestDispatcher dis = request.getRequestDispatcher("res-list.jsp");
			dis.forward(request, response);
		} else {
			// Alert failed
			response.setContentType("text/html");
			out.println("<script type = 'text/javascript'> " + "alert('Insertion failed !');"
					);

		}
	}

}
