package com.tenbyten.dto;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class MemberVO {
//	  user_no INT AUTO_INCREMENT PRIMARY KEY,
//	  username VARCHAR(10),
//	  userid VARCHAR(10),
//	  pwd VARCHAR(10),
//	  email VARCHAR(20),
//	  phone CHAR(13),
//	  admin TINYINT DEFAULT 0 -- 0: 사용자, 1: 관리자
	  
	private int user_no;
	private String username;
	private String userid;
	private String pwd;
	private String email;
	private String phone;
	private Date birth;
	private int admin;
	

	public Date getBirth() {
		return birth;
	}

	@Override
	public String toString() {
		return "MemberVO [user_no=" + user_no + ", username=" + username + ", userid=" + userid + ", pwd=" + pwd
				+ ", email=" + email + ", phone=" + phone + ", birth=" + birth + ", admin=" + admin + "]";
	}

	public void setBirth(String birth) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		
        try {
            java.util.Date birthUtilDate = sdf.parse(birth);
            this.birth = new Date(birthUtilDate.getTime()); // java.sql.Date로 변환하여 저장
            
        } catch (ParseException e) {
            e.printStackTrace();
           
        }
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
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

	public int getAdmin() {
		return admin;
	}

	public void setAdmin(int admin) {
		this.admin = admin;
	}
	  
	
	
	
	  
	
}
