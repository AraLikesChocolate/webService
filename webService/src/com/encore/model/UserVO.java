package com.encore.model;

import java.sql.Date;

public class UserVO {
	private String id;
	private String password;
	private String name;
	private String email;
	private String gender;
	private Date birthday;
	private String userinfo;

	public UserVO() {
		super();
	}

	public UserVO(String id, String password, String name, String email, String gender, Date birthday,
			String userinfo) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.gender = gender;
		this.birthday = birthday;
		this.userinfo = userinfo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(String userinfo) {
		this.userinfo = userinfo;
	}

	@Override
	public String toString() {
		return "UserVO [id=" + id + ", password=" + password + ", name=" + name + ", email=" + email + ", gender="
				+ gender + ", birthday=" + birthday + ", userinfo=" + userinfo + "]";
	}

}
