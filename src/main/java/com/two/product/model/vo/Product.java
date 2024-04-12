package com.two.product.model.vo;

import java.sql.Date;

public class Product {
	private int goodsId;
	private int sellerNo;
	private String categoryM;
	private String title;
	private String status;
	private int sellPrice;
	private int viewCount;
	private String pExplane;;
	private Date enrollDate;
	private String loveIt;
	private String returnPd;
	private String locationT;
	private String productStatus;
	public Product() {
		super();
	}
	public Product(int goodsId, int sellerNo, String categoryM, String title, String status, int sellPrice,
			int viewCount, String pExplane, Date enrollDate, String loveIt, String returnPd, String locationT,
			String productStatus) {
		super();
		this.goodsId = goodsId;
		this.sellerNo = sellerNo;
		this.categoryM = categoryM;
		this.title = title;
		this.status = status;
		this.sellPrice = sellPrice;
		this.viewCount = viewCount;
		this.pExplane = pExplane;
		this.enrollDate = enrollDate;
		this.loveIt = loveIt;
		this.returnPd = returnPd;
		this.locationT = locationT;
		this.productStatus = productStatus;
	}
	@Override
	public String toString() {
		return "Product [goodsId=" + goodsId + ", sellerNo=" + sellerNo + ", categoryM=" + categoryM + ", title="
				+ title + ", status=" + status + ", sellPrice=" + sellPrice + ", viewCount=" + viewCount + ", pExplane="
				+ pExplane + ", enrollDate=" + enrollDate + ", loveIt=" + loveIt + ", returnPd=" + returnPd
				+ ", locationT=" + locationT + ", productStatus=" + productStatus + "]";
	}
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public int getSellerNo() {
		return sellerNo;
	}
	public void setSellerNo(int sellerNo) {
		this.sellerNo = sellerNo;
	}
	public String getCategoryM() {
		return categoryM;
	}
	public void setCategoryM(String categoryM) {
		this.categoryM = categoryM;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(int sellPrice) {
		this.sellPrice = sellPrice;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public String getpExplane() {
		return pExplane;
	}
	public void setpExplane(String pExplane) {
		this.pExplane = pExplane;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getLoveIt() {
		return loveIt;
	}
	public void setLoveIt(String loveIt) {
		this.loveIt = loveIt;
	}
	public String getReturnPd() {
		return returnPd;
	}
	public void setReturnPd(String returnPd) {
		this.returnPd = returnPd;
	}
	public String getLocationT() {
		return locationT;
	}
	public void setLocationT(String locationT) {
		this.locationT = locationT;
	}
	public String getProductStatus() {
		return productStatus;
	}
	public void setProductStatus(String productStatus) {
		this.productStatus = productStatus;
	}
	
	
}