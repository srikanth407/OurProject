package com.srikanth.domain;

public class User {
private long userid;
private String useremail;
private String userpassword;
public long getUserid() {
	return userid;
}
public void setUserid(long userid) {
	this.userid = userid;
}
public String getUseremail() {
	return useremail;
}
public void setUseremail(String useremail) {
	this.useremail = useremail;
}
public String getUserpassword() {
	return userpassword;
}
public void setUserpassword(String userpassword) {
	this.userpassword = userpassword;
}
public User(long userid, String useremail, String userpassword) {
	super();
	this.userid = userid;
	this.useremail = useremail;
	this.userpassword = userpassword;
}
public User() {
	super();
}
@Override
public String toString() {
	return "User [userid=" + userid + ", useremail=" + useremail
			+ ", userpassword=" + userpassword + "]";
}









}
