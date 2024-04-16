package com.two.attachment.model.vo;

import java.sql.Date;

public class Attachment {
	
	private int fileNo;
	private int refBno;
	private Date uploadDate;
	private int fileLevel;
	private String filePath;
	private int goodsId;
	
	public Attachment() {
		super();
	}
	
	public Attachment(int fileNo, int refBno, Date uploadDate, int fileLevel, String filePath, int goodsId) {
		super();
		this.fileNo = fileNo;
		this.refBno = refBno;
		this.uploadDate = uploadDate;
		this.fileLevel = fileLevel;
		this.filePath = filePath;
		this.goodsId = goodsId;
	}
	
	@Override
	public String toString() {
		return "Attachment [fileNo=" + fileNo + ", refBno=" + refBno + ", uploadDate=" + uploadDate + ", fileLevel="
				+ fileLevel + ", filePath=" + filePath + ", goodsId=" + goodsId + "]";
	}
	
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public int getRefBno() {
		return refBno;
	}
	public void setRefBno(int refBno) {
		this.refBno = refBno;
	}
	public Date getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}
	public int getFileLevel() {
		return fileLevel;
	}
	public void setFileLevel(int fileLevel) {
		this.fileLevel = fileLevel;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	
	
}
