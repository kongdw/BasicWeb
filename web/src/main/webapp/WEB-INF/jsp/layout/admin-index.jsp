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
    <sitemesh:write property='head'/>
    <link rel="icon" href="${ctx}/static/favicon.ico">
    <link rel="shortcut icon" href="${ctx}/static/favicon.ico">
    <%@include file="/WEB-INF/jsp/common/import-css.jspf" %>
    <script type="text/javascript">
        var currentURL = "${requestScope.currentURL}";
    </script>
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
        <%@include file="/WEB-INF/jsp/common/import-header.jsp"%>
        <%@include file="/WEB-INF/jsp/common/import-menus.jsp"%>
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
                        <a href="#">Home</a>
                    </li>
                    <li><a href="#">
                        UI &amp; Elements
                    </a></li>
                    <li class="active">
                        Nestable Lists
                    </li>
                </ul>
                <!-- /.breadcrumb -->
            </div>
            <%--<div class="tabs-bar tabs-fix-top" style="padding:0;">--%>
            <%--&lt;%&ndash;<span class="fa fa-chevron-left" style="display: none;"></span>&ndash;%&gt;--%>
            <%--<div class="ul-wrapper">--%>
            <%--<ul style="padding-left: 10px;background: #F2F2F2;padding-top: 4px;">--%>
            <%--<li class="active">--%>
            <%--<a href="#tabs-0">欢迎使用</a>--%>
            <%--<span class='menu' role='presentation' style="display:inline-block;width: 14px;height: 14px"></span>--%>
            <%--<br>--%>
            <%--<span class='menu icon-refresh' role='presentation' title='刷新'></span>--%>
            <%--</li>--%>
            <%--</ul>--%>
            <%--</div>--%>
            <%--<span class="fa fa-chevron-right" style="display: none;"></span>--%>

            <%--<div id="tabs-0" data-index="0" style="border: none;padding:0;" data-url="${ctx}/admin/welcome"></div>--%>
            <%--</div>--%>
            <div class="page-content">
                <%@include file="/WEB-INF/jsp/common/import-ace-setting.jsp" %>
                <div class="page-content-area" data-ajax-content="true">
                    <sitemesh:write property='body'/>
                </div>
            </div>
        </div>

    </div>
    <%@include file="/WEB-INF/jsp/common/import-footer.jsp"%>
</div>
</body>
<%@include file="/WEB-INF/jsp/common/import-js.jspf"%>
</html>