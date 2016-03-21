$.menus = {
    initMenu: function () {
        var menuDiv = $(".page-sidebar-menu");
        /**
         *
         * @param list 为json数据
         * @param parent  为要组合成html的容器
         * @param rootPath 根节点路径
         */
        var addMenus = function (list, parent, rootPath) {
            $.each(list, function (i, m) {
                var liTemplate = '<li data-path="{rootPath}"><a href="javascript:void(0);"><i class="{icon}"></i><span class="title">{name}</span></a></li>';
                var currentPath = ((rootPath ? rootPath + ":" : "" ) + m.name);
                liTemplate = liTemplate.replace("{rootPath}", currentPath).replace("{icon}", (m.icon ? "" : "icon-link")).replace("{name}", m.name);
                var li = $(liTemplate);
                if (m.hasChildren) {
                    $(li).find('a').append('<span class="arrow"></span>');
                    $(li).append('<ul class="sub-menu"></ul>').appendTo(parent);
                    addMenus(m.children, $(li).find("> ul.sub-menu").eq(0), currentPath);
                } else {
                    $(li).find('a').attr("rel", "address:" + m.url + "|" + currentPath);
                    $(li).appendTo(parent);
                }
            });
        };
        if (menuDiv.size() > 0) {
            menuDiv.ajaxJsonUrl(ctx + "/admin/menus", function (data) {
                Metronic.blockUI({
                    target: menuDiv,
                    animate: true,
                    overlayColor: 'none'
                });
                addMenus(data, menuDiv);
                window.setTimeout(function () {
                    Metronic.unblockUI(menuDiv);
                }, 1000);
            });
        }
    }
};
var AdminGlobal = function () {
    return {
        init: function () {
            /**
             * 初始化菜单
             * @type {*|jQuery|HTMLElement}
             */
            var myHomeUrl = "/admin/welcome";
            $.menus.initMenu();
            $.address.change(function (data) {
                if (data.value == "/") {
                    AdminGlobal.addOrActivePanel(myHomeUrl + "|我的主页")
                } else {
                    if (data.value == "/") {
                        var j = window.location.href.replace(/.*\/admin/g, "");
                        if (j == "" || j == "/" || j == "#") {
                            AdminGlobal.addOrActivePanel(myHomeUrl + "|我的主页")
                        } else {
                            AdminGlobal.addOrActivePanel("/admin" + j + "|我的主页")
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
        addOrActivePanel: function (url, m) {
            url = decodeURI(url);
            var ajaxUrl = url;
            var j = url.split("|");
            if (j.length > 1) {
                ajaxUrl = j[0];
                if (m == undefined) {
                    m = j[1]
                }
            }
            ajaxUrl = ctx + ajaxUrl;
            var h = m.split(":");
            var d = h[h.length - 1];
            var m = '<li><a href="#/welcome" class="btn-dashboard"><i class="fa fa-home"></i> 我的主页 </a></li> ';
            var f = $(".page-breadcrumb");
            var tabContent = $(".tab-content");
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
            var k = tabContent.find("> div[data-url='" + ajaxUrl + "']");
            if (k.length == 0) {
                k = $('<div data-url="' + ajaxUrl + '" class="tab-pane active"></div>').appendTo(tabContent);
                k.ajaxGetUrl(ajaxUrl)
            } else {
                k.show()
            }
            tabContent.find("> div").not(k).hide();
            var c = f.find(" > .btn-group > ul.dropdown-menu");
            var g = c.find("> li > a[rel='address:" + url + "']");
            if (g.length == 0) {
                g = $('<a href="javascripts:;" rel="address:' + url + '">' + d + '<span class="badge badge-default">X</span></a>').appendTo(c).wrap("<li/>");
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
                k.ajaxGetUrl(ajaxUrl)
            })
        }
    }
}();