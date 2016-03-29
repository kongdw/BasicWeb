<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="zh-CN" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="zh-CN" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><![endif]-->
<html lang="zh-CN">
<head>
  <title>K0n9后台管理系统</title>
  <link href="${ctx}/static/css/login.css" rel="stylesheet" type="text/css"/>
  <script type="text/javascript" src="${ctx}/static/js/login.js"></script>
</head>
<body>
<div class="content">
  <form class="form-vertical login-form" action="${ctx}/login" method="post">
    <k:BackURL hiddenInput="true"/>
    <h3 class="form-title">用户登录</h3>
    <k:showMessage/>
    <div class="form-group">
      <div class="input-icon">
        <i class="icon-user"></i>
        <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="输入用户名" id="username" name="username" value="${param.username}"/>
      </div>
    </div>
    <div class="form-group">
      <div class="input-icon">
        <i class="icon-lock"></i>
        <input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="输入密码" name="password"/>
      </div>
    </div>
    <c:if test="${jcaptchaEbabled}">
      <div class="form-group">
        <div class="input-icon">
          <i class="icon-qrcode"></i>
          <input type="text" id="jcaptchaCode" name="jcaptchaCode" style="display:inline;" autocomplete="off" class="form-control placeholder-no-fix input-width-medium" placeholder="输入验证码"/>
          <img class="jcaptcha-btn jcaptcha-img pull-right" src="${ctx}/jcaptcha.jpg" style="border: 1px solid #ccc;height: 32px;" title="点击更换验证码">
        </div>
      </div>
    </c:if>
    <div class="form-actions">
      <label class="checkbox pull-left"><input type="checkbox" class="uniform" name="rememberMe"> 记住我</label>
      <button type="submit" class="submit btn btn-primary pull-right">
        登录 <i class="icon-angle-right"></i>
      </button>
    </div>
  </form>
  <form class="form-vertical register-form" action="index.html" method="post" style="display: none;">
    <h3 class="form-title">用户注册</h3>
    <div class="form-group">
      <div class="input-icon">
        <i class="icon-user"></i>
        <input type="text" name="username" class="form-control" placeholder="用户名" autofocus="autofocus" data-rule-required="true">
      </div>
    </div>
    <div class="form-group">
      <div class="input-icon">
        <i class="icon-lock"></i>
        <input type="password" name="password" class="form-control" placeholder="密码" id="register_password" data-rule-required="true" />
      </div>
    </div>
    <div class="form-group">
      <div class="input-icon">
        <i class="icon-ok"></i>
        <input type="password" name="password_confirm" class="form-control" placeholder="确认密码" data-rule-required="true" data-rule-equalTo="#register_password" />
      </div>
    </div>
    <div class="form-group">
      <div class="input-icon">
        <i class="icon-envelope"></i>
        <input type="text" name="Email" class="form-control" placeholder="电子邮件" data-rule-required="true" data-rule-email="true" />
      </div>
    </div>
    <div class="form-group spacing-top">
      <label class="checkbox"><input type="checkbox" class="uniform" name="remember" data-rule-required="true" data-msg-required="Please accept ToS first."> 我同意<a href="javascript:void(0);">服务条款</a></label>
      <label for="remember" class="has-error help-block" generated="true" style="display:none;"></label>
    </div>
    <!-- /Input Fields -->

    <!-- Form Actions -->
    <div class="form-actions">
      <button type="button" class="back btn btn-default pull-left">
        <i class="icon-angle-left"></i> 返回
      </button>
      <button type="submit" class="submit btn btn-primary pull-right">
        注册 <i class="icon-angle-right"></i>
      </button>
    </div>
  </form>
</div>
<div class="inner-box">
  <div class="content">
    <!-- Close Button -->
    <i class="icon-remove close hide-default"></i>
    <!-- Link as Toggle Button -->
    <a href="#" class="forgot-password-link">忘了密码 ?</a>

    <!-- Forgot Password Formular -->
    <form class="form-vertical forgot-password-form hide-default" action="login.html" method="post">
      <!-- Input Fields -->
      <div class="form-group">
        <!--<label for="email">Email:</label>-->
        <div class="input-icon">
          <i class="icon-envelope"></i>
          <input type="text" name="email" class="form-control" placeholder="请输入电子邮件地址" data-rule-required="true" data-rule-email="true" data-msg-required="电子邮件地址必须填写！"/>
        </div>
      </div>
      <!-- /Input Fields -->
      <button type="submit" class="submit btn btn-default btn-block">
        重置密码
      </button>
    </form>
    <!-- /Forgot Password Formular -->

    <!-- Shows up if reset-button was clicked -->
    <div class="forgot-password-done hide-default">
      <i class="icon-ok success-icon"></i> <!-- Error-Alternative: <i class="icon-remove danger-icon"></i> -->
      <span>Great. We have sent you an email.</span>
    </div>
  </div> <!-- /.content -->
</div>
</body>
</html>