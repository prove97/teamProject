package com.two.member.model.vo;

import java.sql.Date;

public class Member {
	private int userNo;
	private String userId;
	private String userPwd;
	private String authority;
	private String phone;
	private String activated;
	private int score;
	private Date joinDate;
	
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
	
	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", authority=" + authority
				+ ", phone=" + phone + ", activated=" + activated + ", score=" + score + ", joinDate=" + joinDate + "]";
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
	
	
	

}
