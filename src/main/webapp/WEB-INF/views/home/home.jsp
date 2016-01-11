<!DOCTYPE html >
<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<h1>
	Hello world!  Home
</h1>
<P>  The time on the server is ${serverTime}. </P>

<script >
$(document).ready(function() {
$(window).load(function() {
				var pathname = "${pageContext.request.contextPath}/index";
				if(window.location.pathname!=pathname){
					location.href = pathname;
				}
			});
}
</script>
</body>
</html>