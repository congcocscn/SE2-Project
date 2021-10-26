package service;

import java.util.List;

import model.User;

public interface UserService {
	void insert(User user);

	void edit(User newUser);

	void delete(int userID);
	
	User get(String email);

	User get(int userID);
	

	List<User> getAll();
	
	List<User> getAllUsersForAdmin();

	User login(String username, String password);
	
	boolean checkExistEmail(String email);
	
	User register(User user);
	

}
