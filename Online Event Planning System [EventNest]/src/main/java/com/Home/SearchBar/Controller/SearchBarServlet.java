package com.Home.SearchBar.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import com.Admin.AdminPortalContent.Event.Model.Event;
import com.Home.SearchBar.Util.SearchBarUtil;

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
		ArrayList<Event> results = SearchBarUtil.getSearchResult(keyWord);

		if (!results.isEmpty()) {
			request.setAttribute("results", results);
			request.getRequestDispatcher("searchResultPage.jsp").forward(request, response);
		} else {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			out.println("<script type = 'text/javascript'> "
					+ "alert('Sorry!! No data available for the Search Query');" + "location='Home.jsp'</script>");
		}
	}

}
