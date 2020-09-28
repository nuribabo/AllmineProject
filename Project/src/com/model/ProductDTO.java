package com.model;

public class ProductDTO {

	private String product_id;
	private String product_name;
	private String price;
	private String discount_rate;
	private String weight;
	private String origin;
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDiscount_rate() {
		return discount_rate;
	}
	public void setDiscount_rate(String discount_rate) {
		this.discount_rate = discount_rate;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public ProductDTO(String product_id, String product_name, String price, String discount_rate, String weight,
			String origin) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.price = price;
		this.discount_rate = discount_rate;
		this.weight = weight;
		this.origin = origin;
	}
	public ProductDTO() {
	}

	
	
}
