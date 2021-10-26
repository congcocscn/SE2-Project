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
 * Servlet implementation class PaymentEditServlet
 */
@WebServlet(name = "PaymentEditServlet", urlPatterns = "/PaymentEditServlet")
public class PaymentEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentEditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int payment_id = Integer.parseInt(request.getParameter("payment_id"));
		String customer_name = request.getParameter("customer_name");
		String card_type = request.getParameter("card_type");
		String card_number = request.getParameter("card_number");
		Date exp_date = Date.valueOf(request.getParameter("exp_date"));
		String cvv = request.getParameter("cvv");
		
		//Payment payment = new Payment(payment_id, customer_name, card_type, card_number, exp_date, cvv,12);
		
//		if(new PaymentServiceImpl().updatePayment(payment)) {
//			System.out.println("Update payment DONE");
//			response.sendRedirect("PaymentListServlet");
//		}else {
//			System.out.println("False to update payment in PaymentServiceImpl !!!");
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
