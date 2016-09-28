package com.lsq.mode;

import java.io.Serializable;

public class RoomType implements Serializable{
	private int id;
	private String type;
	private double price;
	private int num;
	
	
	public RoomType(int id, String type, double price, int num) {
		super();
		this.id = id;
		this.type = type;
		this.price = price;
		this.num = num;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.getType();
	}

}
