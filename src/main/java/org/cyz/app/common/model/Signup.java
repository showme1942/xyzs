package org.cyz.app.common.model;

import org.hibernate.validator.constraints.NotEmpty;


public class Signup {
	
	
	@NotEmpty
	private String username;
	@NotEmpty
	private String password;
	@NotEmpty
	private String confirmpassword;
	@NotEmpty
	private String name;
	@NotEmpty
	private String idnumber;
	@NotEmpty
	private String email;
	@NotEmpty
	private String mobilephone;
	private String loginmethod;
	
	public Signup() {
		this.loginmethod = "web";
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIdnumber() {
		return idnumber;
	}
	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobilephone() {
		return mobilephone;
	}
	public void setMobilephone(String mobilephone) {
		this.mobilephone = mobilephone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	@Override
	public String toString() {
		return "Signup [username=" + username + ", password=" + password
				+ ", confirmpassword=" + confirmpassword + ", name=" + name
				+ ", idnumber=" + idnumber + ", email=" + email
				+ ", mobilephone=" + mobilephone + "]";
	}
	public String getLoginmethod() {
		return loginmethod;
	}
	public void setLoginmethod(String loginmethod) {
		this.loginmethod = loginmethod;
	}

	
	
	
}