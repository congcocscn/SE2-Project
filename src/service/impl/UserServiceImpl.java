package service.impl;

import java.util.List;

import dao.UserDAO;
import service.UserService;
import dao.impl.flightReserDAOImpl;
import model.User;
import dao.impl.UserDAOImpl;
public class UserServiceImpl implements UserService {
	UserDAO userDAO =  new UserDAOImpl();

	@Override
	public void insert(User user) {
		// TODO Auto-generated method stub
		userDAO.insert(user);
	}

	@Override
	public void edit(User newUser) {
		// TODO Auto-generated method stub
		User oldUser = userDAO.get(newUser.getId());
		
		oldUser.setFamilyName(newUser.getFamilyName());
		oldUser.setGivenName(newUser.getGivenName());
		oldUser.setPhoneNumber(newUser.getPhoneNumber());
		oldUser.setEmail(newUser.getEmail());
		oldUser.setPassword(newUser.getPassword());
		oldUser.setRole(newUser.getRole());
		
		userDAO.edit(oldUser);
	}

	@Override
	public void delete(int userID) {
		// TODO Auto-generated method stub
		userDAO.delete(userID);
	}

	@Override
	public User get(int userID) {
		// TODO Auto-generated method stub
		return userDAO.get(userID);
	}
	
	@Override
	public User get(String email) {
		return userDAO.get(email);
	}

	@Override
	public List<User> getAll() {
		// TODO Auto-generated method stub
		return userDAO.getAll();
	}
	
	@Override
	public List<User> getAllUsersForAdmin() {
		// TODO Auto-generated method stub
		return userDAO.getAllUsersForAdmin();
	}

	@Override
	public User login(String email, String password) {
		// TODO Auto-generated method stub
//		User user = this.get(email);
//		if (user != null && password.equals(user.getPassword())) {
//			return user;
//		}
//
//		return null;
		return userDAO.login(email, password);
	}

	@Override
	public boolean checkExistEmail(String email) {
		// TODO Auto-generated method stub
		return userDAO.checkExistEmail(email);
	}
	
	@Override
	public User register(User user) {
		return userDAO.register(user);
	}

}
