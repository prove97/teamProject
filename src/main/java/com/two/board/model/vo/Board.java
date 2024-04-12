package com.two.board.model.vo;

import java.sql.Date;

public class Board {
	
	private int postId;
	private int userNo;
	private int fileNo;
	private String categoryId;
	private Date writeDate;
	private String titleId;
	private String detaiId;
	private int eyes;
	private int mind;
	
	public Board() {
		super();
	}
	
	public Board(int postId, int userNo, int fileNo, String categoryId, Date writeDate, String titleId, String detaiId,
			int eyes, int mind) {
		super();
		this.postId = postId;
		this.userNo = userNo;
		this.fileNo = fileNo;
		this.categoryId = categoryId;
		this.writeDate = writeDate;
		this.titleId = titleId;
		this.detaiId = detaiId;
		this.eyes = eyes;
		this.mind = mind;
	}
	
	@Override
	public String toString() {
		return "Board [postId=" + postId + ", userNo=" + userNo + ", fileNo=" + fileNo + ", categoryId=" + categoryId
				+ ", writeDate=" + writeDate + ", titleId=" + titleId + ", detaiId=" + detaiId + ", eyes=" + eyes
				+ ", mind=" + mind + "]";
	}
	
	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public String getTitleId() {
		return titleId;
	}
	public void setTitleId(String titleId) {
		this.titleId = titleId;
	}
	public String getDetaiId() {
		return detaiId;
	}
	public void setDetaiId(String detaiId) {
		this.detaiId = detaiId;
	}
	public int getEyes() {
		return eyes;
	}
	public void setEyes(int eyes) {
		this.eyes = eyes;
	}
	public int getMind() {
		return mind;
	}
	public void setMind(int mind) {
		this.mind = mind;
	}
	
	
}
