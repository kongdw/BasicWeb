var Util = function () {
    return {
        init: function () {
            $.fn.ajaxGetUrl = function (url, callback, requestParam) {
                Util.assertNotBlank(url, "ajaxGetUrl调用的url参数不能为空");
                $("#btn-profile-param").hide();
                var el = $(this);
                el.addClass("ajax-get-container");
                el.attr("data-url", url);
                $.ajax({
                    type: "GET",
                    cache: false,
                    url: url,
                    data: requestParam,
                    dataType: "html",
                    headers: {decorator: "body"},
                    success: function (data) {
                        if (callback) {
                            callback.call(el, data)
                        }
                    },
                    error: function (g, e, f) {
                        //if (g.status == 400) {
                        //    el.html(g.responseText)
                        //} else {
                        //    el.html("<h4>页面内容加载失败</h4>" + g.responseText)
                        //}
                        if (g.status == 403) {
                            Util.notify("error", "URL: " + url, "未授权访问")
                        } else {
                            if (g.status == 404) {
                                Util.notify("error", "请尝试刷新页面试试，如果问题依然请联系管理员", "请求资源未找到")
                            } else {
                                Util.notify("error", "数据请求异常，请联系管理员", "系统错误")
                            }
                        }
                    }
                });
                return el
            };
            $.fn.ajaxJsonUrl = function (url, callback, requestParams) {
                Util.assertNotBlank(url, "调用的url参数不能为空");
                var thisElement = $(this);
                $.ajax({
                    traditional: true,
                    type: "GET",
                    cache: false,
                    url: url,
                    dataType: "json",
                    data: requestParams,
                    success: function (data) {
                        if (data.type == "error" || data.type == "warning" || data.type == "failure") {
                            Util.notify("error", data.message)
                        } else {
                            if (callback) {
                                callback.call(thisElement, data)
                            }
                        }
                    },
                    error: function (g, e, f) {
                        if (g.status == 403) {
                            Util.notify("error", "URL: " + url, "未授权访问")
                        } else {
                            if (g.status == 404) {
                                Util.notify("error", "请尝试刷新页面试试，如果问题依然请联系管理员", "请求资源未找到")
                            } else {
                                Util.notify("error", "数据请求异常，请联系管理员", "系统错误")
                            }
                        }
                    }
                })
            };
        },
        assertNotBlank: function (param, message) {
            if (param == undefined || $.trim(param) == "") {
                Util.assert(false, message);
                return
            }
        },
        assert: function (isAlert, message) {
            if (!isAlert) {
                alert(message)
            }
        },
        startWith: function (b, c) {
            var a = new RegExp("^" + c);
            return a.test(b)
        },
        endWith: function (c, a) {
            var b = new RegExp(a + "$");
            return b.test(c)
        },
        /** 提示信息 **/
        notify: function (type, message, title) {
            if (type == "error" || type == "failure") {
                type = "error";
                toastr.options.timeOut = 10000;
                toastr.options.positionClass = "toast-bottom-center"
            } else {
                toastr.options.timeOut = 2000;
                toastr.options.positionClass = "toast-bottom-right"
            }
            if (title == undefined) {
                title = ""
            }
            if (message == null || message == undefined || message == "") {
                message = "操作已处理完成"
            }
            toastr[type](message, title)
        }
    }
}();