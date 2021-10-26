


package controller.flight;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Flight;
import model.FlightTicket;
import service.FlightService;
import service.impl.FlightServiceImpl;
@WebServlet(urlPatterns = "/search")
public class FlightAndTicketListController extends HttpServlet {

	FlightService flightService = new FlightServiceImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String NumberOlder=request.getParameter("numberolder");
		String  typeticket =  request.getParameter("typeticket");
		if(typeticket==null) {
			typeticket="Economy";
			
		}
		String  type =  request.getParameter("type");
		if(type==null) {
			type="One-way";
			
		}
		String  stop  =  request.getParameter("stop");
		System.out.println("stop"+stop);
		if(stop==null) {
			stop="nonstop";
			
		}
//		String[] stop = request.getParameterValues("stop");
//		System.out.println(stop);
		String from =request.getParameter("from");
		String to =request.getParameter("to");
		String flightdate =request.getParameter("flight_date");
		String flightreturn =request.getParameter("flight_return");
		String minPrice=request.getParameter("minPrice");
		String maxPrice=request.getParameter("maxPrice");
		if(minPrice==null) {
			minPrice="1";
		}
		if(maxPrice==null) {
			maxPrice="10000";
		}
		List<FlightTicket> flightList = flightService.getAllFlightsAndTicket(from, to, Integer.parseInt(minPrice), Integer.parseInt(maxPrice),stop);
		
		request.setAttribute("flightList", flightList);
		request.setAttribute("from", from);
		request.setAttribute("to", to);
		request.setAttribute("minPrice", minPrice);
		request.setAttribute("maxPrice", maxPrice);
		request.setAttribute("stop", stop);
		request.setAttribute("typeticket", typeticket);
		request.setAttribute("type", type);
		request.setAttribute("NumberOlder", NumberOlder);
		
	
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/view/client/searchResult.jsp");
//		response.sendRedirect(redirectURL);
			dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("tab:"+request.getParameter("tab"));
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/client/searchResult.jsp");
		dispatcher.forward(request, response);	}
}


