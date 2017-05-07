package com.acpms.ssm.pojo;

public class UserTest {
	private String userId;
	private String userName;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public UserTest(String userId, String userName) {
		super();
		this.userId = userId;
		this.userName = userName;
	}
	
	@Override
	public String toString() {
		return "UserTest [userId=" + userId + ", userName=" + userName + "]";
	}
}
