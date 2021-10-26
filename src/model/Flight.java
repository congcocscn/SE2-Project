package model;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;

public class Flight implements Serializable {
	
	private int flightID;
	private String flightNumber;
	private String flightDate;
	private String departure;
	private String arrival;
	private String departureTime;
	private String arrivalTime;
	private String flightDuration;
	private String airlineName;
	private int capacity;
	private String stop;
	private String stop1;
	private String stop2;
	private String stop3;
	
	
	public Flight() {
		super();
	}

	

	public Flight(String flightNumber, String flightDate, String departure, String arrival, String departureTime,
			String arrivalTime, String flightDuration, String airlineName, int capacity, String stop, String stop1,
			String stop2, String stop3) {
		super();
		this.flightNumber = flightNumber;
		this.flightDate = flightDate;
		this.departure = departure;
		this.arrival = arrival;
		this.departureTime = departureTime;
		this.arrivalTime = arrivalTime;
		this.flightDuration = flightDuration;
		this.airlineName = airlineName;
		this.capacity = capacity;
		this.stop = stop;
		this.stop1 = stop1;
		this.stop2 = stop2;
		this.stop3 = stop3;
	}



	public Flight(int flightID, String flightNumber, String flightDate, String departure, String arrival,
			String departureTime, String arrivalTime, String flightDuration, String airlineName, int capacity,
			String stop, String stop1, String stop2, String stop3) {
		super();
		this.flightID = flightID;
		this.flightNumber = flightNumber;
		this.flightDate = flightDate;
		this.departure = departure;
		this.arrival = arrival;
		this.departureTime = departureTime;
		this.arrivalTime = arrivalTime;
		this.flightDuration = flightDuration;
		this.airlineName = airlineName;
		this.capacity = capacity;
		this.stop = stop;
		this.stop1 = stop1;
		this.stop2 = stop2;
		this.stop3 = stop3;
	}



	public int getFlightID() {
		return flightID;
	}



	public void setFlightID(int flightID) {
		this.flightID = flightID;
	}



	public String getFlightNumber() {
		return flightNumber;
	}



	public void setFlightNumber(String flightNumber) {
		this.flightNumber = flightNumber;
	}



	public String getFlightDate() {
		return flightDate;
	}



	public void setFlightDate(String flightDate) {
		this.flightDate = flightDate;
	}



	public String getDeparture() {
		return departure;
	}



	public void setDeparture(String departure) {
		this.departure = departure;
	}



	public String getArrival() {
		return arrival;
	}



	public void setArrival(String arrival) {
		this.arrival = arrival;
	}



	public String getDepartureTime() {
		return departureTime;
	}



	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}



	public String getArrivalTime() {
		return arrivalTime;
	}



	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}



	public String getFlightDuration() {
		return flightDuration;
	}



	public void setFlightDuration(String flightDuration) {
		this.flightDuration = flightDuration;
	}



	public String getAirlineName() {
		return airlineName;
	}



	public void setAirlineName(String airlineName) {
		this.airlineName = airlineName;
	}



	public int getCapacity() {
		return capacity;
	}



	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}



	public String getStop() {
		return stop;
	}



	public void setStop(String stop) {
		this.stop = stop;
	}



	public String getStop1() {
		return stop1;
	}



	public void setStop1(String stop1) {
		this.stop1 = stop1;
	}



	public String getStop2() {
		return stop2;
	}



	public void setStop2(String stop2) {
		this.stop2 = stop2;
	}



	public String getStop3() {
		return stop3;
	}



	public void setStop3(String stop3) {
		this.stop3 = stop3;
	}
	
	
	
	
}
