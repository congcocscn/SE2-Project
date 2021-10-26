package controller.payment;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Payment;
import service.impl.PaymentServiceImpl;

/**
 * Servlet implementation class PaymentAddServlet
 */
@WebServlet(name = "PaymentAddServlet", urlPatterns = "/PaymentAddServlet")
public class PaymentAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PaymentAddServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String customer_name = request.getParameter("customer_name");
		String card_type = request.getParameter("card_type");
		String card_number = request.getParameter("card_number");
		Date exp_date = Date.valueOf(request.getParameter("exp_date"));
		String cvv = request.getParameter("cvv");
		

		//Payment payment = new Payment(customer_name, card_type, card_number, exp_date, cvv,12);

//		if (new PaymentServiceImpl().insertPayment(payment)) {
//			response.sendRedirect("PaymentListServlet");
//		} else {
//			System.err.println("False to insert new passenger in PassengerServiceImpl !!!");
//		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
