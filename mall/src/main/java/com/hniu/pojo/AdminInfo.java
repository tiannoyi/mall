package com.hniu.pojo;

public class AdminInfo {
 int  id;
 char sex;
 int age;
 String tel;
 String email;
 String birthday;
 SysUser admin;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public char getSex() {
	return sex;
}
public void setSex(char sex) {
	this.sex = sex;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getBirthday() {
	return birthday;
}
public void setBirthday(String birthday) {
	this.birthday = birthday;
}
public SysUser getAdmin() {
	return admin;
}
public void setAdmin(SysUser admin) {
	this.admin = admin;
}
@Override
public String toString() {
	return "AdminInfo [id=" + id + ", sex=" + sex + ", age=" + age + ", tel=" + tel + ", email=" + email + ", birthday="
			+ birthday + ", admin=" + admin + "]";
}
 
}
