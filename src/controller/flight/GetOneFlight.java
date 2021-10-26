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
import model.Ticket;
import service.FlightService;
import service.TicketService;
import service.impl.TicketServiceImpl;
import service.impl.FlightServiceImpl;
@WebServlet(urlPatterns = { "/detailFlight" })
public class GetOneFlight extends HttpServlet  {

	FlightService flightService = new FlightServiceImpl();
	TicketService ticketService =new TicketServiceImpl();
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		//int ticketId=Integer.parseInt(request.getParameter("ticketId"));
		Flight flight = flightService.get(id);
		List<FlightTicket> Listticket=ticketService.getAllTicketINflight(id);
		//Ticket ticket =ticketService.get(flight);
		request.setAttribute("listticket", Listticket);
		request.setAttribute("flight", flight);
		//request.setAttribute("ticket", ticket);
		if(Listticket.size()>0) {
			request.setAttribute("soutout", "false");
		}else {
			request.setAttribute("soutout", "true");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/client/detailFlight.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
