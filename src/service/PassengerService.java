package service;

import java.util.List;

import model.Passenger;
import model.User;

public interface PassengerService {

	List<Passenger> listAllPassengers();

	int insertPassenger(Passenger passenger);
	
	boolean updatePassenger(Passenger passenger);
	
	boolean deletePassenger(int passengerId);
	
	User getPassengerInfo(int passengerId);
	
	List<Passenger> searchPassengerById(int passengerId);
	
	Passenger getPassenger(int passengerId);

}
