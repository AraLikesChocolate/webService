package com.encore.model;

import java.util.List;

public class UserService {
	public UserVO selectUser(String id, String psw) {
		return UserDAO.selectUser(id, psw);
	}
	
	public List<UserVO> selectAllUser() {
		return UserDAO.selectAllUser();
	}

	public int insertUser(UserVO user) {
		return UserDAO.insertUser(user);
	}
	
	public int updateUser(UserVO user) {
		return UserDAO.updateUser(user);
	}

	public boolean checkUserId(String id) {
		return UserDAO.CheckUserId(id);
	}

	
}
