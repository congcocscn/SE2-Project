package dao;

import java.util.List;

import model.User;

public interface UserDAO {
	void insert(User user);

	void edit(User user);

	boolean delete(int id);

	User get(String email);
	
	User get(int id);

	List<User> getAll();
	
	boolean checkExistEmail(String email);
	
User register(User user );
	User login(String email, String password);

	List<User> getAllUsersForAdmin();
}


