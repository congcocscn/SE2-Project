package service.impl;

import java.util.List;

import dao.FlightDAO;
import dao.impl.FlightDAOImpl;
import model.Flight;
import model.FlightTicket;
import service.FlightService;
public class FlightServiceImpl implements FlightService {
	
	FlightDAO flightDao = new FlightDAOImpl();

	@Override
	public int insert(Flight flight) {
		return flightDao.insert(flight);
		
	}

	@Override
	public void edit(Flight newFlight) {
		Flight oldFlight = flightDao.get(newFlight.getFlightID());
		
		oldFlight.setFlightNumber(newFlight.getFlightNumber());
		oldFlight.setFlightDate(newFlight.getFlightDate());
		oldFlight.setDeparture(newFlight.getDeparture());
		oldFlight.setArrival(newFlight.getArrival());
		oldFlight.setDepartureTime(newFlight.getDepartureTime());
		oldFlight.setArrivalTime(newFlight.getArrivalTime());
		oldFlight.setFlightDuration(newFlight.getFlightDuration());
		oldFlight.setAirlineName(newFlight.getAirlineName());
		oldFlight.setCapacity(newFlight.getCapacity());
		oldFlight.setStop(newFlight.getStop());
		oldFlight.setStop1(newFlight.getStop1());
		oldFlight.setStop2(newFlight.getStop2());
		oldFlight.setStop3(newFlight.getStop3());
		
		flightDao.edit(oldFlight);
	}

	@Override
	public void delete(int flightID) {
		flightDao.delete(flightID);
		
	}

	@Override
	public Flight get(int flightID) {
			
		return flightDao.get(flightID);
		
	}

	@Override
	public Flight getFlightNumber(String flightNumber) {
		return flightDao.getFlightNumber(flightNumber);
		
	}

	@Override
	public List<Flight> getAllFlights() {
		return flightDao.getAllFlights();
	}
	

	@Override
	public List<Flight> searchByFlightNumber(String flightNumber) {
		return flightDao.searchByFlightNumber(flightNumber);
	}

	@Override
	public List<Flight> searchByAirlineName(String airlineName) {
		return flightDao.searchByAirlineName(airlineName);
	}

	@Override
	public List<FlightTicket> getAllFlightsAndTicket(String from, String to, int minPrice, int maxPrice,String stop) {
		return flightDao.getAllFlightsAndTicket(from, to, minPrice, maxPrice, stop);
		
	}
	

}
