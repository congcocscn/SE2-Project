package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.*;
import dao.PassengerDAO;
import model.Passenger;
import model.User;

public class PassengerDAOImpl implements PassengerDAO{

	// All query string here

	// get all info from passenger
	private String listAllPassenger_query = "select * from passenger";

	// create new passenger
	private String insertPassenger_query = "insert into passenger(passport_number, nationality, first_name, last_name, date_of_birth, email, gender, phone_number, payment_id) values(?,?,?,?,?,?,?,?,?)";

	// update exist passenger
	private String updatePassenger_query = "update passenger set passport_id_number = ?, nationality = ?, address_line1 = ?, address_line2 = ?, address_line3 = ?, country = ?, province = ?, district = ?, postal_code = ?, title = ?, user_id = ?, payment_id = ? where passenger_id = ?";

	// search passenger by passenger_id
	private String searchPassengerById = "select * from passenger where passenger_id like ?";

	// get passenger by id
	private String getPassenger = "select * from passenger where passenger_id = ?";

	// delete a passenger with id
	private String deletePassenger_query = "delete from passenger where passenger_id = ?";

	// get user info of passenger by passenger_id
	private String getPassengerInfo_query = "select * from users where user_id = ?";

	private Connection con = DBConnect.getConnection();
	private PreparedStatement ps;
	private ResultSet rs;

	
	
	
	// All method here
	public List<Passenger> listAllPassengers() {

		List<Passenger> listPassenger = new ArrayList<Passenger>();

		try {
			ps = con.prepareStatement(listAllPassenger_query);
			rs = ps.executeQuery();
			while (rs.next()) {
				
				Passenger passenger = new Passenger();
				passenger.setPassenger_id(rs.getInt("passenger_id"));
				passenger.setPassport_number(rs.getString("passport_number"));
				passenger.setNationality(rs.getString("nationality"));
				passenger.setFirstName(rs.getString("first_name"));
				passenger.setLastName(rs.getString("last_name"));
				passenger.setEmail(rs.getString("email"));
				passenger.setGender(rs.getString("gender"));
				passenger.setPhone_number(rs.getString("phone_number"));
				
				passenger.setDob(rs.getString("date_of_birth"));
				
				passenger.setPayment_id(rs.getInt("payment_id"));

				listPassenger.add(passenger);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listPassenger;
	}

	// insert passenger
	public int insertPassenger(Passenger passenger) {

		try {
			ps = con.prepareStatement(insertPassenger_query,Statement.RETURN_GENERATED_KEYS);
			//ps = con.prepareStatement(insertPassenger_query);
			ps.setString(1, passenger.getPassport_number());
			ps.setString(2, passenger.getNationality());
			ps.setString(3, passenger.getFirstName());
			ps.setString(4, passenger.getLastName());
			ps.setString(5, passenger.getDob());
			ps.setString(6, passenger.getEmail());
			ps.setString(7, passenger.getGender());
			ps.setString(8, passenger.getPhone_number());
			ps.setInt(9, passenger.getPayment_id());

			//ResultSet affectedRows = ps.executeUpdate();
			ps.executeUpdate();
			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {//NEU CO tao moi va ID tu gen o sql
				passenger.setId(rs.getInt(1));// lay id cua bill
			}
			System.out.print("iddasd:"+passenger.getId());
			return passenger.getId();
//			 if (ps.executeUpdate() > 0) {
//		            // Retrieves any auto-generated keys created as a result of executing this Statement object
//		            java.sql.ResultSet generatedKeys = ps.getGeneratedKeys();
//		            if ( generatedKeys.next() ) {
//		                return  generatedKeys.getInt(1);
//		            }
//		        }

		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
	}

	// insert passenger
	public boolean updatePassenger(Passenger passenger) {

		try {
			ps = con.prepareStatement(updatePassenger_query);

			ps.setString(1, passenger.getPassport_number());
			ps.setString(2, passenger.getNationality());
			ps.setString(3, passenger.getFirstName());
			ps.setString(4, passenger.getLastName());
			ps.setString(5, passenger.getDob());
			ps.setString(6, passenger.getEmail());
			ps.setString(7, passenger.getGender());
			ps.setString(8, passenger.getPhone_number());
			ps.setInt(9, passenger.getPayment_id());


			return ps.executeUpdate() > 0;

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	// delete passenger by passenger_id
	public boolean deletePassenger(int passengerId) {
		try {
			ps = con.prepareStatement(deletePassenger_query);
			ps.setInt(1, passengerId);
			return ps.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	// search passenger by passenger_id
	public List<Passenger> searchPassengerById(int passenger_id) {

		List<Passenger> list = new ArrayList<Passenger>();

		try {
			ps = con.prepareStatement(searchPassengerById);
			ps.setInt(1, passenger_id);

			rs = ps.executeQuery();
			while (rs.next()) {
				Passenger passenger = new Passenger();
				passenger.setPassenger_id(rs.getInt("passenger_id"));
				passenger.setPassport_number(rs.getString("passport_number"));
				passenger.setNationality(rs.getString("nationality"));
				passenger.setFirstName(rs.getString("first_name"));
				passenger.setLastName(rs.getString("last_name"));
				passenger.setEmail(rs.getString("email"));
				
				passenger.setDob(rs.getString("date_of_birth"));
				
				passenger.setPayment_id(rs.getInt("payment_id"));

				list.add(passenger);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	// get passenger by id
	public Passenger getPassenger(int passenger_id) {
		
		Passenger passenger = new Passenger();
		try {
			ps = con.prepareStatement(getPassenger);
			ps.setInt(1, passenger_id);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				passenger.setPassenger_id(rs.getInt("passenger_id"));
				passenger.setPassport_number(rs.getString("passport_number"));
				passenger.setNationality(rs.getString("nationality"));
				passenger.setFirstName(rs.getString("first_name"));
				passenger.setLastName(rs.getString("last_name"));
				passenger.setEmail(rs.getString("email"));
				passenger.setPhone_number(rs.getString("phone_number"));
				passenger.setDob(rs.getString("date_of_birth"));
				
				passenger.setPayment_id(rs.getInt("payment_id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return passenger;
	}

	public User getPassengerInfo(int passenger_id) {

		User user = new User();
		try {
			PreparedStatement p = con.prepareStatement("select user_id from Passengers where passenger_id = ?");
			p.setInt(1, passenger_id);
			ResultSet r = p.executeQuery();

			ps = con.prepareStatement(getPassengerInfo_query);
			ps.setInt(1, r.getInt("user_id"));
			rs = ps.executeQuery();

			user.setFamilyName(rs.getString("family_name"));
			user.setGivenName(rs.getString("given_name"));
			user.setPhoneNumber(rs.getString("phone_number"));
			user.setEmail(rs.getString("email"));

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

}
