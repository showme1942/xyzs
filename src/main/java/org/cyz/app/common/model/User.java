package org.cyz.app.common.model;

import java.util.Date;

/** 
 * Author: yuanzhen 
 * Project Name:xyzs.git 
 * File Name:User.java 
 * ackage Name:org.cyz.app.common.model 
 * Date:2016年1月12日上午10:27:30 
 * Copyright (c) 2016,cyz@citycloud.com.cn 
 * version 1.0   
 */

public class User {

	private String userId;
	
	private String userName;
	
	private String userPassword;
	
	private String userEmail;
	
	private String userTelephone;
	
	private Date userDate;
	
	private Date usersignupdate;
	
	public Date getUsersignupdate() {
		return usersignupdate;
	}

	public void setUsersignupdate(Date usersignupdate) {
		this.usersignupdate = usersignupdate;
	}

	public boolean isUserstate() {
		return userstate;
	}

	public void setUserstate(boolean userstate) {
		this.userstate = userstate;
	}

	private boolean userstate;
	
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserTelephone() {
		return userTelephone;
	}

	public void setUserTelephone(String userTelephone) {
		this.userTelephone = userTelephone;
	}

	public Date getUserDate() {
		return userDate;
	}

	public void setUserDate(Date userDate) {
		this.userDate = userDate;
	}



}
