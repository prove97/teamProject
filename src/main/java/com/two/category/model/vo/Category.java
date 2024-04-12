package com.two.category.model.vo;

public class Category {

	private String categortId;
	private String categoryM;
	private String categoryT;
	
	public Category() {
		super();
	}

	public Category(String categortId, String categoryM, String categoryT) {
		super();
		this.categortId = categortId;
		this.categoryM = categoryM;
		this.categoryT = categoryT;
	}

	public String getCategortId() {
		return categortId;
	}

	public void setCategortId(String categortId) {
		this.categortId = categortId;
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

	@Override
	public String toString() {
		return "Category [categortId=" + categortId + ", categoryM=" + categoryM + ", categoryT=" + categoryT + "]";
	}
	
	
	
}
