package com.two.attachment.model.vo;

import java.sql.Date;

public class Attachment {
	
	private int fileNo;
	private int refBno;
	private Date uploadDate;
	private int fileLevel;
	private String filePath;
	private String originName;
	private int goodsId;
	private String changeName;
	
	public Attachment() {
		super();
	}

	public Attachment(int fileNo, int refBno, Date uploadDate, int fileLevel, String filePath, String originName,
			int goodsId, String changeName) {
		super();
		this.fileNo = fileNo;
		this.refBno = refBno;
		this.uploadDate = uploadDate;
		this.fileLevel = fileLevel;
		this.filePath = filePath;
		this.originName = originName;
		this.goodsId = goodsId;
		this.changeName = changeName;
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

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	@Override
	public String toString() {
		return "Attachment [fileNo=" + fileNo + ", refBno=" + refBno + ", uploadDate=" + uploadDate + ", fileLevel="
				+ fileLevel + ", filePath=" + filePath + ", originName=" + originName + ", goodsId=" + goodsId
				+ ", changeName=" + changeName + "]";
	}
}
