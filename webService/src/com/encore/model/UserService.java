package com.encore.model;

import java.util.List;

public class UserService {
	public UserVO selectUser(String id, String psw) {
		return UserDAO.selectUser(id, psw);
	}
	
	public List<UserVO> selectAllUser() {
		return UserDAO.selectAllUser();
	}

	public boolean checkUserId(String id) {
		return UserDAO.CheckUserId(id);
	}

	public int insertUser(UserVO user) {
		return UserDAO.insertUser(user);
	}
	
	public int updateUser(UserVO user) {
		return UserDAO.updateUser(user);
	}

	public int deleteUser(String id) {
		return UserDAO.deleteUser(id);
	}

	public boolean checkUserPw(String id, String password) {
		// TODO Auto-generated method stub
		return UserDAO.checkUserPw(id,password);
	}

	public List<AddressVO> selectAllAdd() {
		// TODO Auto-generated method stub
		return UserDAO.selectAllAdd();
	}

	public int insertAdd(AddressVO useradd) {
		// TODO Auto-generated method stub
		return UserDAO.insertUser(useradd);
	}

	
}
