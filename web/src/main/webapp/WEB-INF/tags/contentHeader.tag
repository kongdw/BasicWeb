<%@tag pageEncoding="UTF-8" %>
<%@attribute name="title" type="java.lang.String" required="false" %>
<%@attribute name="index" type="java.lang.Boolean" required="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh_CN">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
  <meta http-equiv="Cache-Control" content="no-store"/>
  <meta http-equiv="Pragma" content="no-cache"/>
  <meta http-equiv="Expires" content="0"/>
  <title>${title}</title>
  <link rel="icon" href="${ctx}/static/favicon.ico">
  <link rel="shortcut icon" href="${ctx}/static/favicon.ico">
  <%@include file="/WEB-INF/jsp/common/import-css.jspf" %>
  <script type="text/javascript">
    var currentURL = "${requestScope.currentURL}";
  </script>
</head>

<body
<c:choose>
<c:when test="${index eq true}">
    class="no-skin"
</c:when>
<c:when test="${index eq false}">
    class="login"
</c:when>
<c:otherwise>
    class=""
</c:otherwise>
</c:choose>
>