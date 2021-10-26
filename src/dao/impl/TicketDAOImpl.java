package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnect;
import dao.TicketDAO;
import model.FlightTicket;
import model.Ticket;

public class TicketDAOImpl extends DBConnect implements TicketDAO {
	@Override
	public void insert(List<Ticket> tickets) {
		String sql = "INSERT INTO ticket(price, ticket_type, seat_number,flight_id) " + "VALUES ";
		Connection con = super.getConnection();
		
		try {
			for(int i=0;i<tickets.size();i++) {
				Ticket ticket =tickets.get(i);
				sql=sql+ "(" +ticket.getPrice()+",'"+ticket.getTicketType()+"','"+ticket.getSeatNumber()+"',"+ticket.getFlightID()+"),";
			}
	sql =sql.substring(0,sql.length()-1);
			System.out.print(sql);
//			sql=sql+";";
			PreparedStatement ps = con.prepareStatement(sql);
//			ps.setInt(1, ticket.getPrice());
//			ps.setString(2, ticket.getTicketType());
//			ps.setString(3, ticket.getSeatNumber());

			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void edit(Ticket ticket) {
		String sql = "UPDATE ticket SET price =?, ticket_type = ?, seat_number = ?,";
		Connection con = super.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, ticket.getPrice());
			ps.setString(2, ticket.getTicketType());
			ps.setString(3, ticket.getSeatNumber());

			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void delete(int ticketID) {
		String sql = "DELETE FROM ticket WHERE ticket_id = ?";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, ticketID);
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Ticket get(int ticketID) {
		String sql = "SELECT * FROM ticket WHERE ticket_id = ?";
		Connection con = super.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, ticketID);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Ticket ticket = new Ticket();
				ticket.setTicketID(rs.getInt("ticket_id"));
				ticket.setPrice(rs.getInt("price"));
				ticket.setTicketType(rs.getString("ticket_type"));
				ticket.setSeatNumber(rs.getString("seat_number"));

				return ticket;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Ticket> getAll(int FlightId) {
		List<Ticket> ticketList = new ArrayList<Ticket>();
		String sql = "SELECT * FROM flight as f inner join ticket as t on f.flight_id=t.flight_id WHERE f.flight_id=?";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, FlightId);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Ticket ticket = new Ticket();
				ticket.setTicketID(rs.getInt("ticket_id"));
				ticket.setPrice(rs.getInt("price"));
				ticket.setTicketType(rs.getString("ticket_type"));
				ticket.setSeatNumber(rs.getString("seat_number"));

				ticketList.add(ticket);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ticketList;
	}

	@Override
	public List<Ticket> searchTicketBySeatNumber(String seatNumber) {
		List<Ticket> ticketList = new ArrayList<Ticket>();
		String sql = "SELECT * FROM ticket WHERE seat_number LIKE ? ";
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "%" + seatNumber + "%");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Ticket ticket = new Ticket();
				ticket.setTicketID(rs.getInt("ticket_id"));
				ticket.setPrice(rs.getInt("price"));
				ticket.setTicketType(rs.getString("ticket_type"));
				ticket.setSeatNumber(rs.getString("seat_number"));

				ticketList.add(ticket);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ticketList;
	}

	@Override
	public List<FlightTicket> getAllTicketINflight(int FlightId) {
		List<FlightTicket> ticketList = new ArrayList<FlightTicket>();
		String sql = "SELECT * FROM ticket as t "
				+ "left join flightreservationdbs.flightreservation as  f on "
				+ "t.ticket_id =f.ticket_id where f.ticket_id IS NULL and  t.flight_id=?";
				
		Connection con = super.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, FlightId);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				FlightTicket ticket = new FlightTicket();
				ticket.setTicketID(rs.getInt("ticket_id"));
				ticket.setPrice(rs.getInt("price"));
				ticket.setTicketType(rs.getString("ticket_type"));
				ticket.setSeatNumber(rs.getString("seat_number"));
				ticketList.add(ticket);
			
		}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return ticketList;
		}

}