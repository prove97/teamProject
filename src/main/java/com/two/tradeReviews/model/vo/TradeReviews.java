package com.two.tradeReviews.model.vo;

import java.sql.Date;

public class TradeReviews {
	private int reviewId;
	private int sellerNo;
	private int buyerNo;
	private int goodsId;
	private String message;
	private int fieldScore;
	private Date reviewDate;
	public TradeReviews() {
		super();
	}
	public TradeReviews(int reviewId, int sellerNo, int buyerNo, int goodsId, String message, int fieldScore,
			Date reviewDate) {
		super();
		this.reviewId = reviewId;
		this.sellerNo = sellerNo;
		this.buyerNo = buyerNo;
		this.goodsId = goodsId;
		this.message = message;
		this.fieldScore = fieldScore;
		this.reviewDate = reviewDate;
	}
	@Override
	public String toString() {
		return "TradeReviews [reviewId=" + reviewId + ", sellerNo=" + sellerNo + ", buyerNo=" + buyerNo + ", goodsId="
				+ goodsId + ", message=" + message + ", fieldScore=" + fieldScore + ", reviewDate=" + reviewDate + "]";
	}
	public int getReviewId() {
		return reviewId;
	}
	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}
	public int getSellerNo() {
		return sellerNo;
	}
	public void setSellerNo(int sellerNo) {
		this.sellerNo = sellerNo;
	}
	public int getBuyerNo() {
		return buyerNo;
	}
	public void setBuyerNo(int buyerNo) {
		this.buyerNo = buyerNo;
	}
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getFieldScore() {
		return fieldScore;
	}
	public void setFieldScore(int fieldScore) {
		this.fieldScore = fieldScore;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	
	
}
