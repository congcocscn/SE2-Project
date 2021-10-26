package controller.flight;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Flight;
import model.Ticket;
import service.FlightService;
import service.TicketService;
import service.UserService;
import service.impl.FlightServiceImpl;
import service.impl.TicketServiceImpl;

/**
 * Servlet implementation class FlightAddController
 */
@WebServlet(urlPatterns = { "/admin/flight/add" })
public class FlightAddController extends HttpServlet {
       
    FlightService flightService = new FlightServiceImpl();
    TicketService ticketService=new TicketServiceImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/admin/partials/create-flight.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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
		System.out.print("stop1:"+stop1);
		System.out.print(stop2);
		System.out.print(stop3);
		System.out.print("stop:"+stop);
		
		Flight flight = new Flight(flightNumber, flightDate, departure, arrival, departureTime, arrivalTime, flightDuration, airlineName, capacity, stop, stop1, stop2, stop3);
		int  flightId =flightService.insert(flight);
		List<Ticket> tickets= new ArrayList<Ticket>();
		for(int i=0;i<200;i++) {
			String seatnumber="f"+i;
				Ticket ticket= new Ticket(12,"Economy",seatnumber,flightId);
				tickets.add(ticket);
		}
		for(int i=200;i<250;i++) {
			String seatnumber="t"+i;
				Ticket ticket= new Ticket(12,"Bussiness",seatnumber,flightId);
				tickets.add(ticket);
		}
		for(int i=250;i<capacity;i++) {
			String seatnumber="P"+i;
				Ticket ticket= new Ticket(12,"Premium Economy",seatnumber,flightId);
				tickets.add(ticket);
		}
		ticketService.insert(tickets);
		response.sendRedirect("/AirlineReservationSystem/admin/flight/list");
	}

}
