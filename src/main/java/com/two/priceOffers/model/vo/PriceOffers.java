package com.two.priceOffers.model.vo;

import java.sql.Date;

public class PriceOffers {
	private int priceOffersId;
	private int offerUserNo;
	private int goodsId;
	private int offeredPrice;
	private String acceptOrNot;
	private Date offerDate;
	public PriceOffers() {
		super();
	}
	public PriceOffers(int priceOffersId, int offerUserNo, int goodsId, int offeredPrice, String acceptOrNot,
			Date offerDate) {
		super();
		this.priceOffersId = priceOffersId;
		this.offerUserNo = offerUserNo;
		this.goodsId = goodsId;
		this.offeredPrice = offeredPrice;
		this.acceptOrNot = acceptOrNot;
		this.offerDate = offerDate;
	}
	@Override
	public String toString() {
		return "priceOffers [priceOffersId=" + priceOffersId + ", offerUserNo=" + offerUserNo + ", goodsId=" + goodsId
				+ ", offeredPrice=" + offeredPrice + ", acceptOrNot=" + acceptOrNot + ", offerDate=" + offerDate + "]";
	}
	public int getPriceOffersId() {
		return priceOffersId;
	}
	public void setPriceOffersId(int priceOffersId) {
		this.priceOffersId = priceOffersId;
	}
	public int getOfferUserNo() {
		return offerUserNo;
	}
	public void setOfferUserNo(int offerUserNo) {
		this.offerUserNo = offerUserNo;
	}
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public int getOfferedPrice() {
		return offeredPrice;
	}
	public void setOfferedPrice(int offeredPrice) {
		this.offeredPrice = offeredPrice;
	}
	public String getAcceptOrNot() {
		return acceptOrNot;
	}
	public void setAcceptOrNot(String acceptOrNot) {
		this.acceptOrNot = acceptOrNot;
	}
	public Date getOfferDate() {
		return offerDate;
	}
	public void setOfferDate(Date offerDate) {
		this.offerDate = offerDate;
	}
	
	
}
