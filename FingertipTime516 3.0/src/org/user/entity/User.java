package org.user.entity;

import java.awt.Image;
import java.util.Date;

public class User {
	private String uid;
	private String uname;
	private String usex;
	private String upwd;
	private Image uimage;
	private String uimage_name;
	private Date udate;
	public User() {
		
	}
	public User(String id,String name,String sex,String pwd,Image image,Date date,String image_name) {
		uname=name;
		uid=id;
		usex=sex;
		upwd=pwd;
		uimage=image;
		setUdate(date);
		uimage_name=image_name;
	}
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUsex() {
		return usex;
	}
	public void setUsex(String usex) {
		this.usex = usex;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	@Override
	public String toString() {
		return this.getUid()+"--"+this.getUname()+"--"+this.getUpwd()+"--"+this.getUsex();
	}
	public Image getUimage() {
		return uimage;
	}
	public void setUimage(Image uimage) {
		this.uimage = uimage;
	}

	public String getUimage_name() {
		return uimage_name;
	}
	public void setUimage_name(String uimage_name) {
		this.uimage_name = uimage_name;
	}
	public Date getUdate() {
		return udate;
	}
	public void setUdate(Date udate) {
		this.udate = udate;
	}

}
