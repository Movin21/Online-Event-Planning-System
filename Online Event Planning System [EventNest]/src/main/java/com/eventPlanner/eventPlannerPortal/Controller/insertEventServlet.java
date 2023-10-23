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

import com.Event.Model.Event;
import com.Event.Util.EventDBUtil;
import com.eventPlanner.eventPlannerPortal.Util.EventPlannerDBUtil;

/**
 * Servlet implementation class insertEventServlet
 */
public class insertEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Getting the Values from the fields for insert
		int eventId = Integer.parseInt(request.getParameter("eventId"));
		String eventName = request.getParameter("eventName");
		String venue = request.getParameter("venue");
		String eventDate = request.getParameter("eventDate");
		String imgLink = request.getParameter("imgLink");
		double ticketPrice = Double.parseDouble(request.getParameter("ticketPrice"));
		String description = request.getParameter("description");
		
		Event event = new Event(eventId, eventName, venue, eventDate, imgLink, description, ticketPrice, eventDate, eventDate);
		
		boolean isTrue = EventPlannerDBUtil.insertEvent(event);
		
		PrintWriter out = response.getWriter();
		
		if (isTrue == true) {
			
			// navigate to eventPlanner portal
			RequestDispatcher dis = request.getRequestDispatcher("eventPlannerPortal.jsp");
			dis.forward(request, response);
			
			// navigate to eventPlanner portal
			response.setContentType("text/html");
			out.println("<script type = 'text/javascript'> " + "alert('Event Added Succesfully!');"
					+ "location='eventPlannerProtal.jsp'</script>");
		} else {
			
			// navigate to CreateEvent portal
			response.setContentType("text/html");
			out.println("<script type = 'text/javascript'> " + "alert('Insertion failed !');"
					+ "location='CreateEvent.jsp'</script>");
		}
	}
}
