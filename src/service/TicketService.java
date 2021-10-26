package service;

import java.util.List;

import model.FlightTicket;
import model.Ticket;

public interface TicketService {
	void insert(List<Ticket> tickets);

	void edit(Ticket newTicket);

	void delete(int ticketID);

	Ticket get(int ticketID);

	List<Ticket> getAll(int FlightId);

	List<Ticket> searchTicketBySeatNumber(String seatNumber);
	List<FlightTicket> getAllTicketINflight(int FlightId);
}