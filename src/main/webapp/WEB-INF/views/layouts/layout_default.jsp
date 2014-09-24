<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<%-- <title><sitemesh:title />51一间-最专业的租房社区</title> --%>
<title><sitemesh:title />51</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<link type="image/x-icon" href="${ctx}/static/images/favicon.ico"
	rel="shortcut icon">
<link href="${ctx}/static/styles/reset.css" rel="stylesheet">
<link href="${ctx}/static/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
<link href="${ctx}/static/bootstrap/flat-ui/css/flat-ui.css" rel="stylesheet">
<link href="${ctx}/static/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="${ctx}/static/styles/non-responsive.css" rel="stylesheet">
<link href="${ctx}/static/styles/common.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="${ctx}/static/jquery/jquery-2.1.1.min.js"></script>
<sitemesh:head />
</head>

<body>
	<%@ include file="/WEB-INF/views/layouts/header_default.jsp"%>

	<sitemesh:body />

<%-- 	<%@ include file="/WEB-INF/views/layouts/footer.jsp"%> --%>

	
	<script src="${ctx}/static/jquery/validation/jquery.validate.min.js"></script>
	<script src="${ctx}/static/jquery/validation/messages_zh.js"></script>
	<script src="${ctx}/static/jquery/jquery.placeholder.js"></script>
	<script src="${ctx}/static/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	
	
</body>
</html>