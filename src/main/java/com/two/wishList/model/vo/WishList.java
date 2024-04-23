package com.two.wishList.model.vo;

import java.sql.Date;

import com.two.member.model.vo.Member;
import com.two.product.model.vo.Product;

public class WishList {
	private int userNo;
	private int goodsId;
	private Date wishDate;
	private Member member;
	private Product product;
	
	public WishList() {
		super();
	}
	
	public WishList(int userNo, int goodsId, Date wishDate) {
		super();
		this.userNo = userNo;
		this.goodsId = goodsId;
		this.wishDate = wishDate;
	}
	
	
	public WishList(int userNo, int goodsId, Date wishDate, Member member, Product product) {
		super();
		this.userNo = userNo;
		this.goodsId = goodsId;
		this.wishDate = wishDate;
		this.member = member;
		this.product = product;
	}
	

	@Override
	public String toString() {
		return "WishList [userNo=" + userNo + ", goodsId=" + goodsId + ", wishDate=" + wishDate + ", member=" + member
				+ ", product=" + product + "]";
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
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
}
