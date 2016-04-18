<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf" %>
<!DOCTYPE html>
<html lang="zh_CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <meta http-equiv="Cache-Control" content="no-store"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta http-equiv="Expires" content="0"/>
    <title><sitemesh:write property='title'/></title>
    <sitemesh:write property='head'/>
    <link rel="icon" href="${ctx}/static/favicon.ico">
    <link rel="shortcut icon" href="${ctx}/static/favicon.ico">
    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${ctx}/static/css/bootstrap.css"/>
    <link rel="stylesheet" href="${ctx}/static/css/font-awesome.css"/>

    <!-- text fonts -->
    <link rel="stylesheet" href="${ctx}/static/css/ace-fonts.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="${ctx}/static/css/ace.css"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${ctx}/static/css/ace-part2.css"/>
    <![endif]-->
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${ctx}/static/css/ace-ie.css"/>
    <![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>
    <script src="${ctx}/static/js/html5shiv.js"></script>
    <script src="${ctx}/static/js/respond.js"></script>
    <![endif]-->
    <script type="text/javascript">
        var currentURL = "${requestScope.currentURL}";
    </script>
</head>
<body class="login-layout light-login">
<div class="main-container">
    <div class="main-content">
        <sitemesh:write property='body'/>
    </div><!-- /.main-content -->
</div><!-- /.main-container -->
<!-- basic scripts -->
<!--[if !IE]> -->
<script src="${ctx}/static/js/jquery.js"></script>
<!-- <![endif]-->
<!--[if IE]>
<script src="${ctx}/static/js/jquery1x.js"></script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='${ctx}/static/js/jquery.mobile.custom.js'>" + "<" + "/script>");
</script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function ($) {
        $(document).on('click', '.toolbar a[data-target]', function (e) {
            e.preventDefault();
            var target = $(this).data('target');
            $('.widget-box.visible').removeClass('visible');//hide others
            $(target).addClass('visible');//show target
        });
    });

    //you don't need this, just used for changing background
    jQuery(function ($) {
        $('#btn-login-dark').on('click', function (e) {
            $('body').attr('class', 'login-layout');
            $('#id-text2').attr('class', 'white');
            $('#id-company-text').attr('class', 'blue');

            e.preventDefault();
        });
        $('#btn-login-light').on('click', function (e) {
            $('body').attr('class', 'login-layout light-login');
            $('#id-text2').attr('class', 'grey');
            $('#id-company-text').attr('class', 'blue');

            e.preventDefault();
        });
        $('#btn-login-blur').on('click', function (e) {
            $('body').attr('class', 'login-layout blur-login');
            $('#id-text2').attr('class', 'white');
            $('#id-company-text').attr('class', 'light-blue');

            e.preventDefault();
        });

    });
</script>
</body>
</html>