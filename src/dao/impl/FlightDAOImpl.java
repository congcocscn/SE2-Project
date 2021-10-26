package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnect;
import dao.FlightDAO;
import model.Flight;
import model.FlightStop;
import model.FlightTicket;

public class FlightDAOImpl extends DBConnect implements FlightDAO {

	@Override
	public int insert(Flight flight) {
		String sql = "INSERT INTO flight(flight_number, flight_date, departure, arrival, departure_time, arrival_time,"
				+ "flight_duration, airline_name, capacity, stop, stop1, stop2, stop3) "
				+ "VALUES(?, ?, ?,?,?,?,?,?, ?, ?, ?,?, ?)";
		Connection con = super.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, flight.getFlightNumber());
			ps.setString(2, flight.getFlightDate());
			ps.setString(3, flight.getDeparture());
			ps.setString(4, flight.getArrival());
			ps.setString(5, flight.getDepartureTime());
			ps.setString(6, flight.getArrivalTime());
			ps.setString(7, flight.getFlightDuration());
			ps.setString(8, flight.getAirlineName());
			ps.setInt(9, flight.getCapacity());	
			ps.setString(10, flight.getStop());
			ps.setString(11, flight.getStop1());
			ps.setString(12, flight.getStop2());
			ps.setString(13, flight.getStop3());
			
			System.out.print(sql);
			ps.executeUpdate();
			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {//NEU CO tao moi va ID tu gen o sql
				flight.setFlightID(rs.getInt(1));// lay id cua bill
			}
			
