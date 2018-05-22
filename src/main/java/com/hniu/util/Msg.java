package com.hniu.util;

public class Msg {
	private Boolean isSuccess;
	private String message;
	private Object object;
	
	
	
	
	public Msg() {};
	public Msg(Boolean isSuccess,String message) {
		this.isSuccess=isSuccess;
		this.message=message;
	}
	public Msg(Boolean isSuccess, String message, Object object) {
		this.isSuccess = isSuccess;
		this.message = message;
		this.object = object;
	}
	public Boolean getIsSuccess() {
		return isSuccess;
	}
	public void setIsSuccess(Boolean isSuccess) {
		this.isSuccess = isSuccess;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Object getObject() {
		return object;
	}
	public void setObject(Object object) {
		this.object = object;
	}
	
	
	

}
