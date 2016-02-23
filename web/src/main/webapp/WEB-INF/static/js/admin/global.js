var AdminGlobal = function () {
    return {
        init: function () {
            /**
             * 初始化菜单
             * @type {*|jQuery|HTMLElement}
             */
            var menuDiv = $(".page-sidebar-menu");
            if (menuDiv.size() > 0) {
                /**
                 *
                 * @param list 为json数据
                 * @param parent  为要组合成html的容器
                 * @param rootPath 根节点
                 */
                var addMenus = function (list, parent, rootPath) {
                    for (var m in list) {
                        var currentPath = rootPath;
                        //如果有子节点，则遍历该子节点
                        if (list[m].hasChildren) {
                            currentPath = (rootPath ? rootPath + ":" : "" ) + list[m].name;
                            //创建一个子节点li
                            var li = $('<li data-path="' + currentPath + '"></li>');
                            var temp = '<a href="javascript:void(0);"><i class="' + (list[m].icon ? "" : "icon-link") + '"></i><span class="title">' + list[m].name + '</span><span class="arrow"></span></a>';
                            //将li的文本设置好，并马上添加一个空白的ul子节点，并且将这个li添加到父亲节点中
                            $(li).append(temp).append('<ul class="sub-menu"></ul>').appendTo(parent);
                            //将空白的ul作为下一个递归遍历的父亲节点传入
                            addMenus(list[m].children, $(li).find("> ul.sub-menu").eq(0), currentPath);
                        }
                        //如果该节点没有子节点，则直接将该节点li以及文本创建好直接添加到父亲节点中
                        else {
                            var temp = '<li data-path="' + currentPath + ":" + list[m].name + '"><a href="javascript:void(0);" rel="address:' + list[m].url + '|' + currentPath + ":" +list[m].name + '"> <i class="' + (list[m].icon ? "" : "icon-link") + '"></i>' + list[m].name + '</a></li>';
                            $(temp).appendTo(parent);
                        }
                    }
                };
                menuDiv.ajaxJsonUrl(ctx + "/admin/menus", function (data) {
                    Metronic.blockUI({
                        target: menuDiv,
                        animate: true,
                        overlayColor: 'none'
                    });
                    addMenus(data, menuDiv, "");
                    window.setTimeout(function () {
                        Metronic.unblockUI(menuDiv);
                    }, 1000);
                });
            }
            $.address.change(function (data) {
                if (data.value == "/dashboard") {
                    AdminGlobal.addOrActivePanel(DASHBOARD_URI + "|Dashboard")
                } else {
                    if (data.value == "/") {
                        var j = window.location.href.replace(/.*\/admin/g, "");
                        if (j == "" || j == "/" || j == "#") {
                            AdminGlobal.addOrActivePanel(DASHBOARD_URI + "|Dashboard")
                        } else {
                            AdminGlobal.addOrActivePanel("/admin/" + j + "|Dashboard")
                        }
                    } else {
                        var menu = $('.page-sidebar li > a[rel^="address:' + data.value + '"]');
                        if (menu.size() > 0) {
                            AdminGlobal.addOrActivePanel(menu.attr("rel").replace("address:", ""));
                            var p = $(".page-sidebar-menu").find("li");
                            p.removeClass("active").removeClass("open");
                            p.find('span').remove(".selected");
                            var parentLi = menu.parent("li");
                            parentLi.addClass("active");
                            var ul = parentLi.closest("ul.sub-menu");
                            while (ul.size() > 0) {
                                var k = ul.parent("li");
                                k.addClass("active");
                                k.addClass("open");
                                k.find(" > a > span.arrow").addClass("open");
                                k.find("> a").append('<span class="selected"></span>');
                                ul = k.closest("ul.sub-menu")
                            }
                        } else {
                            var n = window.location.hash;
                            if (n != "" && !Util.startWith(n, "#/")) {
                                return false
                            }
                            AdminGlobal.addOrActivePanel(data.value)
                        }
                    }
                }
            });
        },
        addOrActivePanel: function (l, m) {
            l = decodeURI(l);
            var b = l;
            var j = l.split("|");
            if (j.length > 1) {
                b = j[0];
                if (m == undefined) {
                    m = j[1]
                }
            }
            b = ctx + b;
            var h = m.split(":");
            var d = h[h.length - 1];
            var m = '<li><a href="#/dashboard" class="btn-dashboard"><i class="fa fa-home"></i> 首页 </a></li> ';
            var f = $("#layout-nav");
            f.find("> li:not(.btn-group)").remove();
            $.each(h, function (o, n) {
                n = n;
                if (o < h.length - 1) {
                    m += '<li class="hidden-inline-xs"><i class="fa fa-angle-right"></i> ' + n + " </li>"
                } else {
                    m += '<li class="hidden-inline-xs"><i class="fa fa-angle-right"></i> <a class="reload" href="javascript:;">' + n + "</a> </li>"
                }
            });
            f.append(m);
            var e = f.next(".tab-content");
            var k = e.find("> div[data-url='" + b + "']");
            if (k.length == 0) {
                k = $('<div data-url="' + b + '" class="panel-content"></div>').appendTo(e);
                k.ajaxGetUrl(b)
            } else {
                k.show()
            }
            e.find("> div").not(k).hide();
            var c = f.find(" > .btn-group > ul.dropdown-menu");
            var g = c.find("> li > a[rel='address:" + l + "']");
            if (g.length == 0) {
                g = $('<a href="javascripts:;" rel="address:' + l + '">' + d + '<span class="badge badge-default">X</span></a>').appendTo(c).wrap("<li/>");
                g.find(".badge").click(function (p) {
                    p.preventDefault();
                    p.stopPropagation();
                    var o = false;
                    k.find("form[method='post']:not(.form-track-disabled)[form-data-modified='true']").each(function () {
                        var r = $(this);
                        if (!confirm("当前表单有修改数据未保存，确认离开当前表单吗？")) {
                            o = true;
                            return false
                        }
                    });
                    if (!o) {
                        g.parent("li").remove();
                        k.remove();
                        var n = 1;
                        c.find("> li").not(g).each(function () {
                            var r = $(this).attr("count");
                            if (r) {
                                if (Number(r) > n) {
                                    n = Number(r)
                                }
                            }
                        });
                        var q = c.find("> li[count='" + n + "'] > a");
                        if (q.length > 0) {
                            q.click()
                        } else {
                            $("#layout-nav >  li > .btn-dashboard").click()
                        }
                    }
                })
            }
            var i = 1;
            c.find("> li").each(function () {
                $(this).removeClass("active");
                var n = $(this).attr("count");
                if (n) {
                    if (Number(n) > i) {
                        i = Number(n)
                    }
                }
            });
            g.parent("li").addClass("active");
            g.parent("li").attr("count", i + 1);
            f.find("> li:not(.btn-group) > a.reload").click(function (n) {
                n.preventDefault();
                k.ajaxGetUrl(b)
            })
        }
    }
}();