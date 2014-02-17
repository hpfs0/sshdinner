<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="GBK"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/common.css" rel="stylesheet" type="text/css" />
    <link href="css/topmenu_bk.css" rel="stylesheet" type="text/css" />
    <link href="css/A.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/base.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/form.js"></script>
    <script type="text/javascript" src="js/channelmenu_dc.js"></script>
    <script type="text/javascript" src="js/quit.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.js"></script>
</head>

<body style='background:transparent'>
    <div id='top' style='width:1000px;height:108px;background:none transparent scroll repeat 0% 0%'>
        <!-- 顶部菜单(一级) -->
        <div id='pdv_3607' class='pdv_class' style='height:25px;left:495px; z-index:4'>
            <div id='spdv_3607' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
                <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                    <div style="height:25px;margin:1px;display:none;background:;">
                        <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                        </div>
                        <div style="float:right;margin-right:10px;display:none">
                            <a href="-1" style="line-height:25px;color:">更多</a>
                        </div>
                    </div>
                    <div style="padding:0px">
                        <div id="topmenu">
       						<s:if test="#session.loginStatus!=1">
                            	<a href="login.jsp" target="_self">会员登录</a>|
                            </s:if> 
                            <s:if test="#session.loginStatus==1">
                            	${sessionScope.memberNickName}<a href="logout.action">退出</a>|
                            </s:if> 
                            <a href="reg.jsp" target="_self">会员注册</a>|
                            <a href="linkman.jsp" target="_self">联系方式</a>|
                            <a href="admin/advise.jsp" target="_self">投诉建议</a>|
                            <a href="carryshow.jsp" target="_self">配送说明</a>|
                            <a href="onwe.jsp" target="_self">关于我们</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 二级导航菜单 -->
        <div id='pdv_3605' class='pdv_class' style='width:898px;height:41px;top:65px;left:0px; z-index:6'>
            <div id='spdv_3605' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
                <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                    <div style="height:25px;margin:1px;display:none;background:;">
                        <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                        </div>
                        <div style="float:right;margin-right:10px;display:none">
                            <a href="-1" style="line-height:25px;color:">更多</a>
                        </div>
                    </div>
                    <div style="padding:0px">
                        <div id="menu">
                            <div class="mainmenuleft"></div>
                            <div class="mainmenuright"></div>
                            <div id="mainmenu">
                                <ul>

                                    <li><a href="index.jsp" target="_self">首页</a>
                                    </li>

                                    <li><a href="search.jsp" target="_self">订单查询</a>
                                    </li>

                                    <li><a href="orderhelp.jsp" target="_self">订餐指南</a>
                                    </li>

                                    <li><a href="center.jsp" target="_self">会员中心</a>
                                    </li>

                                    <li><a href="order.jsp" target="_self">我的订单</a>
                                    </li>

                                    <li><a href="restaurant.jsp" target="_self">店铺详情</a>
                                    </li>

                                    <li><a href="notelist.action" target="_self">顾客留言</a>
                                    </li>

                                </ul>
                            </div>

                            <div id="smenu">
                                <div class="smenuleft"></div>
                                <div class="smenuright"></div>
                                <ul>
                                </ul>

                                <ul>
                                </ul>

                                <ul>
                                </ul>

                                <ul>
                                </ul>

                                <ul>
                                </ul>

                                <ul>
                                </ul>

                                <ul>
                                </ul>

                            </div>
                        </div>
                        <script>
                            showMenu(0);
                        </script>
                    </div>
                </div>

            </div>
        </div>

        <!-- 网站标志 -->
        <div id='pdv_3608' class='pdv_class' title='' style='width:208px;height:101px;top:0px;left:0px; z-index:9'>
            <div id='spdv_3608' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
                <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                    <div style="height:25px;margin:1px;display:none;background:;">
                        <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                        </div>
                        <div style="float:right;margin-right:10px;display:none">
                            <a href="-1" style="line-height:25px;color:">更多</a>
                        </div>
                    </div>
                    <div style="padding:0px">
                        <img src="images/1257477260.gif" border="0" width="100%" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>