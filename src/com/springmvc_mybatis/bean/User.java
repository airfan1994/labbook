package com.springmvc_mybatis.bean;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class User implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String name;
	private String pwd;
	private String school;
	private int role;
	private String nickname;
	
	public User() {
		super();
	}

	public User(String name, String pwd) {
		super();
		this.name = name;
		this.pwd = pwd;
	}

	public User(Integer id, String name, String pwd, String school,int role,String nickname) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.school = school;
		this.role = role;
		this.nickname = nickname;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getpwd() {
		return pwd;
	}

	public void setpwd(String pwd) {
		this.pwd = pwd;
	}

	public String getschool() {
		return school;
	}

	public void setschool(String school) {
		this.school = school;
	}
	
	public int getrole() {
		return role;
	}

	public void setrole(int role) {
		this.role = role;
	}

	public String getnickname() {
		return nickname;
	}

	public void setnickname(String nickname) {
		this.nickname = nickname;
	}
}
