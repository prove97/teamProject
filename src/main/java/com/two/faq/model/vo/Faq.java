package com.two.faq.model.vo;

import java.sql.Date;

public class Faq {
	private int inquiryId;
	private int userNo;
	private String inquiryTitle;
	private String answer;
	private String inquiryContents;
	private Date inquiryDate;
	public Faq() {
		super();
	}
	public Faq(int inquiryId, int userNo, String inquiryTitle, String answer, String inquiryContents,
			Date inquiryDate) {
		super();
		this.inquiryId = inquiryId;
		this.userNo = userNo;
		this.inquiryTitle = inquiryTitle;
		this.answer = answer;
		this.inquiryContents = inquiryContents;
		this.inquiryDate = inquiryDate;
	}
	@Override
	public String toString() {
		return "Faq [inquiryId=" + inquiryId + ", userNo=" + userNo + ", inquiryTitle=" + inquiryTitle + ", answer="
				+ answer + ", inquiryContents=" + inquiryContents + ", inquiryDate=" + inquiryDate + "]";
	}
	public int getInquiryId() {
		return inquiryId;
	}
	public void setInquiryId(int inquiryId) {
		this.inquiryId = inquiryId;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getInquiryTitle() {
		return inquiryTitle;
	}
	public void setInquiryTitle(String inquiryTitle) {
		this.inquiryTitle = inquiryTitle;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getInquiryContents() {
		return inquiryContents;
	}
	public void setInquiryContents(String inquiryContents) {
		this.inquiryContents = inquiryContents;
	}
	public Date getInquiryDate() {
		return inquiryDate;
	}
	public void setInquiryDate(Date inquiryDate) {
		this.inquiryDate = inquiryDate;
	}
	
	
}
