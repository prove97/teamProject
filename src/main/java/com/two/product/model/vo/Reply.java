package com.two.product.model.vo;

import java.sql.Date;

public class Reply {
	private int replyNo;
	private String replyContent;
	private int goodsId;
	private int replyWriter;
	private Date replyDate;
	private String nickname;
	private int score;
	
	public Reply() {
		super();
	}

	public Reply(int replyNo, String replyContent, int goodsId, int replyWriter, Date replyDate, String nickname,
			int score) {
		super();
		this.replyNo = replyNo;
		this.replyContent = replyContent;
		this.goodsId = goodsId;
		this.replyWriter = replyWriter;
		this.replyDate = replyDate;
		this.nickname = nickname;
		this.score = score;
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public int getReplyWriter() {
		return replyWriter;
	}

	public void setReplyWriter(int replyWriter) {
		this.replyWriter = replyWriter;
	}

	public Date getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return "Reply [replyNo=" + replyNo + ", replyContent=" + replyContent + ", goodsId=" + goodsId
				+ ", replyWriter=" + replyWriter + ", replyDate=" + replyDate + ", nickname=" + nickname + ", score="
				+ score + "]";
	}
}
