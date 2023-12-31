package com.Home.SearchBar.Controller;


/*Author:IT22332608 | Liyanage M.I.H*/

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import com.Admin.AdminPortalContent.Event.Model.Event;

import com.Home.SearchBar.Util.SearchByName;
import com.Home.SearchBar.Util.SearchByVenue;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchBarServlet
 */
public class SearchBarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String keyWord = request.getParameter("keyWord");

		if (!keyWord.isEmpty()) {
			ArrayList<Event> resultsByName = SearchByName.getSearchResult(keyWord);
			ArrayList<Event> resultsByVenue = SearchByVenue.getSearchResult(keyWord);

			if (!resultsByName.isEmpty()) {
				request.setAttribute("results", resultsByName);
				request.getRequestDispatcher("searchResultPage.jsp").forward(request, response);
			} else if (!resultsByVenue.isEmpty()) {
				request.setAttribute("results", resultsByVenue);
				request.getRequestDispatcher("searchResultPage.jsp").forward(request, response);
			} else {
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				out.println("<script type = 'text/javascript'> "
						+ "alert('Sorry!! No such events are avilible');" + "location='Home.jsp'</script>");
			}
		} else {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			out.println("<script type = 'text/javascript'> " + "location='Home.jsp'</script>");

		}
	}

}
