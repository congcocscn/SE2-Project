package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnect;
import dao.UserDAO;
import model.Flight;
import model.User;

public class UserDAOImpl extends DBConnect implements UserDAO {
	Connection connection = super.getConnection();

	@Override
	public void insert(User user) {
		// TODO Auto-generated method stub
		try {
			String INSERT_USER = "INSERT INTO users (family_name, given_name, phone_number, email, password,role) VALUES (?, ?, ?, ?, ?,?)";
			PreparedStatement ps = connection.prepareStatement(INSERT_USER);
			ps.setString(1, user.getFamilyName());
			ps.setString(2, user.getGivenName());
			ps.setString(3, user.getPhoneNumber());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getPassword());
			ps.setString(6, user.getRole());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void edit(User user) {
		// TODO Auto-generated method stub
		boolean rowUpdated = false;
		try {
			String UPDATE_USER = "UPDATE users SET family_name = ?, given_name = ?, phone_number = ?, email = ?, password = ?,role=? WHERE user_id = ?";
			PreparedStatement ps = connection.prepareStatement(UPDATE_USER);
			ps.setString(1, user.getFamilyName());
			ps.setString(2, user.getGivenName());
			ps.setString(3, user.getPhoneNumber());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getPassword());
			ps.setString(6, user.getRole());
			ps.setInt(7, user.getId());
			rowUpdated = ps.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		boolean rowDeleted = false;
		try {
			String DELETE_USER = "DELETE FROM users WHERE user_id = ?";
			PreparedStatement ps = connection.prepareStatement(DELETE_USER);
			ps.setInt(1, id);
			rowDeleted = ps.executeUpdate() > 0;
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowDeleted;
	}

	@Override
	public User get(int id) {
		// TODO Auto-generated method stub
		User user = null;

		try {
			String SELECT_USER_BY_ID = "SELECT * FROM users WHERE user_id = ?";
			PreparedStatement ps = connection.prepareStatement(SELECT_USER_BY_ID);
			ps.setInt(1, id);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}

	@Override
	public List<User> getAll() {
		List<User> users;
		users = new ArrayList<>();
		try {
			String SELECT_ALL_USERS = "SELECT * FROM users";
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while (rs.next()) {
				int id = rs.getInt("user_id");
				String family_name = rs.getString("family_name");
				String given_name = rs.getString("given_name");
				String phone_number = rs.getString("phone_number");
				String email = rs.getString("email");
				String password = rs.getString("password");
				String role=rs.getString("role");
				users.add(new User(id, family_name, given_name, phone_number, email, password,role));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}
	
	@Override
	public List<User> getAllUsersForAdmin() {
		List<User> userList;
		userList = new ArrayList<User>();
		
		try {
			String SELECT_ALL_USERS_FOR_ADMIN = "SELECT user_id, family_name,given_name, phone_number,email  FROM users";
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS_FOR_ADMIN);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("user_id"));
				user.setFamilyName(rs.getString("family_name"));
				user.setGivenName(rs.getString("given_name"));
				user.setPhoneNumber(rs.getString("phone_number"));
				user.setEmail(rs.getString("email"));
				
				userList.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userList;
	}

	


	@Override
	public boolean checkExistEmail(String email) {
		// TODO Auto-generated method stub
		boolean duplicate = false;
		
		try {
			String query = "select * from users where email = ?";

			PreparedStatement psmt = connection.prepareStatement(query);

			psmt.setString(1, email);

			ResultSet resultSet = psmt.executeQuery();

			if (resultSet.next()) {
				duplicate = true;
			}
//			psmt.close();
			//connection.close();
		} catch (SQLException ex) {
		}
		return duplicate;
	}

	@Override
	public User get(String email) {
		// TODO Auto-generated method stub
		User user = null;

		try {
			String SELECT_USER_BY_ID = "SELECT * FROM users WHERE id = ?";
			PreparedStatement ps = connection.prepareStatement(SELECT_USER_BY_ID);
			ps.setString(1, email);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}

	
	@Override
	public User register(User user ) {
		try {
			String INSERT_USER = "INSERT INTO users (family_name, given_name, phone_number, email, password,role) VALUES (?, ?, ?, ?, ?,?)";
			PreparedStatement ps = connection.prepareStatement(INSERT_USER,Statement.RETURN_GENERATED_KEYS);
			ps.setString(1,user.getFamilyName());
			ps.setString(2, user.getGivenName());
			ps.setString(3, user.getPhoneNumber());
			ps.setString(4, user.getEmail());
			ps.setString(5,user.getPassword());
			ps.setInt(6, 1);
			ps.executeUpdate();
			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {//NEU CO tao moi va ID tu gen o sql
				user.setId(rs.getInt(1));// lay id cua bill
			}
			System.out.print("iddasd:"+user.getId());
			return user;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public User login(String email, String password) {
		String query = "SELECT * FROM users where email=? and password=?";

		try {
			
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet resultSet = ps.executeQuery();
			while( resultSet.next()) {
				User user = new User();
				user.setEmail(resultSet.getString("email"));
				user.setFamilyName(resultSet.getString("family_name"));
				user.setGivenName(resultSet.getString("given_name"));
				user.setPhoneNumber(resultSet.getString("phone_number"));
				user.setPassword(resultSet.getString("password"));
				return user;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return null;
	}

	

}
