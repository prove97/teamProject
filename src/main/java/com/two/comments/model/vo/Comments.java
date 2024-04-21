package com.two.comments.model.vo;

import java.sql.Date;

public class Comments {
	private int key1;
	private int userNo;
	private int goodsId;
	private int postId;
	private String content;
	private Date commentsDate;
	private int key2;
	
	public Comments() {
		super();
	}

	public Comments(int key1, int userNo, int goodsId, int postId, String content, Date commentsDate, int key2) {
		super();
		this.key1 = key1;
		this.userNo = userNo;
		this.goodsId = goodsId;
		this.postId = postId;
		this.content = content;
		this.commentsDate = commentsDate;
		this.key2 = key2;
	}

	@Override
	public String toString() {
		return "Comments [key1=" + key1 + ", userNo=" + userNo + ", goodsId=" + goodsId + ", postId=" + postId
				+ ", content=" + content + ", commentsDate=" + commentsDate + ", key2=" + key2 + "]";
	}

	public int getKey1() {
		return key1;
	}

	public void setKey1(int key1) {
		this.key1 = key1;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCommentsDate() {
		return commentsDate;
	}

	public void setCommentsDate(Date commentsDate) {
		this.commentsDate = commentsDate;
	}

	public int getKey2() {
		return key2;
	}

	public void setKey2(int key2) {
		this.key2 = key2;
	}

}
