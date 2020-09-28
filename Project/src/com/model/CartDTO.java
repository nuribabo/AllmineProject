package com.model;

public class CartDTO {
	private String member_id;
	private String product_id;
	private int quantity;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public CartDTO(String member_id, String product_id, int quantity) {
		super();
		this.member_id = member_id;
		this.product_id = product_id;
		this.quantity = quantity;
	}
	
	public CartDTO() {
	}
	
	
	
}
