package com.model;

public class CommentVO {

	private String name, date, message;
	
	public CommentVO() {}
	
	public CommentVO(String name, String date, String message) {
		this.name = name;
		this.date = date;
		this.message = message;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
}
