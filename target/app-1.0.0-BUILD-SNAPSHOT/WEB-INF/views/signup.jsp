<!DOCTYPE html >
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<%@ include file="head.jsp" %>      
<body>
	
	<!-- Top menu -->
	<nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#top-navbar-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/app/index">Anna Jema</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="top-navbar-1">
				<ul class="nav navbar-nav navbar-right">
					<li><span class="li-text"> Put some text or </span> <a
						href="#"><strong>links</strong></a> <span class="li-text">
							here, or some icons: </span> <span class="li-social"> <a href="#"><i
								class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-envelope"></i></a> <a href="#"><i
								class="fa fa-skype"></i></a>
					</span></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Top content -->
	<div class="top-content">

		<div class="inner-bg">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2 text">
						<h1>
							<spring:message code="xyzs.title"></spring:message>会员注册
						</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3 form-box">
						<form role="form" action="" method="post"
							class="registration-form">

							<fieldset>							
								<div class="form-top">
									<div class="form-top-right">
										<i class="fa fa-user">用户名</i>
									</div>
								</div>
								<div class="form-bottom">
									<div class="form-group">									
										<label class="sr-only" for="form-first-name">
											</label> <input type="text" name="form-first-name"
											placeholder="请输入用户名"
											class="form-first-name form-control" id="form-first-name">
									</div>
								</div>
								<div class="form-top-right">
										<i class="fa fa-key">密码</i>
								</div>
								<div class="form-group">
										<label class="sr-only" for="form-password">密码</label> <input
											type="password" name="form-password"
											placeholder="密码" class="form-password form-control"
											id="form-password">
											<p class="help-block">请输入6-18位密码</p>
									</div>
									<div class="form-group">
									<div class="form-top-right">
										<i class="fa fa-key">请重复密码</i>
										</div>
										<label class="sr-only" for="form-repeat-password">重复密码
											</label> <input type="password" name="form-repeat-password"
											placeholder="请重复密码"
											class="form-repeat-password form-control"
											id="form-repeat-password">
											<p class="help-block">请输入6-18位密码</p>
									</div>
							</fieldset>

							<fieldset>
								<div class="form-bottom">
									<div class="form-group">
									<i class="fa fa-envelope">邮箱</i>
										<label class="sr-only" for="form-email">邮箱</label> <input
											type="text" name="form-email" placeholder="邮箱地址"
											class="form-email form-control" id="form-email">
											<p class="help-block">请输入您的邮箱地址：例如xxx@xxx.com</p>
									</div>
									<div class="form-group">
									<i class="fa fa-phone">手机号</i>
										<label class="sr-only" for="form-telephone">手机号</label> <input
											type="text" name="form-telephone" placeholder="手机号"
											class="form-email form-control" id="form-telephone">
											<p class="help-block">请输入您的手机号</p>
									</div>									
									<button type="submit" class="btn btn-success">注册!</button>
									<button type="reset" class="btn btn-defult">重置</button>
								</div>
							</fieldset>
							</form>
							
					</div>
				</div>
			</div>
		</div>

	</div>
	<script>
	</script>

</body>
</html>