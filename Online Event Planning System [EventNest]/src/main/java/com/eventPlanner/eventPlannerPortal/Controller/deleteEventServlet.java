package com.eventPlanner.eventPlannerPortal.Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.Admin.AdminPortalContent.ServiceProvider.Utill.ReservationDBUtil;
import com.Event.Model.Event;
import com.Event.Util.EventDBUtil;
import com.eventPlanner.eventPlannerPortal.Util.EventPlannerDBUtil;

public class deleteEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eventId = request.getParameter("eventId");
		boolean isTrue = EventPlannerDBUtil.deleteEvent(eventId);

		PrintWriter out = response.getWriter();
		if (isTrue) {
			//Getting the event details
			List<Event> eventDetails = EventDBUtil.getEvent();
			request.setAttribute("eventDetail", eventDetails);
		 
			
			RequestDispatcher dis = request.getRequestDispatcher("eventPlannerPortal.jsp");
			dis.forward(request, response);
			
			response.setContentType("text/html");
			out.println("<script type = 'text/javascript'> " + "alert('Delete successful!');"
					+ "location='adminPortal.jsp'</script>");
		} else {
			// Alert failed
			response.setContentType("text/html");
			out.println("<script type = 'text/javascript'> " + "alert('Delete failed !');"
					+ "location='eventPlannerPortal.jsp'</script>");
		}
	}

}
