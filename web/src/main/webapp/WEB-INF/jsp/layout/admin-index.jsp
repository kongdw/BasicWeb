<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf" %>
<!DOCTYPE html>
<html lang="zh_CN">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
  <meta http-equiv="Cache-Control" content="no-store"/>
  <meta http-equiv="Pragma" content="no-cache"/>
  <meta http-equiv="Expires" content="0"/>
  <title><sitemesh:write property='title'/></title>
  <%@include file="/WEB-INF/jsp/common/import-css.jspf" %>
  <sitemesh:write property='head'/>
</head>
<body class="no-skin">
<div class="navbar navbar-default ace-save-state" id="navbar">
  <div class="navbar-container ace-save-state" id="navbar-container">
    <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
      <span class="sr-only">Toggle sidebar</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <div class="navbar-header pull-left">
      <a href="#" class="navbar-brand">
        <small>
          <i class="fa fa-leaf"></i>
          K0n9 后台管理系统
        </small>
      </a>
    </div>
    <%@include file="/WEB-INF/jsp/common/import-userinfo.jsp" %>
  </div>
</div>
<div class="main-container ace-save-state" id="main-container">
  <script type="text/javascript">
    try {
      ace.settings.loadState('main-container')
    } catch (e) {
    }
  </script>
  <div id="sidebar" class="sidebar responsive ace-save-state">
    <script type="text/javascript">
      try {
        ace.settings.loadState('sidebar')
      } catch (e) {
      }
    </script>
    <%@include file="/WEB-INF/jsp/common/import-header.jsp" %>
    <%@include file="/WEB-INF/jsp/common/import-menus.jsp" %>
    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
      <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state"
         data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
  </div>
  <div class="main-content">
    <div class="main-content-inner">
      <div class="breadcrumbs breadcrumbs-fixed" id="breadcrumbs">
        <script type="text/javascript">
          try {
            ace.settings.check('breadcrumbs', 'fixed')
          } catch (e) {
          }
        </script>
        <ul class="breadcrumb">
          <li>
            <i class="ace-icon fa fa-home home-icon"></i>
            <a href="#">主页</a>
          </li>
        </ul>
        <!-- /.breadcrumb -->
      </div>

      <div class="page-content">
        <%@include file="/WEB-INF/jsp/common/import-ace-setting.jsp" %>
        <div class="page-content-area" data-ajax-content="true">
          <sitemesh:write property='body'/>
        </div>
      </div>
    </div>
  </div>
  <%@include file="/WEB-INF/jsp/common/import-footer.jsp" %>
</div>
<%@include file="/WEB-INF/jsp/common/import-js.jspf" %>
</body>
</html>