package com.essay.dto;

//<데이터 베이스에 테이블의 정보를 저장>
public class MemberVO {
	private String name;
	private String userid;
	private String pwd;
	private String nick;
	private String email;
	//private String phone;
	private int admin;

	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	@Override
	public String toString() {
		return "MemberVO [name=" + name + ", userid=" + userid + ", pwd=" + pwd + ", nick=" + nick + ", email=" + email
				+ ", admin=" + admin + "]";
	}	
	
}
	
	
	
	