package model;

import java.io.Serializable;

public class Ticket implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int ticketID;
	private int price;
	private String ticketType;
	private String seatNumber;
	private int flightID;

	public Ticket() {
		super();
	}

	public Ticket(int ticketID, int price, String ticketType, String seatNumber, int flightID) {
		super();
		this.ticketID = ticketID;
		this.price = price;
		this.ticketType = ticketType;
		this.seatNumber = seatNumber;
		this.flightID = flightID;
	}
	public Ticket( int price, String ticketType, String seatNumber, int flightID) {
		super();
		
		this.price = price;
		this.ticketType = ticketType;
		this.seatNumber = seatNumber;
		this.flightID = flightID;
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

	public int getFlightID() {
		return flightID;
	}

	public void setFlightID(int flightID) {
		this.flightID = flightID;
	}

	@Override
	public String toString() {
		return "Ticket [ticketID=" + ticketID + ", price=" + price + ", ticketType=" + ticketType + ", seatNumber="
				+ seatNumber + ", flightID=" + flightID + "]";
	}

}
