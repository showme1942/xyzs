package org.cyz.app.common.service;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Service; 
import org.springframework.validation.BindingResult;

@Service
public class SystemServiceImpl implements SystemService {
	@Autowired  
	private HttpServletRequest request;
	
	
	@Override
	public String getSignupFirstField(BindingResult result) {
		if(result.getFieldError("username")!=null){
			return "username";
		}
		if(result.getFieldError("password")!=null){
			return "password";
		}
		if(result.getFieldError("confirmpassword")!=null){
			return "confirmpassword";
		}
		if(result.getFieldError("name")!=null){
			return "name";
		}
		if(result.getFieldError("idnumber")!=null){
			return "idnumber";
		}
		if(result.getFieldError("email")!=null){
			return "email";
		}
		if(result.getFieldError("mobilephone")!=null){
			return "mobilephone";
		}
		return "username";
	}

	
}
