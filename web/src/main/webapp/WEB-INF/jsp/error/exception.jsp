<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<k:contentHeader/>
<div class="panel">
    <br/>
    <k:showMessage errorMessage="${error.message}"/>
    <c:set var="stackTrace" value="${error.stackTrace}"/>
    <%@include file="exceptionDetails.jsp"%>
</div>
<k:contentFooter/>
