package com.springmvc_mybatis.bean;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class week implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String meetingfield;
	private String fact;
	private String updatetime;
	
	public week() {
		super();
	}

	public week(String meetingfield,String fact, String updatetime) {
		super();
		this.meetingfield = meetingfield;
		this.fact = fact;
		this.updatetime = updatetime;
	}

	public String getmeetingfield() {
		return meetingfield;
	}

	public void setmeetingfield(String meetingfield) {
		this.meetingfield = meetingfield;
	}
	public String getfact() {
		return fact;
	}

	public void setfact(String fact) {
		this.fact = fact;
	}
	public String getupdatetime() {
		return updatetime;
	}

	public void setupdatetime(String updatetime) {
		this.updatetime = updatetime;
	}
}