			return flight.getFlightID();
				
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return 0;
		
	}

	@Override
	public void edit(Flight flight) {
		String sql = "UPDATE flight SET flight_number =?, flight_date  = ?, departure = ?, arrival =?, "
				+ "departure_time = ?, arrival_time = ? , flight_duration = ?, airline_name = ?, capacity = ?, stop =?,"
				+ "stop1 = ?, stop2 = ?, stop3 = ? where flight_id=?";
		Connection con = super.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, flight.getFlightNumber());
			ps.setString(2, flight.getFlightDate());
			ps.setString(3, flight.getDeparture());
			ps.setString(4, flight.getArrival());
			ps.setString(5, flight.getDepartureTime());
			ps.setString(6, flight.getArrivalTime());
			ps.setString(7, flight.getFlightDuration());
			ps.setString(8, flight.getAirlineName());
			ps.setInt(9, flight.getCapacity());
			ps.setString(10, flight.getStop());
			
			ps.setString(11, flight.getStop1());
			ps.setString(12, flight.getStop2());
			ps.setString(13, flight.getStop3());
			ps.setInt(14,flight.getFlightID());
			
			

			ps.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void delete(int flightID) {
		String sql = "DELETE FROM flight WHERE flight_id = ?";
		Connection con = super.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, flightID);
			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Flight get(int flightID) {
		String sql = "SELECT * FROM flight WHERE flight_id = ?";
		Connection con = super.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1,  flightID);
			ResultSet rs = ps.executeQuery();
			
			while( rs.next()) {
				Flight flight = new Flight();
				flight.setFlightID(rs.getInt("flight_id"));
				flight.setFlightNumber(rs.getString("flight_number"));
				flight.setFlightDate(rs.getString("flight_date"));
				flight.setDeparture(rs.getString("departure"));
				flight.setArrival(rs.getString("arrival"));
				flight.setDepartureTime(rs.getString("departure_time"));
				flight.setArrivalTime(rs.getString("arrival_time"));
				flight.setFlightDuration(rs.getString("flight_duration"));
				flight.setAirlineName(rs.getString("airline_name"));
				flight.setCapacity(rs.getInt("capacity"));
				flight.setStop(rs.getString("stop"));
				flight.setStop1(rs.getString("stop1"));
				flight.setStop2(rs.getString("stop2"));
				flight.setStop3(rs.getString("stop3"));
				
				
				return flight;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Flight> getAllFlights() {
		List<Flight> flightList = new ArrayList<Flight>();
		String sql = "SELECT * FROM flight";
		Connection con = super.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Flight flight = new Flight();
				flight.setFlightID(rs.getInt("flight_id"));
				flight.setFlightNumber(rs.getString("flight_number"));
				flight.setFlightDate(rs.getString("flight_date"));
				flight.setDeparture(rs.getString("departure"));
				flight.setArrival(rs.getString("arrival"));
				flight.setDepartureTime(rs.getString("departure_time"));
				flight.setArrivalTime(rs.getString("arrival_time"));
				flight.setAirlineName(rs.getString("airline_name"));
				flight.setCapacity(rs.getInt("capacity"));
				flight.setStop(rs.getString("stop"));
				flight.setStop1(rs.getString("stop1"));
				flight.setStop2(rs.getString("stop2"));
				flight.setStop3(rs.getString("stop3"));
				
				flightList.add(flight);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flightList;
	}

	

	@Override
	public List<Flight> searchByAirlineName(String airlineName) {
		List<Flight> flightList = new ArrayList<Flight>();
		String sql = "SELECT * FROM flight WHERE airline_name LIKE ? ";
		Connection con = super.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "%" + airlineName + "%");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Flight flight = new Flight();
				flight.setFlightID(rs.getInt("flight_id"));
				flight.setFlightNumber(rs.getString("flight_number"));
				flight.setFlightDate(rs.getString("flight_date"));
				flight.setDeparture(rs.getString("departure"));
				flight.setArrival(rs.getString("arrival"));
				flight.setDepartureTime(rs.getString("departure_time"));
				flight.setArrivalTime(rs.getString("arrival_time"));
				flight.setAirlineName(rs.getString("airline_name"));
				flight.setCapacity(rs.getInt("capacity"));
				flight.setStop(rs.getString("stop"));
				flight.setStop1(rs.getString("stop1"));
				flight.setStop2(rs.getString("stop2"));
				flight.setStop3(rs.getString("stop3"));
				
				flightList.add(flight);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return flightList;
	}


	

	@Override
	public List<Flight> searchByFlightNumber(String flightNumber) {
		List<Flight> flightList = new ArrayList<Flight>();
		String sql = "SELECT * FROM flight WHERE flight_number LIKE ? ";
		Connection con = super.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "%" + flightNumber + "%");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Flight flight = new Flight();
				flight.setFlightID(rs.getInt("flight_id"));
				flight.setFlightNumber(rs.getString("flight_number"));
				flight.setFlightDate(rs.getString("flight_date"));
				flight.setDeparture(rs.getString("departure"));
				flight.setArrival(rs.getString("arrival"));
				flight.setDepartureTime(rs.getString("departure_time"));
				flight.setArrivalTime(rs.getString("arrival_time"));
				flight.setAirlineName(rs.getString("airline_name"));
				flight.setCapacity(rs.getInt("capacity"));
				flight.setStop(rs.getString("stop"));
				flight.setStop1(rs.getString("stop1"));
				flight.setStop2(rs.getString("stop2"));
				flight.setStop3(rs.getString("stop3"));
				
				flightList.add(flight);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return flightList;
	}

	@Override
	public List<FlightTicket> getAllFlightsAndTicket(String from, String to, int minPrice, int maxPrice,String stop) {
		List<FlightTicket> flightList = new ArrayList<FlightTicket>();
		String sql = "SELECT distinct f.flight_id ,f.flight_number,f.flight_date,f.departure,f.arrival,t.price,f.flight_duration,f.stop,f.capacity,f.departure_time,f.arrival_time,f.airline_name, f.stop1,f.stop2,f.stop3 FROM flight as f left join  ticket as t on f.flight_id=t.flight_id where t.price between ? and ?"       ;
		Connection con = super.getConnection();
		
		try {
			
//			if(minPrice !=0) {
//				ps.setInt(1, minPrice);
//			}
//			
//			if(maxPrice !=0) {
//				ps.setInt(2, maxPrice);
//			}
						
			if(from !="" && from !=null) {
				sql=sql+" and f.departure='"+from+"'";
			}
			if(to !="" && to !=null) {
				sql=sql+" and f.arrival='"+to+"'";
			}
			if(stop!="" && stop!=null) {
				sql=sql +" and f.stop='"+stop+"'";
			}
			
			sql=sql+" order by t.price ASC";
			
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, 1);
			ps.setInt(2, 10000);
			System.out.print(ps);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				FlightTicket flight = new FlightTicket();
				flight.setFlightID(rs.getInt("flight_id"));
				flight.setFlightNumber(rs.getString("flight_number"));
				flight.setFlightDate(rs.getDate("flight_date"));
				flight.setDeparture(rs.getString("departure"));
				flight.setArrival(rs.getString("arrival"));
				flight.setFlightDuration(rs.getString("flight_duration"));
				flight.setDepartureTime(rs.getTime("departure_time"));
				flight.setArrivalTime(rs.getTime("arrival_time"));
				flight.setAirlineName(rs.getString("airline_name"));
				flight.setCapacity(rs.getInt("capacity"));
				flight.setStop(rs.getString("stop"));
				flight.setStop1(rs.getString("stop1"));
				flight.setStop2(rs.getString("stop2"));
				flight.setStop3(rs.getString("stop3"));
				flight.setPrice(rs.getInt("price"));
//				flight.setTicketID(rs.getInt("ticket_id"));
				flightList.add(flight);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return flightList;
	}

	@Override
	public Flight getFlightNumber(String flightNumber) {
		// TODO Auto-generated method stub
		return null;
	}


	

	

	
	

}
