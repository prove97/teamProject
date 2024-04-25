package com.two.product.model.vo;

public class Nreply {
	private int nreplyNo;
	private String nreplyContent;
	private int replyNo;
	private int nreplyWriter;
	private String nreplyDate;
    private Reply reply;
    private Product product;
	
	public Nreply() {
		super();
	}

	public Nreply(int nreplyNo, String nreplyContent, int replyNo, int nreplyWriter, String nreplyDate) {
		super();
		this.nreplyNo = nreplyNo;
		this.nreplyContent = nreplyContent;
		this.replyNo = replyNo;
		this.nreplyWriter = nreplyWriter;
		this.nreplyDate = nreplyDate;
	}
	
    public Nreply(int nreplyNo, String nreplyContent, int replyNo, int nreplyWriter, String nreplyDate, Reply reply,
            Product product) {
        super();
        this.nreplyNo = nreplyNo;
        this.nreplyContent = nreplyContent;
        this.replyNo = replyNo;
        this.nreplyWriter = nreplyWriter;
        this.nreplyDate = nreplyDate;
        this.reply = reply;
        this.product = product;
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

	public String getNreplyDate() {
		return nreplyDate;
	}

	public void setNreplyDate(String nreplyDate) {
		this.nreplyDate = nreplyDate;
	}


    public Reply getReply() {
        return reply;
    }

    public void setReply(Reply reply) {
        this.reply = reply;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

	@Override
	public String toString() {
		return "Nreply [nreplyNo=" + nreplyNo + ", nreplyContent=" + nreplyContent + ", replyNo=" + replyNo
				+ ", nreplyWriter=" + nreplyWriter + ", nreplyDate=" + nreplyDate + ", reply=" + reply + ", product="
				+ product + "]";
	}
    

}
