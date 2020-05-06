package com.bodmas.main.model;

/**
 * @author Pritam Sinha
 *
 */
public class BodmasStudent {
	
	private String name;
	private String email;
	private String mobile;
	private String password;
	private String confirm_password;
	
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirm_password() {
		return confirm_password;
	}
	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
	}
	
	
	
	//constructor
	public BodmasStudent(String name, String email, String mobile, String password, String confirm_password) {
		super();
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.password = password;
		this.confirm_password = confirm_password;
	}
	
	
	public BodmasStudent(String email, String password) {
		this.email = email;
		this.password = password;
	}
	@Override
	public String toString() {
		return "BodmasStudent [name=" + name + ", email=" + email + ", mobile=" + mobile + ", password=" + password
				+ ", confirm_password=" + confirm_password + "]";
	}
	
	
	
	
	
	

}
