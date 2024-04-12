package com.two.evaluationItems.model.vo;

public class EvaluationItems {
	private int fieldScore;
	private String kind;
	private String fastAnswer;
	private String timeAppointment;
	private String productStatus;
	private String detailExplanation;
	private String cheap;
	public EvaluationItems() {
		super();
	}
	public EvaluationItems(int fieldScore, String kind, String fastAnswer, String timeAppointment, String productStatus,
			String detailExplanation, String cheap) {
		super();
		this.fieldScore = fieldScore;
		this.kind = kind;
		this.fastAnswer = fastAnswer;
		this.timeAppointment = timeAppointment;
		this.productStatus = productStatus;
		this.detailExplanation = detailExplanation;
		this.cheap = cheap;
	}
	@Override
	public String toString() {
		return "EvaluationItems [fieldScore=" + fieldScore + ", kind=" + kind + ", fastAnswer=" + fastAnswer
				+ ", timeAppointment=" + timeAppointment + ", productStatus=" + productStatus + ", detailExplanation="
				+ detailExplanation + ", cheap=" + cheap + "]";
	}
	public int getFieldScore() {
		return fieldScore;
	}
	public void setFieldScore(int fieldScore) {
		this.fieldScore = fieldScore;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getFastAnswer() {
		return fastAnswer;
	}
	public void setFastAnswer(String fastAnswer) {
		this.fastAnswer = fastAnswer;
	}
	public String getTimeAppointment() {
		return timeAppointment;
	}
	public void setTimeAppointment(String timeAppointment) {
		this.timeAppointment = timeAppointment;
	}
	public String getProductStatus() {
		return productStatus;
	}
	public void setProductStatus(String productStatus) {
		this.productStatus = productStatus;
	}
	public String getDetailExplanation() {
		return detailExplanation;
	}
	public void setDetailExplanation(String detailExplanation) {
		this.detailExplanation = detailExplanation;
	}
	public String getCheap() {
		return cheap;
	}
	public void setCheap(String cheap) {
		this.cheap = cheap;
	}
	
	
}
