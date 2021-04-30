package com.team1.vegan.user.model;



public class MemberVO {
	
	String memberId;
	String password;
	String address;
	String name;
	
	
	
	public MemberVO(String memberId, String password, String address, String name) 
			 {
		super();
		this.memberId = memberId;
		this.password = password;
		this.address = address;
		this.name = name;
	
	}
	
	
	
	public MemberVO() {}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", password=" + password + ", address=" + address + ", name=" + name
				+ "]";
	}
	
	
	

}
