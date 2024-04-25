package com.two.faq.model.vo;

import java.sql.Date;

public class Faq {
    private int faqId;
    private String userNo;
    private String faqTitle;
    private String answer;
    private String faqContents;
    private Date faqDate;
	public Faq() {
		super();
	}
	public Faq(int faqId, String userNo, String faqTitle, String answer, String faqContents, Date faqDate) {
		super();
		this.faqId = faqId;
		this.userNo = userNo;
		this.faqTitle = faqTitle;
		this.answer = answer;
		this.faqContents = faqContents;
		this.faqDate = faqDate;
	}
	public int getFaqId() {
		return faqId;
	}
	public void setFaqId(int faqId) {
		this.faqId = faqId;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getFaqTitle() {
		return faqTitle;
	}
	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getFaqContents() {
		return faqContents;
	}
	public void setFaqContents(String faqContents) {
		this.faqContents = faqContents;
	}
	public Date getFaqDate() {
		return faqDate;
	}
	public void setFaqDate(Date faqDate) {
		this.faqDate = faqDate;
	}
	@Override
	public String toString() {
		return "Faq [faqId=" + faqId + ", userNo=" + userNo + ", faqTitle=" + faqTitle + ", answer=" + answer
				+ ", faqContents=" + faqContents + ", faqDate=" + faqDate + "]";
	}
    
    
}