<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="zh-CN" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="zh-CN" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="zh-CN">
<!--<![endif]-->
<head>
  <meta charset="utf-8"/>
  <title><sitemesh:write property='title'/></title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <meta http-equiv="Content-type" content="text/html; charset=utf-8">
  <%@include file="/WEB-INF/jsp/common/import-css.jspf" %>
  <sitemesh:write property='head'/>
</head>
<body class="login">
<div class="logo">
  <img src="${ctx}/static/img/logo.png" alt="logo"/>
  <strong>档案管理</strong>系统
</div>
<div class="box">
  <sitemesh:write property='body'/>
</div>
<div class="footer">
  <a href="#" class="sign-up">还没有系统账号？&nbsp;<strong>立即注册</strong></a>
</div>
<%@include file="/WEB-INF/jsp/common/import-js.jspf" %>
<script>
  jQuery(document).ready(function () {
    Login.init();
  });
</script>
</body>
</html>
