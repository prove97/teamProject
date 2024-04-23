package com.two.member.model.vo;

import java.sql.Date;

public class Member {
	private int userNo;
	private String userId;
	private String userPwd;
	private String nickname;
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
	
	public Member(String userId, String nickname, String phone) {
		super();
		this.userId = userId;
		this.nickname = nickname;
		this.phone = phone;
	}

	public Member(String nickname, String phone) {
		super();
		this.nickname = nickname;
		this.phone = phone;
	}

	public Member(int userNo, String userId, String userPwd, String nickname, String authority, String phone,
			String activated, int score, Date joinDate, String gender, String email, String location) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.nickname = nickname;
		this.authority = authority;
		this.phone = phone;
		this.activated = activated;
		this.score = score;
		this.joinDate = joinDate;
		this.gender = gender;
		this.email = email;
		this.location = location;
	}
	
	public Member(String userId, String userPwd, String nickname, String phone, String gender, String email,
			String location) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.nickname = nickname;
		this.phone = phone;
		this.gender = gender;
		this.email = email;
		this.location = location;
	}

	public Member(int userNo, String userId, String userPwd, String nickname, String authority, String phone,
			String activated, int score, Date joinDate) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.nickname = nickname;
		this.authority = authority;
		this.phone = phone;
		this.activated = activated;
		this.score = score;
		this.joinDate = joinDate;
	}

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", nickname=" + nickname
				+ ", authority=" + authority + ", phone=" + phone + ", activated=" + activated + ", score=" + score
				+ ", joinDate=" + joinDate + ", gender=" + gender + ", email=" + email + ", location=" + location + "]";
	}

	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
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
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	

}