package service.impl;

import java.util.List;

import model.Flight;
import model.fightReser;
import dao.FlightDAO;
import dao.fightReserDAO;
import dao.impl.flightReserDAOImpl;
import service.FlightReserService;

public class FlightReserImpl implements FlightReserService {

	fightReserDAO fightReserDAO =new flightReserDAOImpl();
	
	@Override
	public void edit(fightReser newFlighReser) {
		// TODO Auto-generated method stub
		fightReser oldFlight = fightReserDAO.get(newFlighReser.getFlight_id());
		
		oldFlight.setFlight_id(newFlighReser.getFlight_id());
		oldFlight.setPassenger_id(newFlighReser.getPassenger_id());
		oldFlight.setTicket_id(newFlighReser.getTicket_id());
		
		fightReserDAO.edit(oldFlight);
	}

	@Override
	public void delete(int flightReserID) {
		// TODO Auto-generated method stub
		fightReserDAO.delete(flightReserID);

	}

	@Override
	public fightReser get(int flightReserID) {
		
		return fightReserDAO.get(flightReserID);
	}


	@Override
	public List<fightReser> getAll(String from ,String to) {
		// TODO Auto-generated method stub
		return fightReserDAO.getAll(from, to);
	}

}
