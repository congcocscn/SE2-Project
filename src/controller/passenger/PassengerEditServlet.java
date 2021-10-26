package controller.passenger;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Passenger;
import service.impl.PassengerServiceImpl;

/**
 * Servlet implementation class UpdatePassengerController
 */
@WebServlet(name = "PassengerEditServlet", urlPatterns = "/PassengerEditServlet")
public class PassengerEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PassengerEditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int passenger_id = Integer.parseInt(request.getParameter("passenger_id"));
		String passport_id_number = request.getParameter("passport_id_number");
		String nationality = request.getParameter("nationality");
		String address_line1 = request.getParameter("address_line1");
		String address_line2 = request.getParameter("address_line2");
		String address_line3 = request.getParameter("address_line3");
		String country = request.getParameter("country");
		String province = request.getParameter("province");
		String district = request.getParameter("district");
		String postal_code = request.getParameter("postal_code");
		String title = request.getParameter("title");
		int user_id = Integer.parseInt(request.getParameter("user_id"));
		int payment_id = Integer.parseInt(request.getParameter("payment_id"));
		
		//Passenger passenger = new Passenger(passenger_id, passport_id_number, nationality, address_line1, address_line2, address_line3, country, province, district, postal_code, title, user_id, payment_id);
		
//		if(new PassengerServiceImpl().updatePassenger(passenger)) {
//			System.out.println("Update passenger DONE");
//			response.sendRedirect("PassengerListServlet");
//		}else {
//			System.out.println("False to update a passenger in PassengerServiceImpl !!!");
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
