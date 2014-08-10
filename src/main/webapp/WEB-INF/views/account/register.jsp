<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<title>用户注册</title>

<script>
		$(document).ready(function() {
			//聚焦第一个输入框
			$("#loginName").focus();
			//为inputForm注册validate函数
			$("#inputForm").validate({
				rules: {
					loginName: {
						remote: "${ctx}/register/checkLoginName"
					}
				},
				messages: {
					loginName: {
						remote: "用户登录名已存在"
					}
				}
			});
		});
	</script>
</head>

<body>
	<form id="inputForm" action="${ctx}/register" method="post"
		class="form-horizontal" role="form">
		<legend>
			<small>用户注册</small>
		</legend>
		<div class="form-group">
			<label for="loginName" class="col-sm-2 control-label">用户名</label>
			<div class="col-sm-4">
				<input type="text" class="form-control required" name="loginName" id="loginName" placeholder="用户名">
			</div>
		</div>
		<div class="form-group">
			<label for="nickName" class="col-sm-2 control-label">昵称</label>
			<div class="col-sm-4">
				<input type="text" class="form-control required" name="nickName" id="nickName" placeholder="昵称">
			</div>
		</div>
		<div class="form-group">
			<label for="plainPassword" class="col-sm-2 control-label">密码</label>
			<div class="col-sm-4">
				<input type="password" class="form-control required" name="plainPassword" id="plainPassword" placeholder="密码">
			</div>
		</div>
		<div class="form-group">
			<label for="confirmPassword" class="col-sm-2 control-label">确认密码</label>
			<div class="col-sm-4">
				<input type="password" class="form-control required" name="confirmPassword" id="confirmPassword" equalTo="#plainPassword" placeholder="确认密码">
			</div>
		</div>
		
		<div class="form-actions">
				<input id="submit_btn" class="btn btn-primary" type="submit" value="提交"/>&nbsp;	
				<input id="cancel_btn" class="btn" type="button" value="返回" onclick="history.back()"/>
			</div>
	</form>

</body>

</html>