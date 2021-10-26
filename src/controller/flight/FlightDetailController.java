package controller.flight;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Flight;
import service.FlightService;
import service.impl.FlightServiceImpl;

/**
 * Servlet implementation class FlightDetailController
 */
@WebServlet(urlPatterns = { "/admin/flight/get" })
public class FlightDetailController extends HttpServlet {
	FlightService flightService = new FlightServiceImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int flightID = Integer.parseInt(request.getParameter("id"));
		System.out.print(flightID);
		Flight flight = flightService.get(flightID);
		request.setAttribute("flight", flight);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/admin/partials/detail-flight.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int flightID =  Integer.parseInt(request.getParameter("flightID"));
		String flightNumber = request.getParameter("flightNumber");
		String flightDate = request.getParameter("flightDate");
		String departure = request.getParameter("departure");
		String arrival = request.getParameter("arrival");
		String departureTime = request.getParameter("departureTime");
		String arrivalTime = request.getParameter("arrivalTime");
		String flightDuration = request.getParameter("flightDuration");
		String airlineName = request.getParameter("airlineName");
		int capacity = Integer.parseInt(request.getParameter("capacity"));
		String stop = request.getParameter("stop");
		
		String stop1 = request.getParameter("stop1");
		String stop2 = request.getParameter("stop2");
		String stop3 = request.getParameter("stop3");
		Flight flight = new Flight(flightID,flightNumber, flightDate, departure, arrival, departureTime, arrivalTime, flightDuration, airlineName, capacity, stop, stop1, stop2, stop3);
		flightService.edit(flight);
		
		response.sendRedirect("/AirlineReservationSystem/admin/flight/list");
		
	}


}
