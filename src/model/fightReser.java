package model;

public class fightReser {
private int id;
private int flight_id;
private int ticket_id;
private int passenger_id;

public fightReser( int flight_id, int ticket_id, int passenger_id) {
	super();
	this.flight_id = flight_id;
	this.ticket_id = ticket_id;
	this.passenger_id = passenger_id;
}
public fightReser(int id, int flight_id, int ticket_id, int passenger_id) {
	super();
	this.id = id;
	this.flight_id = flight_id;
	this.ticket_id = ticket_id;
	this.passenger_id = passenger_id;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getFlight_id() {
	return flight_id;
}
public void setFlight_id(int flight_id) {
	this.flight_id = flight_id;
}
public int getTicket_id() {
	return ticket_id;
}
public void setTicket_id(int ticket_id) {
	this.ticket_id = ticket_id;
}
public int getPassenger_id() {
	return passenger_id;
}
public void setPassenger_id(int passenger_id) {
	this.passenger_id = passenger_id;
}
}
