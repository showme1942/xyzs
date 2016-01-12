<!DOCTYPE html >
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<%@ include file="head.jsp"%>

    
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
					<li><span class="li-text"> 成就你的梦想 </span> <a
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
						<div class="col-lg-8 col-lg-offset-2">
							<div class="page-header">
								<h2>
									<spring:message code="xyzs.title"></spring:message>
									会员注册
								</h2>
							</div>
							<form id="defaultForm" method="post" class="form-horizontal"
							action="${pageContext.request.contextPath}/postsignup" modelAttribute="signup">
								<div class="form-group">
									<label class="col-lg-3 control-label">用户名<i
										class="fa fa-user">：</i></label>
									<div class="col-lg-5">
										<input type="text" class="form-control" name="username" />
										<p class="help-block">请输入6-18位由数字和英文字母组成的用户名</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">密码<i
										class="fa fa-key"></i>：</label>
									<div class="col-lg-5">
										<input type="password" class="form-control" name="password" />
										<p class="help-block">请输入6-18位密码</p>
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-3 control-label">确认密码<i
										class="fa fa-key"></i>：</label>
									<div class="col-lg-5">
										<input type="password" class="form-control" name="password" />
										<p class="help-block">请重复输入密码</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">电子邮箱<i
										class="fa fa-envelope"></i>：</label>
									<div class="col-lg-5">
										<input type="text" class="form-control" name="email" />
										<p class="help-block">请输入您的邮箱地址：例如xxx@xxx.com</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">手机号<i
										class="fa fa-phone"></i>：</label>
									<div class="col-lg-5">
										<input type="text" class="form-control" name="username" />
										<p class="help-block">请输入您的手机号</p>
									</div>
								</div>

								<div class="form-group">
									<div class="col-lg-9 col-lg-offset-3">
										<button type="submit" class="btn btn-primary">注册!</button>
										<button type="reset" class="btn btn-defult">重置</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>


		</div>

	</div>
	<script>
	$(document).ready(function() {
	    $('#defaultForm')
	        .bootstrapValidator({
	            message: 'This value is not valid',
	            feedbackIcons: {
	                valid: 'glyphicon glyphicon-ok',
	                invalid: 'glyphicon glyphicon-remove',
	                validating: 'glyphicon glyphicon-refresh'
	            },
	            fields: {
	                username: {
	                    message: 'The username is not valid',
	                    validators: {
	                        notEmpty: {
	                            message: 'The username is required and can\'t be empty'
	                        },
	                        stringLength: {
	                            min: 6,
	                            max: 18,
	                            message: '用户名需大于6小于18个字符组成'
	                        },
	                        /*remote: {
	                            url: 'remote.php',
	                            message: 'The username is not available'
	                        },*/
	                        regexp: {
	                            regexp: /^[a-zA-Z0-9]+$/,//_\.
	                            message: '用户名只能由英文字母和数字组成'
	                        }
	                    }
	                },
	                email: {
	                    validators: {
	                        notEmpty: {
	                            message: '请您输入邮箱地址'
	                        },
	                        emailAddress: {
	                            message: '您输入的邮箱地址是非法的，请核对'
	                        }
	                    }
	                },
	                password: {
	                    validators: {
	                        notEmpty: {
	                            message: '密码应大于6小于18位'
	                        },
	               			stringLength: {
                        	min: 6,
                        	max: 18,
                        	message: '用户名需大于6小于18个字符组成'
                    },
	                    }
	                }
	            }
	        })
	        .on('success.form.bv', function(e) {
	            // Prevent form submission
	            e.preventDefault();

	            // Get the form instance
	            var $form = $(e.target);

	            // Get the BootstrapValidator instance
	            var bv = $form.data('bootstrapValidator');

	            // Use Ajax to submit form data
	            $.post($form.attr('action'), $form.serialize(), function(result) {
	                console.log(result);
	            }, 'json');
	        });
	});
	</script>

</body>
</html>