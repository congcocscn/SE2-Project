package dao;

import java.util.List;

import model.FlightTicket;
import model.Ticket;

public interface TicketDAO {

	void insert(List<Ticket> tickets);

	void edit(Ticket ticket);

	void delete(int ticketID);

	Ticket get(int ticketID);

	List<Ticket> getAll(int FlightID);

	List<Ticket> searchTicketBySeatNumber(String seatNumber);
	List<FlightTicket> getAllTicketINflight(int FlightId);
}
