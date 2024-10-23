package com.tenbyten.dto;

import java.sql.Date;

public class ServiceBoardVO {
	private Integer board_no;
	private Integer user_no;
	private String title; 
	private String content; 
	private String email; 
	private String phone; 
	private String servicetype; 
	private Date writeDate; 
	private String imgUrl1;
	private String imgUrl2;
	private String state;
	
	@Override
	public String toString() {
		return "ServiceBoardVO [board_no=" + board_no + ", user_no=" + user_no + ", title=" + title + ", content="
				+ content + ", email=" + email + ", phone=" + phone + ", servicetype=" + servicetype + ", writeDate="
				+ writeDate + ", imgUrl1=" + imgUrl1 + ", imgUrl2=" + imgUrl2 + ", state=" + state + "]";
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}

	public Integer getBoard_no() {
		return board_no;
	}
	public void setBoard_no(Integer board_no) {
		this.board_no = board_no;
	}
	public Integer getUser_no() {
		return user_no;
	}
	public void setUser_no(Integer user_no) {
		this.user_no = user_no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public String getImgUrl1() {
		return imgUrl1;
	}
	public void setImgUrl1(String imgUrl1) {
		this.imgUrl1 = imgUrl1;
	}
	public String getImgUrl2() {
		return imgUrl2;
	}
	public void setImgUrl2(String imgUrl2) {
		this.imgUrl2 = imgUrl2;
	}
	public String getServicetype() {
		return servicetype;
	}
	public void setServicetype(String servicetype) {
		this.servicetype = servicetype;
	}
	
	
}
