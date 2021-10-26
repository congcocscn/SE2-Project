package service;

import java.util.List;

import model.fightReser;

public interface FlightReserService {

	void edit(fightReser newFlight);
	
	void delete(int flightID);
	
	fightReser get(int flightID);
	
	List<fightReser> getAll(String from, String to);

}
