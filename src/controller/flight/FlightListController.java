package controller.flight;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Flight;
import model.User;
import service.FlightService;
import service.impl.FlightServiceImpl;

/**
 * Servlet implementation class FlightListController
 */
@WebServlet(urlPatterns = { "/admin/flight/list" })
public class FlightListController extends HttpServlet {
	
	FlightService flightService = new FlightServiceImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		System.out.print(session.getAttribute("account"));
		if (session != null && session.getAttribute("account") == null) {
			response.sendRedirect(request.getContextPath()+ "/");
			return;
		}
		User user =(User) session.getAttribute("account");
		if(user ==null && user.getRole()!="1") {
			response.sendRedirect(request.getContextPath()+"/");
		}
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("email")) {
					session = request.getSession(true);
					session.setAttribute("email", cookie.getValue());
					response.sendRedirect(request.getContextPath()+ "/AirlineReservationSystem");
					return;
				}
			}
		}
		List<Flight> listFlight = flightService.getAllFlights();
		request.setAttribute("listFlight", listFlight);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/admin/partials/flight-list.jsp");
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
