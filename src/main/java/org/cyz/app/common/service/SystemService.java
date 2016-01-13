package org.cyz.app.common.service;

import org.springframework.validation.BindingResult;



public interface SystemService {  
//	/**
//	 * 处理spring form 提交数据
//	 * @param result
//	 * @return
//	 */
//	boolean processResult(BindingResult result);
//	/**
//	 * 处理登录
//	 * @param signin
//	 * @return
//	 */
//	boolean processSignin(Signin signin,HttpServletResponse response);
//	/**
//	 * 处理注册
//	 * @param signup
//	 * @return
//	 */
//	boolean processSignup(Signup signup);
	/**
	 * 处理退出
	 * @param token
	 */
	//void processSignout(HttpServletResponse response);
	
	

	String getSignupFirstField(BindingResult result);
}  