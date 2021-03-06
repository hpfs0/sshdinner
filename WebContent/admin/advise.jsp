<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="GBK"%>
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
    <title>网上快餐店</title>
	<link href="../css/pagetitlemenu_b2.css" rel="stylesheet" type="text/css" />
	<link href="../css/nav.css" rel="stylesheet" type="text/css" />
	<link href="../css/feedbackform.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="../js/jquery-1.7.2.js"></script>
	<script type="text/javascript" src="../js/jquery.toastmessage.js"></script>
    <link href="../js/resource/css/jquery.toastmessage.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../poshytip-1.2/src/tip-yellow/tip-yellow.css" type="text/css" />
    <script type="text/javascript" src="../poshytip-1.2/src/jquery.poshytip.js"></script>
	<script language="javascript" src="../js/feedback.js"></script>
</head>

<body style='background:transparent'>
    <script>
        var PDV_PAGEID = '317';
        var PDV_RP = '../../../';
        var PDV_COLTYPE = 'page';
        var PDV_PAGENAME = 'html_tsjy';
    </script>

    <div id='contain' style='width:900px;background:#ffffff;margin:0px auto;padding:10px;padding-top:0px;'>
        <div id='content' style='width:900px;height:463px;background:none transparent scroll repeat 0% 0%;margin:10px auto'>
            <!-- 网页标题(菜单) -->
            <div id='pdv_3798' class='pdv_class' title='栏目导航' style='width:245px;height:300px;top:0px;left:0px; z-index:2'>
                <div id='spdv_3798' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/left.jpg) repeat-y">
                        <div style="height:100%;background:url(../images/right.jpg) right repeat-y">
                            <div style="height:43px;background:url(../images/bg.jpg) 0px 0px no-repeat">
                                <div style="float:left;font:bold 16px/43px 'Microsoft YaHei','SimSun',Arial,Sans-Serif;text-align:left;padding-left:50px;color:#feab43;">
                                栏目导航
                                </div>
                                <div style="float:right;width:60px;height:43px;text-align:right;background:url(images/bg.jpg) -840px 0px no-repeat">
                                    <a href="-1" style="font:12px/43px simsun;color:#505050;margin-right:12px;display:none">更多&gt;&gt;</a>
                                </div>
                            </div>
                            <div style="margin:0px 3px;padding:5px;">
                                <div class="titlemenu_b2">
                                    <a href="../onwe.jsp" target="_self" class="titlemenu_b2">关于我们</a>
                                    <a href="../orderhelp.jsp" target="_self" class="titlemenu_b2">订餐指南</a>
                                    <a href="../carryshow.jsp" target="_self" class="titlemenu_b2">配送说明</a>
                                    <a href="../linkman.jsp" target="_self" class="titlemenu_b2">联系方式</a>
                                    <a href="../advise.jsp" target="_self" class="titlemenu_b2">投诉建议</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div style="margin-top:-10px;height:10px;line-height:10px;background:url(../images/bg.jpg) 0px -220px no-repeat">&nbsp;</div>
                    <div style="float:right;margin-top:-10px;width:10px;height:10px;line-height:10px;background:url(../images/bg.jpg) -890px -220px no-repeat">&nbsp;</div>

                </div>
            </div>

            <!-- 当前位置提示条 -->

            <div id='pdv_3801' class='pdv_class' title='当前位置' style='width:650px;height:30px;top:0px;left:250px; z-index:8'>
                <div id='spdv_3801' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;background:#fff;">
                        <div style="height:25px;margin:1px;display:none;background:#cccccc;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:#fff">
                            当前位置
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:#fff">更多</a>
                            </div>
                        </div>
                        <div style="padding:5px">
                            <div id="nav">
                             您现在的位置：<a href="../../">网上快餐店</a> &gt;
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <!-- 全站留言表单 -->

            <div id='pdv_3796' class='pdv_class' title='投诉建议' style='width:650px;height:431px;top:30px;left:250px; z-index:10'>
                <div id='spdv_3796' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
							投诉建议
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">更多</a>
                            </div>
                        </div>
                        <div style="padding:0px">

                            <div id="notice" class="noticediv"></div>
                                <table width="100%" border="0" cellspacing="0" cellpadding="3">

                                    <tr>
                                        <td width="80" align="right">标　　题：
                                        	<font style='color:red'>*</font> 
                                        </td>
                                        <td>
                                            <input id="title" type="text" name="title" class="input" style="width:399px" />
                                            <div style="padding-top:3px;color:#666"></div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td width="80" align="right">投诉建议：
                                        	<font style='color:red'>*</font> 
                                        </td>
                                        <td>
                                            <textarea id="content1" name="content" rows="10" class="textarea" style="width:399px"></textarea>
                                            <div style="padding-top:3px;color:#666"></div>
                                        </td>
                                    </tr>


                                    <tr>
                                        <td width="80" align="right">您的姓名：
                                        	<font style='color:red'>*</font> 
                                        </td>
                                        <td>
                                            <input id="name" type="text" name="name" class="input" style="width:399px" />
                                            <div style="padding-top:3px;color:#666"></div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td width="80" align="right">性　　别：
                                        	<font style='color:red'>*</font> 
                                        </td>
                                        <td>
                                            <select id="sex" name="sex">
                                                <option value="0">先生</option>
                                                <option value="1">女士</option>
                                            </select>
                                            <div style="padding-top:3px;color:#666"></div>
                                        </td>
                                    </tr>


                                    <tr>
                                        <td width="80" align="right">登陆帐号：
                                        	<font style='color:red'>*</font> 
                                        </td>
                                        <td>
                                            <input id="loginid" type="text" name="loginid" class="input" style="width:399px" />
                                            <div style="padding-top:3px;color:#666"></div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td width="80" align="right">联系电话：
                                        	<font style='color:red'>*</font> 
                                        </td>
                                        <td>
                                            <input id="tel" type="text" name="tel" class="input" style="width:399px" />
                                            <div style="padding-top:3px;color:#666"></div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td width="80" align="right">联系地址：
                                        	<font style='color:red'>*</font> 
                                        </td>
                                        <td>
                                            <input id="address" type="text" name="address" class="input" style="width:399px" />
                                            <div style="padding-top:3px;color:#666"></div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td width="80" align="right">验 证 码：</td>
                                        <td>
                                            <div style="height:28px;white-space:nowrap;float:left;margin-right:1px">
                                                <input type="text" id="ImgCode" style="width:40px" class="input" maxlength="4"/>
                                            </div>
                                            <div style="height:28px;white-space:nowrap;float:left">
                                                <img id="codeimg" src="gifcode.action" width="60" height="20" style="border:1px #dddddd solid">
                                            </div>
                                            <span id="getImgCode" style="cursor:pointer;margin-left:10px;line-height:20px">看不清？更换一张</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="80" align="right"></td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="80" align="right">&nbsp;</td>
                                        <td height="30">
                                            <input type="submit" id="Submit" value="提交" class="submit">
                                            <input type='hidden' name='act' value='formsend'>
                                            <input name='groupid' type='hidden' id="groupid" value='16'>
                                        </td>
                                    </tr>
                                </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id='bottom' style='width:900px;height:173px;background:none transparent scroll repeat 0% 0%'>


            <!-- 底部菜单（一级） -->

            <div id='pdv_3797' class='pdv_class' style='width:900px;height:35px;top:0px;left:0px; z-index:3'>
                <div id='spdv_3797' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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
                                <a href="../onwe.jsp" target="_self">关于我们</a>|
                                <a href="../orderhelp.jsp" target="_self">订餐指南</a>|
                                <a href="../carryshow.jsp" target="_self">配送说明</a>|
                                <a href="../linkman.jsp" target="_self">联系方式</a>|
                                <a href="../advise.jsp" target="_self">投诉建议</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 底部信息编辑区 -->

            <div id='pdv_3802' class='pdv_class' title='脚注信息' style='width:898px;height:106px;top:65px;left:0px; z-index:6'>
                <div id='spdv_3802' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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

            <div id='pdv_3804' class='pdv_class' title='' style='width:900px;height:30px;top:35px;left:0px; z-index:7'>
                <div id='spdv_3804' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">

                            </div>
                            <div style="float:right;margin-right:10px;display:inline">
                                <a href="../../../advs/link/" style="line-height:25px;color:">更多</a>
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

            <div id='pdv_3805' class='pdv_class' title='' style='width:123px;height:40px;top:105px;left:656px; z-index:9'>
                <div id='spdv_3805' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">

                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">更多</a>
                            </div>
                        </div>
                        <div style="padding:0px">


                            <img src="../images/1253157163.jpg" border="0" width="100%" />

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