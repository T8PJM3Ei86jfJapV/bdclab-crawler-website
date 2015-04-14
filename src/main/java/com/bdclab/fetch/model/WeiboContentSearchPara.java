package com.bdclab.fetch.model;

public class WeiboContentSearchPara {
	private String keyword;
	private String province;
	private String city;
	private String stime;
	private String etime;
	private int interval;
	
	public WeiboContentSearchPara() {
		
	}
	
	public WeiboContentSearchPara(String kw, String pv, String ct, String st, String et, int in) {
		this.keyword = kw;
		this.province = pv;
		this.city = ct;
		this.stime = st;
		this.etime = et;
		this.interval = in;
	}
	
	public String getKeyword() {
		return this.keyword;
	}
	
	public String getProvince() {
		return this.province;
	}
	
	public String getCity() {
		return this.city;
	}
	
	public String getStime() {
		return this.stime;
	}
	
	public String getEtime() {
		return this.etime;
	}
	
	public int getInterval() {
		return this.interval;
	}
	
	public String toString() {
        String module = "{\"keyword\": \"%s\", \"province\": \"%s\", \"city\": \"%s\", \"stime\": \"%s\", \"etime\": \"%s\", \"interval\": \"%s\"}";
		return String.format(module, keyword, province, city, stime, etime, interval);
	}
}
