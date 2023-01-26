package model;

public class User {
 private int id;
 private String uname;
 private String password;
 private String email;
public User(String uname, String password, String email) {
	super();
	this.uname = uname;
	this.password = password;
	this.email = email;
}
public User(int id, String uname, String password, String email) {
	super();
	this.id = id;
	this.uname = uname;
	this.password = password;
	this.email = email;
}
public User() {
	super();
	// TODO Auto-generated constructor stub
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getUname() {
	return uname;
}
public void setUname(String uname) {
	this.uname = uname;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
 
 
}
