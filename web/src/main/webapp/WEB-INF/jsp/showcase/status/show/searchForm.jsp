<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form id="searchForm" class="form-inline search-form" data-change-search="true">

    <kform:label path="search.id_in">编号</kform:label>
    <kform:input path="search.id_in" cssClass="input-small" placeholder="多个使用空格分隔"/>
    &nbsp;&nbsp;

    <kform:label path="search.name_like">名称</kform:label>
    <kform:input path="search.name_like" cssClass="input-small" placeholder="模糊查询"/>

    &nbsp;&nbsp;


    <kform:label path="search.status_eq">状态</kform:label>
    <kform:select path="search.status_eq" cssClass="input-small">
        <kform:option label="所有" value=""/>
        <kform:options items="${statusList}" itemLabel="info"/>
    </kform:select>

    &nbsp;&nbsp;
    <input type="submit" class="btn" value="查询"/>
    <a class="btn btn-link btn-clear-search">清空</a>

</form>


