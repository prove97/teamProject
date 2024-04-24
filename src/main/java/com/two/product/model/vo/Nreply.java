package com.two.product.model.vo;

import java.sql.Date;

public class Nreply {
	private int nreplyNo;
	private String nreplyContent;
	private int replyNo;
	private int nreplyWriter;
	private Date nreplyDate;
	
	public Nreply() {
		super();
	}

	public Nreply(int nreplyNo, String nreplyContent, int replyNo, int nreplyWriter, Date nreplyDate) {
		super();
		this.nreplyNo = nreplyNo;
		this.nreplyContent = nreplyContent;
		this.replyNo = replyNo;
		this.nreplyWriter = nreplyWriter;
		this.nreplyDate = nreplyDate;
	}

	public int getNreplyNo() {
		return nreplyNo;
	}

	public void setNreplyNo(int nreplyNo) {
		this.nreplyNo = nreplyNo;
	}

	public String getNreplyContent() {
		return nreplyContent;
	}

	public void setNreplyContent(String nreplyContent) {
		this.nreplyContent = nreplyContent;
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public int getNreplyWriter() {
		return nreplyWriter;
	}

	public void setNreplyWriter(int nreplyWriter) {
		this.nreplyWriter = nreplyWriter;
	}

	public Date getNreplyDate() {
		return nreplyDate;
	}

	public void setNreplyDate(Date nreplyDate) {
		this.nreplyDate = nreplyDate;
	}

	@Override
	public String toString() {
		return "Nreply [nreplyNo=" + nreplyNo + ", nreplyContent=" + nreplyContent + ", replyNo=" + replyNo
				+ ", nreplyWriter=" + nreplyWriter + ", nreplyDate=" + nreplyDate + "]";
	}
}
