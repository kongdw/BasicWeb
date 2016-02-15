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
  <link href="${ctx}/static/css/login-soft.css" rel="stylesheet" type="text/css"/>
  <script src="${ctx}/static/js/login-soft.js" type="text/javascript"></script>
  <script src="${ctx}/static/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
</head>
<body>
<!-- BEGIN LOGIN -->
<div class="content">
  <!-- BEGIN LOGIN FORM -->
  <form class="login-form" action="${ctx}/login" method="post">
    <k:BackURL hiddenInput="true"/>
    <h3 class="form-title">用户登录</h3>
    <k:showMessage/>
    <div class="form-group">
      <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
      <label class="control-label visible-ie8 visible-ie9">用户名</label>

      <div class="input-icon">
        <i class="fa fa-user"></i>
        <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="输入用户名" id="username" name="username" value="${param.username}"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label visible-ie8 visible-ie9">密码</label>

      <div class="input-icon">
        <i class="fa fa-lock"></i>
        <input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="输入密码" name="password"/>
      </div>
    </div>
    <c:if test="${jcaptchaEbabled}">
      <div class="form-group">
        <label class="control-label visible-ie8 visible-ie9">验证码</label>

        <div class="input-icon">
          <i class="fa fa-qrcode"></i>
          <input type="text" id="jcaptchaCode" name="jcaptchaCode" style="display:inline;" autocomplete="off" class="form-control placeholder-no-fix input-small" placeholder="输入验证码"/>
          <img class="jcaptcha-btn jcaptcha-img pull-right" src="${ctx}/jcaptcha.jpg" title="点击更换验证码">
        </div>
      </div>
    </c:if>
    <div class="form-actions">
      <label class="checkbox">
        <input type="checkbox" name="rememberMe" value="1"/> 记住我 </label>
      <button type="submit" class="btn blue pull-right">
        登录 <i class="m-icon-swapright m-icon-white"></i>
      </button>
    </div>
    <div class="forget-password">
      <h4>忘了密码?</h4>

      <p>
        不用担心,点击 <a href="javascript:;" id="forget-password">
        这里 </a>
        重置密码.
      </p>
    </div>
    <div class="create-account">
      <p>
        您还没有登录帐号?&nbsp; <a href="javascript:;" id="register-btn">
        立即注册 </a>
      </p>
    </div>
  </form>
  <!-- END LOGIN FORM -->
  <!-- BEGIN FORGOT PASSWORD FORM -->
  <form class="forget-form" action="index.html" method="post">
    <h3>忘了密码 ?</h3>

    <p>
      请输入您注册时使用的邮箱地址。
    </p>

    <div class="form-group">
      <div class="input-icon">
        <i class="fa fa-envelope"></i>
        <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" name="email"/>
      </div>
    </div>
    <div class="form-actions">
      <button type="button" id="back-btn" class="btn">
        <i class="m-icon-swapleft"></i> 返回
      </button>
      <button type="submit" class="btn blue pull-right">
        提交 <i class="m-icon-swapright m-icon-white"></i>
      </button>
    </div>
  </form>
  <!-- END FORGOT PASSWORD FORM -->
  <!-- BEGIN REGISTRATION FORM -->
  <form class="register-form" action="index.html" method="post">
    <h3>注册</h3>

    <p>
      请输入您的个人信息:
    </p>

    <div class="form-group">
      <label class="control-label visible-ie8 visible-ie9">姓名</label>

      <div class="input-icon">
        <i class="fa fa-font"></i>
        <input class="form-control placeholder-no-fix" type="text" placeholder="姓名" name="name"/>
      </div>
    </div>

    <div class="form-group">
      <label class="control-label visible-ie8 visible-ie9">Address</label>

      <div class="input-icon">
        <i class="fa fa-check"></i>
        <input class="form-control placeholder-no-fix" type="text" placeholder="Address" name="address"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label visible-ie8 visible-ie9">City/Town</label>

      <div class="input-icon">
        <i class="fa fa-location-arrow"></i>
        <input class="form-control placeholder-no-fix" type="text" placeholder="City/Town" name="city"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label visible-ie8 visible-ie9">Country</label>
    </div>
    <p>
      请输入您使用本系统帐号信息:
    </p>

    <div class="form-group">
      <label class="control-label visible-ie8 visible-ie9">用户名</label>

      <div class="input-icon">
        <i class="fa fa-user"></i>
        <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="系统帐号" name="username"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label visible-ie8 visible-ie9">密码</label>

      <div class="input-icon">
        <i class="fa fa-lock"></i>
        <input class="form-control placeholder-no-fix" type="password" autocomplete="off" id="register_password" placeholder="6-16位密码，区分大小写" name="password"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label visible-ie8 visible-ie9">确认密码</label>

      <div class="controls">
        <div class="input-icon">
          <i class="fa fa-check"></i>
          <input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="再次输入密码" name="rpassword"/>
        </div>
      </div>
    </div>
    <div class="form-group">
      <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
      <label class="control-label visible-ie8 visible-ie9">Email</label>

      <div class="input-icon">
        <i class="fa fa-envelope"></i>
        <input class="form-control placeholder-no-fix" type="text" placeholder="Email" name="email"/>
      </div>
    </div>
    <%--<div class="form-group">--%>
    <%--<label>--%>
    <%--<input type="checkbox" name="tnc"/> I agree to the <a href="javascript:;">--%>
    <%--Terms of Service </a>--%>
    <%--and <a href="javascript:;">--%>
    <%--Privacy Policy </a>--%>
    <%--</label>--%>
    <%--<div id="register_tnc_error">--%>
    <%--</div>--%>
    <%--</div>--%>
    <div class="form-actions">
      <button id="register-back-btn" type="button" class="btn">
        <i class="m-icon-swapleft"></i> 返回
      </button>
      <button type="submit" id="register-submit-btn" class="btn blue pull-right">
        注册 <i class="m-icon-swapright m-icon-white"></i>
      </button>
    </div>
  </form>
  <!-- END REGISTRATION FORM -->
</div>
<!-- END LOGIN -->
</body>
</html>