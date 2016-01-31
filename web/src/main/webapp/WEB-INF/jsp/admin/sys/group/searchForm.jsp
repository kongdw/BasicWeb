<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form id="searchForm" class="form-inline search-form" data-change-search="true">

    <kform:label path="search.name_like">名称</kform:label>
    <kform:input path="search.name_like" cssClass="input-medium"/>
    &nbsp;&nbsp;
    <kform:label path="search.status_eq">默认</kform:label>
    <kform:select path="search.defaultGroup_eq" cssClass="input-small">
        <kform:option label="所有" value=""/>
        <kform:options items="${booleanList}" itemLabel="info"/>
    </kform:select>
    &nbsp;&nbsp;
    <kform:label path="search.show_eq">有效</kform:label>
    <kform:select path="search.show_eq" cssClass="input-small">
        <kform:option label="所有" value=""/>
        <kform:options items="${booleanList}" itemLabel="info"/>
    </kform:select>

    &nbsp;&nbsp;
    <input type="submit" class="btn " value="查询"/>
    <a class="btn btn-link btn-clear-search">清空</a>
</form>
