package dao;

import java.util.List;

import model.fightReser;

public interface fightReserDAO {

	void insert(fightReser flight);
	
	int edit(fightReser flight);
	
	int delete(int flightID);
	
	
	fightReser get(int fightReser);
	
	List<fightReser> getAll(String from ,String to);
	
	List<fightReser> search(String flightNumber);
	
	

}

