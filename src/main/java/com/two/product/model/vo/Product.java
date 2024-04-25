package com.two.product.model.vo;

import java.sql.Date;
import java.util.ArrayList;

public class Product {
	private int goodsId;
	private int sellerNo;
	private String categoryM;
	private String title;
	private String status;
	private int sellPrice;
	private int viewCount;
	private String pExplain;
	private String enrollDate;
	private int loveIt;
	private String returnPd;
	private String locationT;
	private String productStatus;
	private String nickname;
	private int score;
	private String filePath;
	private String changeName;
	public Product() {
	}
	public Product(int goodsId, int sellerNo, String categoryM, String title, String status, int sellPrice,
			int viewCount, String pExplain, String enrollDate, int loveIt, String returnPd, String locationT,
			String productStatus, String nickname, int score, String filePath, String changeName) {
		this.goodsId = goodsId;
		this.sellerNo = sellerNo;
		this.categoryM = categoryM;
		this.title = title;
		this.status = status;
		this.sellPrice = sellPrice;
		this.viewCount = viewCount;
		this.pExplain = pExplain;
		this.enrollDate = enrollDate;
		this.loveIt = loveIt;
		this.returnPd = returnPd;
		this.locationT = locationT;
		this.productStatus = productStatus;                             
		this.nickname = nickname;                                       
		this.score = score;                                             
		this.filePath = filePath;
		this.changeName = changeName;
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
	public String getpExplain() {
		return pExplain;
	}
	public void setpExplain(String pExplain) {
		this.pExplain = pExplain;
	}
	public String getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}
	public int getLoveIt() {
		return loveIt;
	}
	public void setLoveIt(int loveIt) {
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
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getChangeName() {
		return changeName;
	}
	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}
	
	
}
