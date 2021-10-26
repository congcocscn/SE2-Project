package service;

import java.util.List;

import model.Flight;
import model.FlightTicket;


public interface FlightService {
	int insert(Flight flight);
	
	void edit(Flight newFlight);
	
	void delete(int flightID);
	
	Flight get(int flightID);
	
	List<Flight> getAllFlights();
	
	List<FlightTicket> getAllFlightsAndTicket(String from,String to ,int minPrice,int maxPrice,String stop);
	
	List<Flight> searchByFlightNumber(String flightNumber);
	
	List<Flight> searchByAirlineName(String airlineName);

	Flight getFlightNumber(String flightNumber);

}
