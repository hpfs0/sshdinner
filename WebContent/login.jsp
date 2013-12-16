<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ include file='header.jsp' %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>会员登录-网上快餐店</title>
	<!-- <link href="../member/templates/css/memberlogin_c.css" rel="stylesheet" type="text/css" /> -->
	<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="js/jquery.toastmessage.js"></script>
    <link href="js/resource/css/jquery.toastmessage.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="poshytip-1.2/src/tip-yellow/tip-yellow.css" type="text/css" />
    <script type="text/javascript" src="poshytip-1.2/src/jquery.poshytip.js"></script>
    <script language="javascript" src="js/login.js"></script>
	<style type="text/css">
    .formFieldError {
        font-family: verdana, arial, helvetica, sans-serif;
        font-size: 12px;
        color: #FF3300;
        vertical-align: center;
    }

    .formFieldError ul{
        margin: 0px;
        padding-left: 15px;
        vertical-align: middle;
    }
    </style>
</head>

<body style='background:transparent'>
    <script>
        var PDV_PAGEID = '5';
        var PDV_RP = '../';
        var PDV_COLTYPE = 'member';
        var PDV_PAGENAME = 'login';
    </script>

    <div id='contain' style='width:900px;background:rgb(255,255,255);margin:0px auto;padding:0px'>
        <div id='content' style='width:900px;height:357px;background:none transparent scroll repeat 0% 0%;margin:10px auto'>
            <!-- 当前位置提示条 -->
            <div id='pdv_392' class='pdv_class' title='当前位置' style='width:700px;height:30px;top:0px;left:203px; z-index:2'>
                <div id='spdv_392' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #4682b4 solid;background:#fff;">
                        <div style="height:25px;margin:1px;display:none;background:#4682b4;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:#fff">
                            当前位置
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:#fff">更多</a>
                            </div>
                        </div>
                        <div style="padding:5px">
                            <div id="nav">
                            您现在的位置：<a href="../">网上快餐店</a> &gt; <a href="../member/">会员中心</a> &gt; 会员登录
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <!-- 会员登录表单(大) -->

            <div id='pdv_391' class='pdv_class' title='会员登录' style='width:681px;height:300px;top:55px;left:145px; z-index:3'>
                <div id='spdv_391' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:#fff;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                            会员登录
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">更多</a>
                            </div>
                        </div>
                        <div style="padding:0px">
                            
                            <div style="width:600px;height:180px; text-align:left;border:1px #f59d5e solid; background-color:#fdebd5;padding:30px;margin:0px">
                                <div style="width:210px;float:left;text-align:left;border:1px #f59d5e solid;padding:20px;background-color:#ffffff;">
                                        <div id="notice" class="noticediv"></div>
                                        <table width="100%" border="0" cellspacing="0" cellpadding="3">
                                            <tr>
                                                <td width="80">登录账号</td>
                                                <td>
                                                    <input type="text" id="muser" name="memberLoginId" class="input" maxlength=20 style="width:135px" value="${cookie['cookiememberLoginId']}">
                                                </td>
                                                <s:fielderror cssStyle="color:red"><s:param>memberLoginId</s:param></s:fielderror>
                                            </tr>
                                            <tr>
                                                <td width="80">登录密码</td>
                                                <td>
                                                    <input type="password" id="mpass" name="memberLoginPw" class="input" style="width:135px" maxlength="20" value="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="80">验 证 码</td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <input type="text" id="ImgCode" name="ImgCode" style="width:59px" class="input" />
                                                            </td>
                                                            <td>
                                                                <img id="codeimg" src="gifcode.action" width="55" height="20" style="border:1px #dddddd solid;cursor:pointer">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                            	<td width="80"></td>
                                            	<td><input type="checkbox" name="isRememberMsg" style="vertical-align:middle;" id="isRememberMsg">记住密码</td>
                                            </tr>
                                            <tr>
                                                <td width="80">
                                                    <input name="act" type="hidden" id="act" value="memberlogin" />
                                                </td>
                                                <td>
                                                    <input type="image" src="images/denglu.gif" border="0" value="1" id="login"/>
                                                    <a href="reg.jsp" style="padding-left:1px">
                                                        <img src="images/zhuce.gif" width="40" height="19" border="0">
                                                    </a>
                                                </td>
                                            </tr>
                                        </table>
                                </div>


                                <div style="width:290px;padding:20px;float:right;text-align:left;border:1px #f59d5e solid;background-color:#ffffff;">
                                    <ul style="margin:0px;padding:0px">
                                        <li style=" list-style-type: none;line-height:30px; background:url(images/cateitems.gif) left no-repeat;padding-left:20px">
                                        如果您已经是会员，请在左侧登录
                                        </li>
                                        <li style="list-style-type: none;line-height:30px; background:url(images/cateitems.gif) left no-repeat;padding-left:20px">
                                        如果您还没有注册会员，<a href="reg.jsp"><font color="#FF6600">点这里注册新会员</font></a>
                                        </li>
                                        <li style="list-style-type: none;line-height:30px; background:url(images/cateitems.gif) left no-repeat;padding-left:20px">
                                        如果您忘记了密码， <a href="../member/lostpass.php"><font color="#99CC00">点这里重设一个密码</font></a>
                                        </li>
                                        <li style="list-style-type: none;line-height:30px; background:url(images/cateitems.gif) left no-repeat;padding-left:20px">
                                        本站使用COOKIE，请打开浏览器的COOKIE功能
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id='bottom' style='width:900px;height:175px;background:none transparent scroll repeat 0% 0%'>

            <!-- 底部菜单（一级） -->
            <div id='pdv_3488' class='pdv_class' style='width:900px;height:35px;top:2px;left:2px; z-index:5'>
                <div id='spdv_3488' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">

                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">更多</a>
                            </div>
                        </div>
                        <div style="padding:0px">
                            <div id="bottommenu">
                                <a href="onwe.jsp" target="_self">关于我们</a>|
                                <a href="orderhelp.jsp" target="_self">订餐指南</a>|
                                <a href="carryshow.jsp" target="_self">配送说明</a>|
                                <a href="linkman.jsp" target="_self">联系方式</a>|
                                <a href="advise.jsp" target="_self">投诉建议</a>|
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 底部信息编辑区 -->

            <div id='pdv_3484' class='pdv_class' title='脚注信息' style='width:898px;height:106px;top:65px;left:0px; z-index:7'>
                <div id='spdv_3484' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                            脚注信息
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">更多</a>
                            </div>
                        </div>
                        <div style="padding:0px">
                            <div style="width:100%;text-align:center;font:12px/20px Arial, Helvetica, sans-serif">
                                <div style="LINE-HEIGHT: 30px">电话：0573-87654321 售前QQ：241457 45761112 地址：浙江省嘉兴市建国南路1586号 邮编：314000 （商务合作）</div>
                                <div style="LINE-HEIGHT: 30px">网上快餐店 Copyright(C)2009-2010</div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>

            <!-- 文字友情链接 -->

            <div id='pdv_3485' class='pdv_class' title='' style='width:900px;height:30px;top:37px;left:2px; z-index:8'>
                <div id='spdv_3485' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">

                            </div>
                            <div style="float:right;margin-right:10px;display:inline">
                                <a href="../advs/link/" style="line-height:25px;color:">更多</a>
                            </div>
                        </div>
                        <div style="padding:5px">

                            <ul style="margin:0;padding:0">

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://food.39.net/" target="_self">39健康网</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://eat.51ttyy.com/" target="_self">天天营养网</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.canyin.com/" target="_self">中国餐饮网</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.canyinshijie.com/" target="_self">餐饮世界网</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.tesecai.cn/" target="_self">特色菜网</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.westfood.com.cn/" target="_self">中国西餐网</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.chinavegan.com/" target="_self">中华素食网</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.kclm.org/" target="_self">中国快餐联盟网</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.souchu.com/" target="_self">搜厨网</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.cantingsheji.com/" target="_self">餐厅设计网</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.meishichina.com/" target="_self">美食中国</a> 
                                </li>

                            </ul>

                        </div>
                    </div>

                </div>
            </div>

            <!-- 图片/FLASH -->

            <div id='pdv_3487' class='pdv_class' title='' style='width:123px;height:40px;top:107px;left:658px; z-index:9'>
                <div id='spdv_3487' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">

                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">更多</a>
                            </div>
                        </div>
                        <div style="padding:0px">


                            <img src="images/1253157163.jpg" border="0" width="100%" />

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div id='bodyex'>

    </div>

</body>

</html>