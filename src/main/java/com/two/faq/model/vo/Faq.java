package com.two.faq.model.vo;

import java.sql.Date;

public class Faq {
	private int faqId;
	private int userNo;
	private String faqTitle;
	private String answer;
	private String faqcontents;
	private Date faqDate;
	
	public Faq() {
		super();
	}

	public Faq(int faqId, int userNo, String faqTitle, String answer, String faqcontents, Date faqDate) {
		super();
		this.faqId = faqId;
		this.userNo = userNo;
		this.faqTitle = faqTitle;
		this.answer = answer;
		this.faqcontents = faqcontents;
		this.faqDate = faqDate;
	}

	public int getFaqId() {
		return faqId;
	}

	public void setFaqId(int faqId) {
		this.faqId = faqId;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
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

	public String getFaqcontents() {
		return faqcontents;
	}

	public void setFaqcontents(String faqcontents) {
		this.faqcontents = faqcontents;
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
				+ ", faqcontents=" + faqcontents + ", faqDate=" + faqDate + "]";
	}
	
	
}
