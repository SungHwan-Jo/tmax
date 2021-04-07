package com.tmax.app.member;

import java.io.Serializable;

public class MemberDTO implements Serializable {
	private int member_num;
	private String member_name;
	private String member_pwd;
	private java.util.Date joindate;
	
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_pwd() {
		return member_pwd;
	}
	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}
	public java.util.Date getJoindate() {
		return joindate;
	}
	public void setJoindate(java.util.Date joindate) {
		this.joindate = joindate;
	}


}
