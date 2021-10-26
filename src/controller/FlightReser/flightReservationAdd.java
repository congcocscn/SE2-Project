package controller.FlightReser;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.email.configEmail;
import dao.impl.flightReserDAOImpl;
import model.Flight;
import model.Passenger;
import model.Payment;
import model.fightReser;
import model.Ticket;
import service.FlightService;
import service.PassengerService;
import service.PaymentService;
import service.TicketService;
import service.paymentPayPalService;
import service.impl.FlightServiceImpl;
import service.impl.PassengerServiceImpl;
import service.impl.PaymentServiceImpl;
import service.impl.TicketServiceImpl;
import model.OrderPaypal;
@WebServlet(urlPatterns = "/buyticket")
public class flightReservationAdd extends HttpServlet {
	flightReserDAOImpl flightReserDAOImpl =new flightReserDAOImpl();	
	FlightService flightService = new FlightServiceImpl();
	PaymentService paymentService = new PaymentServiceImpl();
	PassengerService passengerService=new PassengerServiceImpl();
	TicketService ticketService=new TicketServiceImpl();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int flightId=Integer.parseInt(req.getParameter("flightId"));
			int ticketId=Integer.parseInt(req.getParameter("ticketId"));
			String card=req.getParameter("card");
			System.out.println("card"+card);
			String firstName=req.getParameter("firstname");
			String lastName=req.getParameter("lastName");
			String email=req.getParameter("email");
			String gender=req.getParameter("gender");
			String phoneNumber=req.getParameter("phoneNumber");
			String dob=req.getParameter("date_of_birth");
			int ticketID=Integer.parseInt(req.getParameter("ticketId"));
			String passport=req.getParameter("passport");
			String nationality=req.getParameter("nationality");
			
			String cardnumber=req.getParameter("cardnumber");
			String expMonth=req.getParameter("expMonth");
			String expYear=req.getParameter("expYear");
//			String expdate="31/"+expMonth+"/"+expYear;
			String expdate=expYear+"-"+expMonth+"-20";
			
			
		String product = req.getParameter("ticketId");
		String subtotal = req.getParameter("subtotal");
			String shipping = req.getParameter("shipping");
			String tax = req.getParameter("tax");
		String total = req.getParameter("total");
		OrderPaypal orderDetail = new OrderPaypal(product, subtotal, shipping, tax, total);
//			DateTimeFormatter fomater=DateTimeFormatter.forPattern("dd/MM/yyyy");
//			System.out.println(expdate);
//			Date date1=null;
//			try {
//				date1 = (Date) new SimpleDateFormat("dd/MM/yyyy").parse(expdate);
//			} catch (ParseException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
			String cvv=req.getParameter("cvv");
			String cardHolderName=req.getParameter("cardHolderName");
			Payment payment = new Payment(cardHolderName, card, cardnumber, expdate, cvv,1212);
			 int idPayment =paymentService.insertPayment(payment);
			
			 Passenger newpassenger =new Passenger(passport,nationality,firstName,lastName,dob,gender,phoneNumber,email,idPayment);
			int idPassenger= passengerService.insertPassenger(newpassenger);
			 System.out.println("id Passesenger:"+idPassenger);
			 System.out.println("id ticket:"+ticketId);
			 System.out.println("id flight:"+flightId);
				fightReser fr =new fightReser(flightId,ticketId,idPassenger);
				flightReserDAOImpl.insert(fr);
				configEmail.send(email,"Buy ticket successful", "<h1> Information ticket </h1>"
						+ "<h2>"+ lastName +firstName+"</h2>"
								+ "<h3> total Payment"+total+"</h3>"
								+"<h3></h3>");
				if(card =="paypal") {
					   paymentPayPalService paymentServices = new paymentPayPalService();
			            String approvalLink = paymentServices.authorizePayment(orderDetail);
			            		System.out.print("approvalLink"+approvalLink);
			            resp.sendRedirect(approvalLink);
				}else {
					RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/payment.jsp");
					dispatcher.forward(req, resp);
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			System.out.print("flight_id"+req.getParameter("flightId"));
			int id=Integer.parseInt(req.getParameter("flightId"));
					Flight flight = flightService.get(id);
					String firstName=req.getParameter("firstname");
					String lastName=req.getParameter("lastName");
					String email=req.getParameter("email");
					String gender=req.getParameter("gender");
					String phoneNumber=req.getParameter("phoneNumber");
					String dob=req.getParameter("dob");
					int ticketID=Integer.parseInt(req.getParameter("ticketId"));
					Ticket ticket = ticketService.get(ticketID);
					String passport=req.getParameter("passport");
					String nationality=req.getParameter("nationality");
					req.setAttribute("ticket", ticket);
					req.setAttribute("firstName", firstName);
					req.setAttribute("lastName", lastName);
					req.setAttribute("email", email);
					req.setAttribute("gender", gender);
					req.setAttribute("passport", passport);
					req.setAttribute("gender", gender);
					req.setAttribute("dob", dob);
					req.setAttribute("ticketID", ticketID);
					req.setAttribute("nationality", nationality);
					req.setAttribute("phoneNumber", phoneNumber);
					req.setAttribute("flight", flight);
					//req.setAttribute("flight", flight);
//					String firstName=req.getParameter("firstname");
					
					System.out.print("lastName"+lastName);
					RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/payment.jsp");
					dispatcher.forward(req, resp);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
