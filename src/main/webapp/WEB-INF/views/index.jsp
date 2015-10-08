<%-- 
    Document   : dashboard
    Created on : 2015-9-6, 15:24:05
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>管理中心</title>
        <link href="${pageContext.request.contextPath}/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/resources/admin/css/main.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/admin/js/jquery.js"></script>
        <style type="text/css">
            * {
                font: 12px tahoma, Arial, Verdana, sans-serif;
            }
            html, body {
                width: 100%;
                height: 100%;
                overflow: hidden;
            }
        </style>
        <script type="text/javascript">
            $().ready(function () {

                var $nav = $("#nav a:not(:last)");
                var $menu = $("#menu dl");
                var $menuItem = $("#menu a");

                $nav.click(function () {
                    var $this = $(this);
                    $nav.removeClass("current");
                    $this.addClass("current");
                    var $currentMenu = $($this.attr("href"));
                    $menu.hide();
                    $currentMenu.show();
                    return false;
                });

                $menuItem.click(function () {
                    var $this = $(this);
                    $menuItem.removeClass("current");
                    $this.addClass("current");
                });

            });
        </script>
    </head>
    <body>
        <script type="text/javascript">
            if (self != top) {
                top.location = self.location;
            }
        </script>
        <table class="main">
            <tr>
                <th class="logo">
                    <a href="main.jhtml">
                        <img src="${pageContext.request.contextPath}/resources/admin/images/header_logo.gif" alt="SHOP++" />
                    </a>
                </th>
                <th>
            <div id="nav" class="nav">
                <ul>
                    <li>
                        <a href="#product">商品</a>
                    </li>
                    <li>
                        <a href="#order">订单</a>
                    </li>
                    <li>
                        <a href="#member">会员</a>
                    </li>
                    <li>
                        <a href="#content">内容</a>
                    </li>
                    <li>
                        <a href="#marketing">营销</a>
                    </li>
                    <li>
                        <a href="#statistic">统计</a>
                    </li>
                    <li>
                        <a href="#system">系统</a>
                    </li>
                    <li>
                        <a href="/" target="_blank">首页</a>
                    </li>
                </ul>
            </div>
            <div class="link">
                <strong>admin</strong>
                您好!
                <a href="../profile/edit.jhtml" target="iframe">[账号设置]</a>
                <a href="../logout.jhtml" target="_top">[注销]</a>
            </div>
        </th>
    </tr>
    <tr>
        <td id="menu" class="menu">
            <dl id="product" class="default">
                <dt>商品管理</dt>
                <dd>
                    <a href="../admin/list.jhtml" target="iframe">管理员</a>
                </dd>
                <dd>
                    <a href="../role/list.jhtml" target="iframe">角色管理</a>
                </dd>
            </dl>
        </td>
        <td>
            <iframe id="iframe" name="iframe" src="index.jhtml" frameborder="0"></iframe>
        </td>
    </tr>
</table>
</body>
</html>
