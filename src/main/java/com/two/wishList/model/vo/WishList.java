package com.two.wishList.model.vo;

import java.sql.Date;

public class WishList {
	private int userNo;
	private int goodsId;
	private Date wishDate;
	public WishList() {
		super();
	}
	public WishList(int userNo, int goodsId, Date wishDate) {
		super();
		this.userNo = userNo;
		this.goodsId = goodsId;
		this.wishDate = wishDate;
	}
	@Override
	public String toString() {
		return "WishList [userNo=" + userNo + ", goodsId=" + goodsId + ", wishDate=" + wishDate + "]";
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
	public Date getWishDate() {
		return wishDate;
	}
	public void setWishDate(Date wishDate) {
		this.wishDate = wishDate;
	}
	
	
}
