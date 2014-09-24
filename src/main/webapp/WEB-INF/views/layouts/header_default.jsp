<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<div id="header" class="nav">
	<div class="nav-wrap">
		<div class="container nav-primary">
			<div class="nav-logo fl">
				<a href="${ctx}"></a>
			</div>
			<div class="nav-items fl">
				<ul>
					<li><a href="#">租房</a></li>
					<li><a href="#">合租小能手</a></li>
					<li><a href="#">白菜市场</a></li>
					<li><a href="#">异乡日记</a></li>
				</ul>
			</div>
			<shiro:guest>
				<div class="nav-login-register fr">
					<a class="login-btn" href="${ctx}/login">登录</a> <a class="register-btn" href="${ctx}/register">注册</a>
				</div>
			</shiro:guest>
			<shiro:user>
				<div class="second-nav fr">
					<ul>
						<li>投稿</li>
						<li>提醒</li>
						<li class="avatar">
							<a class="avatar-account" href="#" >
								<img class="" src="${ctx }/static/imgs/user.png" width="24" height="24">
								<span class=""><shiro:principal property="nickName"/></span>
							</a>
						</li>
					</ul>
					<div class="account_opera" style="display: block;">
				 		<a class="home_page" href="#">我的多贝</a>
				 		<a class="account_setting" href="#">设置</a>
				 		<a class="log_out" href="#">退出</a>
				 		<i class="module_flag_outer"><i class="module_flag"><i class="inner"></i></i></i>
				 	</div>
				</div>
			</shiro:user>
		</div>
	</div>
</div>
<div class="header-filter clearfix"></div>