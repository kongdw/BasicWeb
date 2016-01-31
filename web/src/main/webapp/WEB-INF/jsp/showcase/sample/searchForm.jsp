<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form id="searchForm" class="form-inline search-form" data-change-search="true">

    <kform:label path="search.id_in">编号</kform:label>
    <kform:input path="search.id_in" cssClass="input-small" placeholder="多个使用空格分隔"/>
    <%--<input type="text" id="search.id_in" name="search.id_in" value="${param['search.id_in']}"  />--%>
    &nbsp;
    <kform:label path="search.age_gt">年龄</kform:label>
    <kform:input path="search.age_gt" cssClass="input-small" placeholder="大于"/>

    <kform:label path="search.age_lt">到</kform:label>
    <kform:input path="search.age_lt" cssClass="input-small" placeholder="小于"/>
    &nbsp;&nbsp;
    <input type="submit" class="btn " value="查询"/>
    <a class="btn btn-link accordion-toggle" data-toggle="collapse" href="#searchMore">高级查询</a>
    <a class="btn btn-link btn-clear-search">清空</a>

    <%--more--%>
    <div id="searchMore" class="accordion-body collapse">
        <div class="accordion-inner">

            <kform:label path="search.birthday_gte">出生日期从</kform:label>

            <div class="input-append date">
                <kform:input path="search.birthday_gte" cssClass="input-medium"
                                data-format="yyyy-MM-dd hh:mm:ss"
                                data-position="bottom-left"
                                placeholder="大于等于"/>
                <span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar"></i></span>
            </div>
            <kform:label path="search.birthday_lte">到</kform:label>
            <div class="input-append date">
                <kform:input path="search.birthday_lte" cssClass="input-medium"
                                data-format="yyyy-MM-dd hh:mm:ss"
                                data-position="bottom-left"
                                placeholder="小于等于"/>
                <span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar"></i></span>
            </div>
        </div>
    </div>
</form>
