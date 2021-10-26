package controller.flight;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.FlightService;
import service.impl.FlightServiceImpl;

/**
 * Servlet implementation class FlightDeleteController
 */
@WebServlet("/admin/flight/delete")
public class FlightDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	FlightService flightService = new FlightServiceImpl();
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		flightService.delete(id);
		response.sendRedirect("/AirlineReservationSystem/admin/flight/list");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int flightID =  Integer.parseInt(request.getParameter("flightID"));
//		System.out.print("asdas"+flightID);
//		doGet(request, response);
//		response.sendRedirect("/AirlineReservationSystem/admin/flight/list");
	}

}
