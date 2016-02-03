<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf" %>
<k:contentHeader title="用户登录" index="true"/>
<%@include file="/WEB-INF/jsp/common/import-login-css.jspf"%>
<!-- Logo -->
<div class="logo">
  <img src="${ctx}/static/images/logo.png" alt="logo"/>
  <strong>K0n9后台管理系统</strong>
</div>
<!-- /Logo -->
<!-- Login Box -->
<div class="box">
  <div class="content">
    <!-- Login Formular -->
    <form id="loginForm" class="form-vertical login-form" method="post">
      <k:BackURL hiddenInput="true"/>
      <!-- Title -->
      <h3 class="form-title">用户登录</h3>
      <!-- Error Message -->
      <k:showMessage/>
      <!-- Input Fields -->
      <div class="form-group">
        <!--<label for="username">Username:</label>-->
        <div class="input-icon">
          <i class="icon-user"></i>
          <input type="text" id="username" name="username" value="${param.username}" class="form-control" placeholder="用户名" autofocus="autofocus"/>
        </div>
      </div>
      <div class="form-group">
        <!--<label for="password">Password:</label>-->
        <div class="input-icon">
          <i class="icon-lock"></i>
          <input type="password" id="password" name="password" class="form-control" placeholder="密码"/>
        </div>
      </div>
      <%-- jcaptchaEbabled 在JCaptchaValidateFilter设置 --%>
      <c:if test="${jcaptchaEbabled}">
      <div class="form-group">
        <div class="input-icon">
          <i class="icon-qrcode"></i>
          <img class="jcaptcha-btn jcaptcha-img pull-right" src="${ctx}/jcaptcha.jpg" title="点击更换验证码">
          <input type="text" id="jcaptchaCode" name="jcaptchaCode" style="display:inline;" class="form-control input-width-medium " placeholder="验证码"/>
        </div>
      </div>
      </c:if>
      <!-- /Input Fields -->

      <!-- Form Actions -->
      <div class="form-actions">
        <label class="checkbox pull-left"><input type="checkbox" class="uniform" name="rememberMe">自动登录</label>
        <button type="submit" class="submit btn btn-primary pull-right">
          登录 <i class="icon-angle-right"></i>
        </button>
      </div>
    </form>
    <!-- /Login Formular -->
  </div>
  <!-- /.content -->
</div>
<!-- /Login Box -->
<k:contentFooter/>
<%@include file="/WEB-INF/jsp/common/import-login-js.jspf"%>
<script>
  $(document).ready(function () {
    Login.init(); // Init login JavaScript
  });
</script>