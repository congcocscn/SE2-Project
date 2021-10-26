package controller.passenger;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.PassengerService;
import service.impl.PassengerServiceImpl;

/**
 * Servlet implementation class DeletePassengerController
 */
@WebServlet("/admin/passenger/delete")
public class PassengerDeleteServlet extends HttpServlet {
	PassengerService passengerService = new PassengerServiceImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int passenger_id = Integer.parseInt(request.getParameter("passenger_id"));
		if(passengerService.deletePassenger(passenger_id)) {
			response.sendRedirect("/AirlineReservationSystem/admin/passenger/list");
		}else {
			System.err.println("False to delete passenger in PassengerServiceImpl !!!");
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
