package com.model;

public class CartDTO {
	private String member_id;
	private String product_name;
	private String product_id;
	private int quantity;
	private String img_addr;
	private int price;
	private int discount_rate ;
	
	
	public CartDTO(String member_id, String product_id) {
		this.member_id = member_id;
		this.product_id = product_id;
	}
	
	public CartDTO(String member_id, String product_id, int quantity) {
		this.member_id = member_id;
		this.product_id = product_id;
		this.quantity = quantity;
	}

	public CartDTO(String product_name, String product_id, int quantity, String img_addr, int price,
			int discount_rate) {
		super();
		this.product_name = product_name;
		this.product_id = product_id;
		this.quantity = quantity;
		this.img_addr = img_addr;
		this.price = price;
		this.discount_rate = discount_rate;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public void setImg_addr(String img_addr) {
		this.img_addr = img_addr;
	}
	
	public String getImg_addr() {
		return this.img_addr;
	}
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDiscount_rate() {
		return discount_rate;
	}
	public void setDiscount_rate(int discount_rate) {
		this.discount_rate = discount_rate;
	}
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
	
	
	public CartDTO() {
	}
	
	
	
}
