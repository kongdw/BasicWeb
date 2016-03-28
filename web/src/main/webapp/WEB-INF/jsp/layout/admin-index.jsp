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
  <meta content="" name="description"/>
  <meta content="" name="author"/>
  <%@include file="/WEB-INF/jsp/common/import-css.jspf" %>
  <link href="${ctx}/static/css/plugins.css" rel="stylesheet" type="text/css"/>
  <link href="${ctx}/static/css/layout.css" rel="stylesheet" type="text/css"/>
  <link id="style_color" href="${ctx}/static/css/themes/grey.css" rel="stylesheet" type="text/css"/>
  <sitemesh:write property='head'/>
</head>
<body class="page-header-fixed page-container-bg-solid page-sidebar-closed-hide-logo page-header-fixed-mobile page-footer-fixed1">
<div class="page-header navbar navbar-fixed-top">
  <div class="page-header-inner">
    <div class="page-logo">
      <a href="index.html">
        <img src="${ctx}/static/img/logo-default.png" alt="logo" class="logo-default"/>
      </a>
      <div class="menu-toggler sidebar-toggler"></div>
    </div>
    <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
    </a>

    <div class="page-top">
      <div class="page-actions">
        <div class="page-tabs-bar tabbable tabbable-tabdrop" style="width: 500px;">
          <ul class="nav nav-pills">
            <li class="active">
              <a href="#" data-toggle="tab" aria-expanded="false" >
                我的主页
              </a>
            </li>
          </ul>
        </div>
      </div>
      <div class="top-menu">
        <%@include file="/WEB-INF/jsp/admin/index/userinfo.jsp" %>
      </div>
    </div>
  </div>
</div>
<div class="clearfix">
</div>
<div class="page-container">
  <div class="page-sidebar-wrapper">
    <div class="page-sidebar navbar-collapse collapse">
      <ul class="page-sidebar-menu page-sidebar-menu-hover-submenu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
      </ul>
    </div>
  </div>
  <div class="page-content-wrapper">
    <div class="page-content">
      <%--<%@ include file="/WEB-INF/jsp/common/theme-panel.jspf"%>--%>
      <div class="page-bar">
        <ul class="page-breadcrumb">
        </ul>
      </div>
      <div class="clearfix"></div>
      <div class="row">
        <div class="col-md-12">
          <div class="page-tabs-content tab-content">
            <%--<sitemesh:write property='body'/>--%>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="page-footer">
  <div class="page-footer-inner">
    2016 &copy; 中公网医疗信息技术有限公司
  </div>
  <div class="scroll-to-top">
    <i class="icon-arrow-up"></i>
  </div>
</div>
<%@include file="/WEB-INF/jsp/common/import-js.jspf" %>
<script type="text/javascript" src="${ctx}/static/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
<script type="text/javascript" src="${ctx}/static/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script type="text/javascript" src="${ctx}/static/plugins/bootstrap-tabdrop/js/bootstrap-tabdrop.js"></script>
<script type="text/javascript" src="${ctx}/static/js/components-pickers.js"></script>
<script type="text/javascript" src="${ctx}/static/js/metronic.js"></script>
<script type="text/javascript" src="${ctx}/static/js/admin/global.js"></script>
<script type="text/javascript" src="${ctx}/static/js/utils.js"></script>
<script type="text/javascript" src="${ctx}/static/js/layout.js"></script>
<script>
  jQuery(document).ready(function () {
    Metronic.init();
    Util.init();
    AdminGlobal.init();
    Layout.init();
    ComponentsPickers.init();
  });
</script>
</body>
</html>
