package model;

import java.sql.Date;
import java.sql.Time;

public class FlightTicket {
	private int flightID;
	private String flightNumber;
	private Date flightDate;
	private String departure;
	private String arrival;
	private Time departureTime;
	private Time arrivalTime;
	
	private String flightDuration;
	private String airlineName;
	private int capacity;
	private String stop;
	private String stop1;
	private String stop2;
	private String stop3;
	
	private int ticketID;
	private int price;
	private String ticketType;
	private String seatNumber;
	private int flight_ID;
	public FlightTicket() {
		super();
	}
	public FlightTicket(int flightID, String flightNumber, Date flightDate, String departure, String arrival,
			Time departureTime, Time arrivalTime, String flightDuration, String airlineName, int capacity,
			String stop, String stop1, String stop2, String stop3, int ticketID, int price, String ticketType,
			String seatNumber, int flight_ID) {
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
		this.ticketID = ticketID;
		this.price = price;
		this.ticketType = ticketType;
		this.seatNumber = seatNumber;
		this.flight_ID = flight_ID;
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
	public Date getFlightDate() {
		return flightDate;
	}
	public void setFlightDate(Date flightDate) {
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
	public Time getDepartureTime() {
		return departureTime;
	}
	public void setDepartureTime(Time departureTime) {
		this.departureTime = departureTime;
	}
	public Time getArrivalTime() {
		return arrivalTime;
	}
	public void setArrivalTime(Time arrivalTime) {
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
	public int getTicketID() {
		return ticketID;
	}
	public void setTicketID(int ticketID) {
		this.ticketID = ticketID;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getTicketType() {
		return ticketType;
	}
	public void setTicketType(String ticketType) {
		this.ticketType = ticketType;
	}
	public String getSeatNumber() {
		return seatNumber;
	}
	public void setSeatNumber(String seatNumber) {
		this.seatNumber = seatNumber;
	}
	public int getFlight_ID() {
		return flight_ID;
	}
	public void setFlight_ID(int flight_ID) {
		this.flight_ID = flight_ID;
	}
	
	
	
}