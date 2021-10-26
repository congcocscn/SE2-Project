package service.impl;

import java.util.List;

import dao.PassengerDAO;
import dao.impl.PassengerDAOImpl;
import model.Passenger;
import model.User;
import service.PassengerService;

public class PassengerServiceImpl implements PassengerService {

	PassengerDAO passengerDAO = new PassengerDAOImpl();

	@Override
	public List<Passenger> listAllPassengers() {
		return passengerDAO.listAllPassengers();
	}

	@Override
	public int insertPassenger(Passenger passenger) {
		return passengerDAO.insertPassenger(passenger);
	}

	@Override
	public boolean updatePassenger(Passenger newPassenger) {

		Passenger oldPassenger = passengerDAO.getPassenger(newPassenger.getPassenger_id());
		oldPassenger.setPassenger_id(newPassenger.getPassenger_id());
		oldPassenger.setPassport_number(newPassenger.getPassport_number());
		oldPassenger.setNationality(newPassenger.getNationality());
		oldPassenger.setFirstName(newPassenger.getFirstName());
		oldPassenger.setLastName(newPassenger.getLastName());
		oldPassenger.setEmail(newPassenger.getEmail());
		
		oldPassenger.setDob(newPassenger.getDob());
		oldPassenger.setPayment_id(newPassenger.getPayment_id());
		
		

		return passengerDAO.updatePassenger(oldPassenger);

	}

	@Override
	public boolean deletePassenger(int passengerId) {
		return passengerDAO.deletePassenger(passengerId);
	}

	@Override
	public User getPassengerInfo(int passengerId) {
		// TODO Auto-generated method stub
		return passengerDAO.getPassengerInfo(passengerId);
	}

	@Override
	public List<Passenger> searchPassengerById(int passengerId) {
		// TODO Auto-generated method stub
		return passengerDAO.searchPassengerById(passengerId);
	}

	@Override
	public Passenger getPassenger(int passengerId) {
		// TODO Auto-generated method stub
		return passengerDAO.getPassenger(passengerId);
	}

}
