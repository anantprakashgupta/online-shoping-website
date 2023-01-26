package model;

public class Billing {
private String name;
private String address;
private String email;
private String mobile;
private String pin;
private String country;
private String state;
private String district;
public Billing(String name, String address, String email, String mobile, String pin, String country, String state,
		String district) {
	super();
	this.name = name;
	this.address = address;
	this.email = email;
	this.mobile = mobile;
	this.pin = pin;
	this.country = country;
	this.state = state;
	this.district = district;
}
public Billing() {
	super();
	// TODO Auto-generated constructor stub
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
public String getPin() {
	return pin;
}
public void setPin(String pin) {
	this.pin = pin;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getDistrict() {
	return district;
}
public void setDistrict(String district) {
	this.district = district;
}

}
