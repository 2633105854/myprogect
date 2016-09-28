package com.lsq.mode;

import java.io.Serializable;

public class Room implements Serializable{
	private int r_id;
	private  String r_num;
	private int rt_id;
	private String state;
	public int getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	public String getR_num() {
		return r_num;
	}
	public void setR_num(String r_num) {
		this.r_num = r_num;
	}
	public int getRt_id() {
		return rt_id;
	}
	public void setRt_id(int rt_id) {
		this.rt_id = rt_id;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Room(int r_id, String r_num, int rt_id, String state) {
		super();
		this.r_id = r_id;
		this.r_num = r_num;
		this.rt_id = rt_id;
		this.state = state;
	}
	
   @Override
public String toString() {
	// TODO Auto-generated method stub
	return this.getR_num();
}
}
