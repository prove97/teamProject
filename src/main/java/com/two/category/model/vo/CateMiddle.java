package com.two.category.model.vo;

public class CateMiddle {
	private String categoryM;
	private String categoryT;
	public CateMiddle() {
		super();
	}
	public CateMiddle(String categoryM, String categoryT) {
		super();
		this.categoryM = categoryM;
		this.categoryT = categoryT;
	}
	@Override
	public String toString() {
		return "cateMiddle [categoryM=" + categoryM + ", categoryT=" + categoryT + "]";
	}
	public String getCategoryM() {
		return categoryM;
	}
	public void setCategoryM(String categoryM) {
		this.categoryM = categoryM;
	}
	public String getCategoryT() {
		return categoryT;
	}
	public void setCategoryT(String categoryT) {
		this.categoryT = categoryT;
	}
	
	
}
