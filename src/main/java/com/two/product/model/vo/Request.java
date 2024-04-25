package com.two.product.model.vo;

import java.sql.Date;

public class Request {
	private int requestNo;
	private int requestPrice;
	private int goodsId;
	private int requestWriter;
	private String requestDate;
	private String nickname;
	private int score;
	
	public Request() {
		super();
	}

	public Request(int requestNo, int requestPrice, int goodsId, int requestWriter, String requestDate, String nickname,
			int score) {
		super();
		this.requestNo = requestNo;
		this.requestPrice = requestPrice;
		this.goodsId = goodsId;
		this.requestWriter = requestWriter;
		this.requestDate = requestDate;
		this.nickname = nickname;
		this.score = score;
	}

	public int getRequestNo() {
		return requestNo;
	}

	public void setRequestNo(int requestNo) {
		this.requestNo = requestNo;
	}

	public int getRequestPrice() {
		return requestPrice;
	}

	public void setRequestPrice(int requestPrice) {
		this.requestPrice = requestPrice;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public int getRequestWriter() {
		return requestWriter;
	}

	public void setRequestWriter(int requestWriter) {
		this.requestWriter = requestWriter;
	}

	public String getRequestDate() {
		return requestDate;
	}

	public void setRequestDate(String requestDate) {
		this.requestDate = requestDate;
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
		return "Request [requestNo=" + requestNo + ", requestPrice=" + requestPrice + ", goodsId=" + goodsId
				+ ", requestWriter=" + requestWriter + ", requestDate=" + requestDate + ", nickname=" + nickname
				+ ", score=" + score + "]";
	}
}
