package com.care.dto;

import java.util.Date;

public class MemberDTO {

	private String userId;
	private String userPass;
	private Date regDate;
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [userId=" + userId + ", userPass=" + userPass + ", regDate="
				+ regDate + "]";
	}
	
}