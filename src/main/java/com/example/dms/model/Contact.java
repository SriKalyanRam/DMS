package com.example.dms.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class Contact {
	
	@Id
	@GeneratedValue
	private int id;
private String firstname;
private String lastname;
private String cntname;
private String sub;
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getCntname() {
	return cntname;
}
public void setCntname(String cntname) {
	this.cntname = cntname;
}
public String getSub() {
	return sub;
}
public void setSub(String sub) {
	this.sub = sub;
}
}
