<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<ul id="nav">
<c:forEach items="${menus}" var="m">
    <c:choose>
        <c:when test="${!m.hasChildren}">
            <li>
                <a href="${m.url}">
                    <i class="${m.icon}"></i>
                        ${m.name}
                </a>
            </li>
        </c:when>
        <c:otherwise>
            <li>
                <a href="javascript:void(0);">
                    <i class="${m.icon}"></i>
                        ${m.name}
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <c:forEach items="${m.children}" var="c">
                        <k:submenu menu="${c}"/>
                    </c:forEach>
                </ul>
            </li>
        </c:otherwise>
    </c:choose>
</c:forEach>
</ul>