<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html>
<head>
<meta name="decorator" content="simple"/>
<title>注册-</title>
<script type="text/javascript">
	$(function(){
		var validator = $("#loginForm").validate({
			errorPlacement: function(error, element) {
				$( element )
					.closest( "form" )
						.find( "label[for='" + element.attr( "id" ) + "']" )
							.append( error );
			},
			errorElement: "span",
			messages: {
				loginForm: {
					required: "必填",
					email: "请输入合法的邮箱地址"
				},
				plainPassword: {
					required: "必填",
					minlength: "密码最少6个字符",
					maxlength: "密码最多20个字符"
				},
				nickName: {
					required: "来个响亮的名号",
					minlength: "名号最少2个字符",
					maxlength: "名号最多10个字符"
				}
			}
		});
	});
// 		$(document).ready(function() {
// 			$("#loginName").focus();
// 			//为inputForm注册validate函数
// 			$("#inputForm").validate({
// 				rules: {
// 					loginName: {
// 						remote: "${ctx}/register/checkLoginName"
// 					}
// 				},
// 				messages: {
// 					loginName: {
// 						remote: "用户登录名已存在"
// 					}
// 				}
// 			});
// 		});
</script>
</head>

<body>
<div class="container">
	<div style="width: 700px; margin: auto;margin-top:60px; color: gray;">
		<div class="fl" style="width:400px;padding-right:50px;border-right: dotted 1px #CCCCCC;">
			<form id="loginForm" action="${ctx}/register" method="post">
				<div class="input-group">
					<input id="loginMail" type="text" name="loginMail" value="${loginMail}" placeholder="常用邮箱" class="form-control required email" />
					<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
				</div>
				<label class="form-input-error-msg" for="loginMail"></label>

				<div class="input-group">
					<input id="plainPassword" type="password" name="plainPassword" class="form-control required" placeholder="密码" minlength="6" maxlength="20">
					<span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
				</div>
				<label class="form-input-error-msg" for="plainPassword"></label>
				
				<div class="input-group">
					<input id="nickName" type="text" name="nickName" class="form-control required" placeholder="名号" minlength="2" maxlength="10">
					<span class="input-group-addon"><span class="glyphicon glyphicon-star"></span></span>
				</div>
				<label class="form-input-error-msg" for="nickName"></label>

				<label class="fl" for="checkforinfo" class="checkbox" style="line-height:1;font-size:12px;">
	            <input id="checkforinfo" type="checkbox" checked="checked">
	            我已阅读并同意&nbsp;<a href="#">《51一间用户协议》</a>
            	</label>
            	
	            <div class="clearfix" style="margin-bottom:10px;"></div>
	            <label class="form-input-error-msg"></label>
				<button type="submit" class="btn btn-large btn-block btn-primary">注册</button>
			</form>
		</div>
		
		<div class="fr" style="width:300px; padding:20px 0 0 50px; font-size:15px;">
			<span style="display:block;margin:0 0 10px 0;">已有51一间账号:</span>
			<a href="${ctx}/login">直接登录&nbsp;<i class="fa fa-arrow-circle-right"></i></a>
			<span style="display:block;margin:20px 0 20px 0;">使用以下帐号直接登录:</span>
			<a class="fl" href="#" style="line-height:2.4; display:block;width:110px;background: #34C8F4;text-align: center;color:#fff;"><i class="fa fa-qq"></i>&nbsp;QQ</a>
			<a class="fr" href="#" style="line-height:2.4; display:block;width:110px;background: #D04341;text-align: center;color:#fff;"><i class="fa fa-weibo"></i>&nbsp;微博</a>
		</div>
	</div>
</div>
</body>
</html>