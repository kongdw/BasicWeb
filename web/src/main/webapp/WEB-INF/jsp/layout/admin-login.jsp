<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="zh-CN" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="zh-CN" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="zh-CN">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
  <meta charset="utf-8"/>
  <title><sitemesh:write property='title' /></title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <meta http-equiv="Content-type" content="text/html; charset=utf-8">
  <meta content="" name="description"/>
  <meta content="" name="author"/>
  <%@include file="/WEB-INF/jsp/common/import-css.jspf"%>
  <sitemesh:write property='head' />
</head>
<body class="login">
<!-- BEGIN LOGO -->
<div class="logo">
  <a href="index.html">
    <img src="${ctx}/static/img/logo-big.png" alt=""/>
  </a>
</div>
<!-- END LOGO -->
<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
<div class="menu-toggler sidebar-toggler">
</div>
<!-- END SIDEBAR TOGGLER BUTTON -->
<!-- BEGIN LOGIN -->
<sitemesh:write property='body' />
<!-- END LOGIN -->
<!-- BEGIN COPYRIGHT -->
<div class="copyright">
  2014 &copy; 中公网医疗信息技术有限公司
</div>
<!-- END COPYRIGHT -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<%@include file="/WEB-INF/jsp/common/import-js.jspf"%>
<script>
  jQuery(document).ready(function() {
    Login.init();
    $.backstretch([
          "../../static/img/bg/1.jpg",
          "../../static/img/bg/2.jpg",
          "../../static/img/bg/3.jpg",
          "../../static/img/bg/4.jpg"
        ], {
          fade: 1000,
          duration: 8000
        }
    );
  });
</script>
<!-- END JAVASCRIPTS -->
</body>
</html>
