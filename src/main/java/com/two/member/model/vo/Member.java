package com.two.member.model.vo;

import java.sql.Date;

public class Member {
	private int userNo;
	private String userId;
	private String userPwd;
	private String nikName;
	private String authority;
	private String phone;
	private String activated;
	private int score;
	private Date joinDate;
	private String gender;
	private String email;
	private String location;
	
	public Member() {
		super();
	}
	
	public Member(int userNo, String userId, String userPwd, String authority, String phone, String activated,
			int score, Date joinDate) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.authority = authority;
		this.phone = phone;
		this.activated = activated;
		this.score = score;
		this.joinDate = joinDate;
	}

	public Member(int userNo, String userId, String userPwd, String nikName, String authority, String phone, String activated,
			int score, Date joinDate, String gender, String email, String location) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.authority = authority;
		this.phone = phone;
		this.activated = activated;
		this.score = score;
		this.joinDate = joinDate;
		this.gender = gender;
		this.email = email;
		this.location = location;
		this.nikName = nikName;
	}
	
	public Member(String userId, String userPwd, String nikName, String email, String phone, String location, String gender) {
	super();
	this.userId = userId;
	this.userPwd = userPwd;
	this.email = email;
	this.nikName = nikName;
	this.phone = phone;
	this.location = location;
	this.gender = gender;
}

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", authority=" + authority
				+ ", phone=" + phone + ", activated=" + activated + ", score=" + score + ", joinDate=" + joinDate
				+ ", gender=" + gender + ", email=" + email + ", loacation=" + location + "]";
	}

	public String getNikName() {
		return nikName;
	}

	public void setNikName(String nikName) {
		this.nikName = nikName;
	}

	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getActivated() {
		return activated;
	}
	public void setActivated(String activated) {
		this.activated = activated;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLoacation() {
		return location;
	}
	public void setLoacation(String loacation) {
		this.location = loacation;
	}
	
	
	

}
