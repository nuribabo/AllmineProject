package com.model2;

public class MemberDTO {
	
	private String member_id;
	private String pw;
	private String name;
	private String email;
	private String phone;
	private String member_addr1;
	private String member_addr2;
	private String member_addr3;
	private String gender;
	private String birth;
	
	
	
	
	public MemberDTO(String member_id, String pw, String name) {
		super();
		this.member_id = member_id;
		this.pw = pw;
		this.name = name;
	}

	public MemberDTO(String member_id, String pw, String name, String email, String phone, String member_addr1,
			String member_addr2, String member_addr3, String gender, String birth) {
		super();
		this.member_id = member_id;
		this.pw = pw;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.member_addr1 = member_addr1;
		this.member_addr2 = member_addr2;
		this.member_addr3 = member_addr3;
		this.gender = gender;
		this.birth = birth;
	}
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMember_addr1() {
		return member_addr1;
	}
	public void setMember_addr1(String member_addr1) {
		this.member_addr1 = member_addr1;
	}
	public String getMember_addr2() {
		return member_addr2;
	}
	public void setMember_addr2(String member_addr2) {
		this.member_addr2 = member_addr2;
	}
	public String getMember_addr3() {
		return member_addr3;
	}
	public void setMember_addr3(String member_addr3) {
		this.member_addr3 = member_addr3;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	

}
