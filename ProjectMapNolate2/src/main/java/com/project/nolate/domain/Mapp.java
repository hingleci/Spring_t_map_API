package com.project.nolate.domain;

public class Mapp {

	private int no;
	private String map_s;
	private String map_e;
	
	public Mapp() {};
	public Mapp(int no,String map_s, String map_e) {
		
		this.no = no;
		this.map_s = map_s;
		this.map_e = map_e;		
	};
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getMap_s() {
		return map_s;
	}
	public void setMap_s(String map_s) {
		this.map_s = map_s;
	}
	public String getMap_e() {
		return map_e;
	}
	public void setMap_e(String map_e) {
		this.map_e = map_e;
	}
}
