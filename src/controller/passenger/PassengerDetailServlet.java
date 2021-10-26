package controller.passenger;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Flight;
import model.Passenger;
import service.PassengerService;
import service.impl.PassengerServiceImpl;

@WebServlet(urlPatterns = { "/admin/passenger/edit" })
public class PassengerDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PassengerService passengerService = new PassengerServiceImpl();
    /**
     * @return 
     * @see HttpServlet#HttpServlet()
     */
    public  PassengerDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int passenger_id = Integer.parseInt(request.getParameter("passenger_id"));
	
		Passenger passenger = passengerService.getPassenger(passenger_id);
		request.setAttribute("passenger", passenger);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/admin/partials/passenger-edit.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int passenger_id = Integer.parseInt(request.getParameter("passenger_id"));
		System.out.print(passenger_id);
		String firstName=request.getParameter("firstName");
		String lastName=request.getParameter("lastName");
		String passport=request.getParameter("passportNumber");
		String nationality=request.getParameter("nationality");
		String dob=request.getParameter("dob");
		String phoneNumber=request.getParameter("phoneNumber");
		String email=request.getParameter("email");
		String gender=request.getParameter("gender");
		Passenger passenger =new Passenger(passenger_id,passport,nationality,firstName,lastName,dob,gender,phoneNumber,email);
		passengerService.updatePassenger(passenger);
		response.sendRedirect("/AirlineReservationSystem/admin/passenger/list");
	}

}
