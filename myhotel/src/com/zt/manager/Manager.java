package com.zt.manager;

public class Manager {
	private int mag_id;
	private String mag_name;
	private String mag_password;
	
	public Manager(String mag_name, String mag_password) {
		super();
		this.mag_name = mag_name;
		this.mag_password = mag_password;
	}
	public int getMag_id() {
		return mag_id;
	}
	public void setMag_id(int mag_id) {
		this.mag_id = mag_id;
	}
	public String getMag_name() {
		return mag_name;
	}
	public void setMag_name(String mag_name) {
		this.mag_name = mag_name;
	}
	public String getMag_password() {
		return mag_password;
	}
	public void setMag_password(String mag_password) {
		this.mag_password = mag_password;
	}
	
	
}
