package service.impl;

import java.util.List;
import service.TicketService;
import dao.TicketDAO;
import dao.impl.TicketDAOImpl;
import model.FlightTicket;
import model.Ticket;

public class TicketServiceImpl implements TicketService {
	TicketDAO ticketDao = new TicketDAOImpl();

	@Override
	public void insert(List<Ticket> tickets) {
		ticketDao.insert(tickets);
		
	}

	@Override
	public void edit(Ticket newTicket) {
		Ticket oldticket = ticketDao.get(newTicket.getTicketID());
		
		oldticket.setPrice(newTicket.getPrice());
		oldticket.setTicketType(newTicket.getTicketType());
		oldticket.setSeatNumber(newTicket.getSeatNumber());
		
		ticketDao.edit(oldticket);
	}

	@Override
	public void delete(int ticketID) {
		ticketDao.delete(ticketID);
		
	}

	@Override
	public Ticket get(int ticketID) {
		return ticketDao.get(ticketID);
		
	}

	@Override
	public List<Ticket> getAll(int FlightId) {
		return ticketDao.getAll( FlightId);
	}

	@Override
	public List<Ticket> searchTicketBySeatNumber(String seatNumber) {
		return ticketDao.searchTicketBySeatNumber(seatNumber);
	}

	@Override
	public List<FlightTicket> getAllTicketINflight(int FlightId) {
		return ticketDao.getAllTicketINflight(FlightId);
	}
	

}
