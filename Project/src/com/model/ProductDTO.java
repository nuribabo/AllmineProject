package com.model;

public class ProductDTO {

	private String product_id;
	private String product_name;
	private int price;
	private int discount_rate;
	private int weight;
	private String origin;
	private String IMG_ADDR;
	public ProductDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ProductDTO(String product_id, String product_name, int price, int discount_rate, int weight, String origin,
			String iMG_ADDR) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.price = price;
		this.discount_rate = discount_rate;
		this.weight = weight;
		this.origin = origin;
		IMG_ADDR = iMG_ADDR;
	}

	public String getIMG_ADDR() {
		return IMG_ADDR;
	}

	public void setIMG_ADDR(String iMG_ADDR) {
		IMG_ADDR = iMG_ADDR;
	}

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
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	
}