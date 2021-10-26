package dao;

import java.util.List;

import model.Flight;
import model.FlightTicket;
public interface FlightDAO {

	int insert(Flight flight);
	
	void edit(Flight flight);
	
	void delete(int flightID);
	
	
	Flight get(int flightID);

	Flight getFlightNumber (String flightNumber);
	
	List<Flight> getAllFlights();
	
	List<FlightTicket> getAllFlightsAndTicket(String from,String to ,int minPrice,int maxPrice,String stop);

	List<Flight> searchByFlightNumber(String flightNumber);
	
	List<Flight> searchByAirlineName(String airlineName);
	
}
