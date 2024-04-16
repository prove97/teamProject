package com.two.category.model.vo;

public class CateTop {
	private String categoryId;

	public CateTop() {
		super();
	}

	public CateTop(String categoryId) {
		super();
		this.categoryId = categoryId;
	}

	@Override
	public String toString() {
		return "CateTop [categoryId=" + categoryId + "]";
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	
	
}
