
package controller.FlightReser;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.fightReserDAO;
import model.fightReser;
import dao.impl.flightReserDAOImpl;

/**
 * This servlet acts as a page controller for the application, handling all
 * requests from user.
 * 
 * @author Admin
 *
 */
@WebServlet(urlPatterns = "/admin/flightReser")
public class flightReserController extends HttpServlet {
	flightReserDAOImpl flightReserDAOImpl =new flightReserDAOImpl();	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Updatedata(req,resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			listData(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void insertFr (HttpServletRequest req, HttpServletResponse res) throws SQLException, IOException {
		int ticket=Integer.parseInt(req.getParameter("ticket_id"));
		int passenger=Integer.parseInt(req.getParameter("passenger_id"));
		int flight=Integer.parseInt(req.getParameter("flight_id"));
		fightReser fr =new fightReser(ticket,flight,passenger);
		flightReserDAOImpl.insert(fr);
		res.sendRedirect("list");
		}
	
	private void listData(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, IOException, ServletException {
		String from=req.getParameter("from");
		String to=req.getParameter("to");
		
		List<fightReser> listFr = flightReserDAOImpl.getAll(from,to);
		
		req.setAttribute("listReser", listFr);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/searchResult.jsp");
		dispatcher.forward(req, resp);
	}
	private void Updatedata(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, IOException, ServletException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		int ticket=Integer.parseInt(req.getParameter("ticket_id"));
		int passenger=Integer.parseInt(req.getParameter("passenger_id"));
		int flight=Integer.parseInt(req.getParameter("flight_id"));
		fightReser fr =new fightReser(id,ticket,flight,passenger);
		flightReserDAOImpl.edit(fr);
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
		dispatcher.forward(req, resp);
	}
	private void DeleteData(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, IOException, ServletException {
		int id=Integer.parseInt(req.getParameter("id"));
		flightReserDAOImpl.delete(id);
		
	}
}

