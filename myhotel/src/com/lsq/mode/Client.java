package com.lsq.mode;

import java.io.Serializable;

public class Client implements Serializable{
	private int id;
	private String name;
	private String password;
	private String realname;
	private String card;
	private String phone;
	private String vip;
	
	
	
	
	public Client(String name, String password) {
		super();
		this.name = name;
		this.password = password;
	}

	public Client(int id, String name, String password, String realname,
			String card, String phone, String vip) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.realname = realname;
		this.card = card;
		this.phone = phone;
		this.vip = vip;
	}
	
	public Client(String name, String password, String realname, String card,
			String phone, String vip) {
		super();
		this.name = name;
		this.password = password;
		this.realname = realname;
		this.card = card;
		this.phone = phone;
		this.vip = vip;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getCard() {
		return card;
	}
	public void setCard(String card) {
		this.card = card;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getVip() {
		return vip;
	}
	public void setVip(String vip) {
		this.vip = vip;
	}
	
  @Override
public String toString() {
	// TODO Auto-generated method stub
	return this.getId()+""+this.getName()+this.getPassword()+this.getRealname();
}
}
