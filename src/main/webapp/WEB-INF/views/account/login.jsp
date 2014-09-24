<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta name="decorator" content="simple" />
<title>登录-</title>
<script>
// 	$(function() {
// 		var validator = $("#loginForm").validate({
//  			errorPlacement: function(error, element) {
//  				$( element )
//  					.closest( "form" )
//  						.find( "label[for='" + element.attr( "id" ) + "']" )
//  							.append( error );
//  			},
//  			errorElement: "span",
//  			messages: {
//  				username: {
//  					required: "<i class=\"fa fa-times-circle\"></i>&nbsp;请输入登录邮箱",
//  					email: "<i class=\"fa fa-times-circle\"></i>&nbsp;请输入有效的邮箱地址，如：vip@qq.com"
//  				},
//  				password: {
//  					required: "<i class=\"fa fa-times-circle\"></i>&nbsp;请输入密码",
//  					minlength: "<i class=\"fa fa-times-circle\"></i>&nbsp;请输入6-16位密码，字母区分大小写",
//  					maxlength: "<i class=\"fa fa-times-circle\"></i>&nbsp;请输入6-16位密码，字母区分大小写"
//  				}
//  			},
//  			rules: {
//  				username: {
//  					required: true,
//  					email: true
//  				},
//  				password: {
//  					required: true,
//  					minlength: 6,
//  					maxlength: 16
//  				}
//  			}
//  		});
// 		$('input, textarea').placeholder();
// 	})
$(function() {
	var Login = function() {
		var id = {
			username: $("#username"),
			password: $("#password"),
			err: $("#err"),
			check: $("#rememberMe")
		};
		//输出错误
		function e(e) {
			id.err.html(e);
		}
		//登录
		function login(username, password) {
			$.post("${ctx}/login", 
			{
				username: username,
				password: password.substr(0, 16)
			}, 
			function(r) {
				switch (r.re_code + "") 
				{
					case "0":
						id.check.prop("checked") ? $.cookie("remember_acct", username, {expires: 30}) : $.removeCookie("remember_acct"), location.href = "${ctx}" + r.redirect_url;
						break;
					case "-1":
						e("系统错误，请稍候再试。");
						break;
					case "-2":
						e("不存在该帐户。");
						break;
					case "-3":
						e("帐号或密码错误。");
						break;
					case "-4":
					case "-5":
						e("您目前处于访问受限状态。");
						break;
					default:
						e("未知的返回。");
				}
			});
		}
		function r() {
			$("#username,#password").keydown(function(e) {
				var t = "which" in e ? e.which : e.keyCode;
				t == 13 && $("#loginBt").trigger("click");
			}), 
			$("#loginBt").click(function(t) {
				var username = $.trim(id.username.val()) || "", password = $.trim(id.password.val()) || "";
				if (username.length == 0) {
					e("你还没有输入帐号！"), id.username.focus();
					return;
				}
				if (password.length == 0) {
					e("你还没有输入密码！"), id.password.focus();
					return;
				}
				login(username, password);
			}), 
			
			$.cookie("remember_acct") && ($("#rememberCheck").trigger("click"), $("#username").val($.cookie("remember_acct")));
		}
		return {
			init: r
		};
	}();
	
	Login.init();
});
</script>
<style>
.form-input {
	margin: 0 0 30px 0;
}
</style>
</head>

<body>
	<div class="container">
		<div
			style="width: 700px; margin: auto; margin-top: 60px; color: gray;">
			<div class="fl"
				style="width: 400px; padding: 20px 99px 50px 0; border-right: dotted 1px #CCCCCC;">
				<form id="loginForm" action="${ctx}/login" method="post">
					<input id="username" class="form-control form-input" type="text"
						name="username" value="${username}" placeholder="邮箱/用户名" /> 
					<input id="password" class="form-control form-input" type="password"
						name="password" placeholder="密码">
					<div style="font-size: 13px;">
						<label class="fl" for="autologin" class="checkbox"
							style="line-height: 1; font-size: 13px;"> <input
							type="checkbox" id="rememberMe" value="rememberMe"
							checked="checked" style="margin-top: 0;"> 记住我
						</label> <a class="fr" href="#" style="line-height: 1;">忘记密码?</a>
					</div>
					<div class="clearfix" style="margin: 0 0 15px 0;"></div>
					<button id="loginBt" type="button" class="btn btn-sm btn-block btn-primary fl" style="width: 70px; margin: 0 10px 0 0;">登录</button>
					<label id="err" class="fl form-error-label"></label>
				</form>
			</div>

			<div class="fr"
				style="width: 300px; padding: 0 0 0 50px; font-size: 14px;">
				<span style="display: block; margin: 0 0 10px 0;">微信扫一扫，直接登录</span>
				<center>
					<img src="${ctx }/static/imgs/showqrcode.jpeg"
						style="width: 140px; height: 140px; display: inline-block;" />
				</center>
				<span style="display: block; margin: 15px 0 15px 0;">或使用以下帐号直接登录:</span>
				<a class="fl" href="#" style="line-height: 2.4; display: block; width: 110px; background: #34C8F4; text-align: center; color: #fff;">
				<i class="fa fa-qq"></i>&nbsp;QQ</a> <a class="fr" href="#" style="line-height: 2.4; display: block; width: 110px; background: #D04341; text-align: center; color: #fff;">
				<i class="fa fa-weibo"></i>&nbsp;微博</a>
			</div>
		</div>
	</div>
</body>
</html>
