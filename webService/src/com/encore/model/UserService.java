package com.encore.model;

public class UserService {
	public UserVO selectUser(String id, String psw) {
		return UserDAO.selectUser(id, psw);
	}
}
