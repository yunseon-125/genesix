package com.example.spring03.model.reservation.dto;

public class ReservationDTO {
	int idx;
	String userid;
	String name;
	String email;
	String hp;
	String op1;
	String address;
	String memo;
	String chk;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
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
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getOp1() {
		return op1;
	}
	public void setOp1(String op1) {
		this.op1 = op1;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getChk() {
		return chk;
	}
	public void setChk(String chk) {
		this.chk = chk;
	}
	@Override
	public String toString() {
		return "ReservationDTO [idx=" + idx + ", userid=" + userid + ", name=" + name + ", email=" + email + ", hp=" + hp + ", op1=" + op1 + ", address="
				+ address + ", memo=" + memo + ", chk=" + chk + "]";
	}
	public ReservationDTO() {
		
	}
	public ReservationDTO(String userid, String name, String email, String hp, String op1, String address, String memo, String chk) {
		this.userid = userid;
		this.name = name;
		this.email = email;
		this.hp = hp;
		this.op1 = op1;
		this.address = address;
		this.memo = memo;
		this.chk = chk;
	}
}
