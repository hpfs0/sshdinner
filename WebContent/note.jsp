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
    <title>顾客留言-网上快餐店</title>
	<link href="css/guestbookquery.css" rel="stylesheet" type="text/css" />
	<link href="css/guestbookform.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/guestbook.js"></script>
	<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="js/jquery.toastmessage.js"></script>
    <link href="js/resource/css/jquery.toastmessage.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="poshytip-1.2/src/tip-yellow/tip-yellow.css" type="text/css" />
    <script type="text/javascript" src="poshytip-1.2/src/jquery.poshytip.js"></script>
    <script type="text/javascript" src="js/blockui.js"></script>
	<!-- the mousewheel plugin -->
	<link rel="stylesheet" type="text/css" href="css/jscrollpane2.css" />
    <script type="text/javascript" src="js/jquery.mousewheel.js"></script>
    <!-- the jScrollPane script -->
    <!--<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
    <script type="text/javascript" src="js/scroll-startstop.events.jquery.js"></script>
    <script type="text/javascript" src="js/srollbar.js"></script>-->	
</head>

<body style='background:transparent'>
    <script>
        var PDV_PAGEID = '292';
        var PDV_RP = '../';
        var PDV_COLTYPE = 'guestbook';
        var PDV_PAGENAME = 'main';
    </script>
<div id="jp-container" class="jp-container">
    <div id='contain' style='width:900px;background:rgb(255,255,255);margin:0px auto;padding:0px'>
        <div id='content' style='width:900px;height:532px;background:none transparent scroll repeat 0% 0%;margin:10px auto'>
            <!-- 留言翻页检索 -->
            <div id='pdv_3462' class='pdv_class' title='' style='width:900px;height:108px;top:0px;left:0px; z-index:8'>
                <div id='spdv_3462' class='pdv_content' style='overflow:visible;width:100%;'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">

                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">更多</a>
                            </div>
                        </div>
                        <s:iterator value="#request.noteList" status="note">
	                        <div style="padding:0px">
	                            <div id="guestbookquery">
	                                <div class="guestbook">
	
	                                    <div class="auinfo">
	                                        <div class="aupic">
	                                            <a href="http://www.baidu.com" target="_blank"><img src="images/m01.gif" border="0" /></a>
	                                        </div>
	                                        <div class="auname"><a href="http://www.baidu.com" target="_blank"><s:property value="noteLoginId"/></a></div>
	                                        <div class="lynum">第<s:property value="#note.index+1"/>条留言</div>
	                                    </div>
	
	                                    <div class="gbinfo">
	                                        <div class="ttinfo">
	                                            <div class="title"><s:property value="noteTopic"/></div>
	                                            <div class="fjinfo">
	                                                <!-- <img src="images/homepage.gif" border="0" /><a href="http://www.baidu.com" target="_blank">主页</a>&nbsp;&nbsp;  -->
	                                                <img src="images/email.gif" border="0" />信箱&nbsp;&nbsp;
	                                                <img src="images/qq.gif" border="0" />&nbsp;QQ</div>
	                                        </div>
	                                        <div class="lyinfo">
	                                            <div class="mood">
	                                                <img src="images/s1.gif" border="0" />
	                                            </div>
	                                            <div class="bdinfo2">????</div>
	                                        </div>
	                                        <div class="hfinfo">
	                                            <div class="hf" style="display:none;">版主回复：</div>
	                                            <div class="hfanswer" style="display:none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
	                                        </div>
	                                        <div class="btinfo">
	                                            <img src="images/posttime.gif" border="0" />&nbsp;&nbsp;<s:date name="noteTime" />&nbsp;&nbsp;&nbsp;&nbsp;
	                                            <img src="images/ip.gif" border="0" />&nbsp;&nbsp;<s:property value="notePersonalHomePage.substring(0,7)+\"*.*\""/>
	                                        </div>
	                                    </div>
	
	                                </div>
	
	                            </div>
	
	                        </div>
                        </s:iterator>
                        
                        
                        <div id="showpages">
                                <div id="pagesinfo">共60个职位 每页10个 页次：1/6</div>
                                <div id="pages">
                                    <ul>
                                        <li class="pbutton"><a href=/1258520704/guestbook/index.php?page=1&amp;key=>首页</a>
                                        </li>
                                        <li class="pbutton">上一页</li>
                                        <li class="pagesnow">1</li>
                                        <li><a href=/1258520704/guestbook/index.php?page=2&amp;key=>2</a>
                                        </li>
                                        <li><a href=/1258520704/guestbook/index.php?page=3&amp;key=>3</a>
                                        </li>
                                        <li><a href=/1258520704/guestbook/index.php?page=4&amp;key=>4</a>
                                        </li>
                                        <li><a href=/1258520704/guestbook/index.php?page=5&amp;key=>5</a>
                                        </li>
                                        <li><a href=/1258520704/guestbook/index.php?page=6&amp;key=>6</a>
                                        </li>
                                        <li class="pbutton"><a href=/1258520704/guestbook/index.php?page=2&amp;key=>下一页</a>
                                        </li>
                                        <li class="opt">
                                            <select onChange="window.location=this.options[this.selectedIndex].value">
                                                <option value="/1258520704/guestbook/index.php?page=1&amp;key=" selected>第1页</option>
                                                <option value="/1258520704/guestbook/index.php?page=2&amp;key=">第2页</option>
                                                <option value="/1258520704/guestbook/index.php?page=3&amp;key=">第3页</option>
                                                <option value="/1258520704/guestbook/index.php?page=4&amp;key=">第4页</option>
                                                <option value="/1258520704/guestbook/index.php?page=5&amp;key=">第5页</option>
                                                <option value="/1258520704/guestbook/index.php?page=6&amp;key=">第6页</option>
                                            </select>
                                        </li>
                                        <li class="pbutton"><a href=/1258520704/guestbook/index.php?page=6&amp;key=>尾页</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                    </div>

                </div>
            </div>

            <!-- 留言发布表单 -->

            <div id='pdv_3463' class='pdv_class' title='签写留言' style='width:900px;height:414px;top:118px;left:0px; z-index:9'>
                <div id='spdv_3463' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                                签写留言
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">更多</a>
                            </div>
                        </div>
                        <div style="padding:0px">
                            <div id="notice"></div>
                            <!-- <form id="guestbookform" method="post" action="" name="myform">  -->
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="border:1px #d2d2d2 solid;">
                                    <tr>
                                        <td width="123" height="30" align="right" style="border-right:1px #d2d2d2 solid; border-bottom:1px #d2d2d2 solid;">留言标题：</td>
                                        <td colspan="2" style="border-bottom:1px #d2d2d2 solid; padding-left:5px;">
                                            <input type="text" id="title" name="title" value="" class="input" maxlength="20" style="width:300px;" />&nbsp;<font style="color:#ff0000;">*</font>&nbsp;&nbsp;不得超过 20 个字符</td>
                                        <td width="130" rowspan="4" id="headpic" style="border-bottom:1px #d2d2d2 solid; border-left:1px #d2d2d2 solid; text-align:center;">
                                            <div id="headpic2"></div>
                                            <img src="images/m01.gif" border="0" />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td height="30" align="right" style="border-right:1px #d2d2d2 solid; border-bottom:1px #d2d2d2 solid;">您的名字：</td>
                                        <td style="border-bottom:1px #d2d2d2 solid; padding-left:5px;">
                                            <input type="text" id="name" name="name" value="" class="input" maxlength="15" />&nbsp;<font style="color:#ff0000;">*</font> 
                                        </td>
                                        <td width="160" style="border-bottom:1px #d2d2d2 solid; padding-left:5px;">
                                            选择头像：
                                            <select name="headpicsel" id="headpicsel">
                                                <option value="m01" selected="selected">选择头像</option>
                                                <option value="m01">男孩1</option>
                                                <option value="m02">男孩2</option>
                                                <option value="m03">男孩3</option>
                                                <option value="m04">男孩4</option>
                                                <option value="m05">男孩5</option>
                                                <option value="m06">男孩6</option>
                                                <option value="m07">男孩7</option>
                                                <option value="m08">男孩8</option>
                                                <option value="m09">男孩9</option>
                                                <option value="m10">男孩10</option>
                                                <option value="m11">男孩11</option>
                                                <option value="m12">男孩12</option>
                                                <option value="w01">女孩1</option>
                                                <option value="w02">女孩2</option>
                                                <option value="w03">女孩3</option>
                                                <option value="w04">女孩4</option>
                                                <option value="w05">女孩5</option>
                                                <option value="w06">女孩6</option>
                                                <option value="w07">女孩7</option>
                                                <option value="w08">女孩8</option>
                                                <option value="w09">女孩9</option>
                                                <option value="w10">女孩10</option>
                                                <option value="w11">女孩11</option>
                                                <option value="w12">女孩12</option>
                                            </select>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td height="30" align="right" style="border-right:1px #d2d2d2 solid; border-bottom:1px #d2d2d2 solid;">电子邮件：</td>
                                        <td colspan="2" style="border-bottom:1px #d2d2d2 solid; padding-left:5px;">
                                            <input type="text" name="email" value="" class="input" />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td height="30" align="right" style="border-right:1px #d2d2d2 solid; border-bottom:1px #d2d2d2 solid;">QQ号码：</td>
                                        <td colspan="2" style="border-bottom:1px #d2d2d2 solid; padding-left:5px;">
                                            <input type="text" name="qq" value="" class="input" />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td height="30" align="right" style="border-right:1px #d2d2d2 solid; border-bottom:1px #d2d2d2 solid;">主页地址：</td>
                                        <td colspan="3" style="border-bottom:1px #d2d2d2 solid; padding-left:5px;">
                                            <input type="text" name="homepage" value="http://" class="input" />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td width="123" align="right" style="border-right:1px #d2d2d2 solid; border-bottom:1px #d2d2d2 solid;">当前心情：</td>
                                        <td colspan="3" style="border-bottom:1px #d2d2d2 solid; padding-left:5px;">
                                            <ul class="mood">
                                                <li>
                                                    <input type="radio" name="mood" value="s1" checked="checked" />
                                                    <img src="images/s1.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s2" />
                                                    <img src="images/s2.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s3" />
                                                    <img src="images/s3.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s4" />
                                                    <img src="images/s4.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s5" />
                                                    <img src="images/s5.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s6" />
                                                    <img src="images/s6.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s7" />
                                                    <img src="images/s7.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s8" />
                                                    <img src="images/s8.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s9" />
                                                    <img src="images/s9.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s10" />
                                                    <img src="images/s10.gif" border="0" />
                                                </li>
                                            </ul>
                                            <ul class="mood">
                                                <li>
                                                    <input type="radio" name="mood" value="s11" />
                                                    <img src="images/s11.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s12" />
                                                    <img src="images/s12.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s13" />
                                                    <img src="images/s13.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s14" />
                                                    <img src="images/s14.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s15" />
                                                    <img src="images/s15.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s16" />
                                                    <img src="images/s16.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s17" />
                                                    <img src="images/s17.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s18" />
                                                    <img src="images/s18.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s19" />
                                                    <img src="images/s19.gif" border="0" />
                                                </li>
                                                <li>
                                                    <input type="radio" name="mood" value="s20" />
                                                    <img src="images/s20.gif" border="0" />
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="30" align="right" style="border-right:1px #d2d2d2 solid; border-bottom:1px #d2d2d2 solid;">留言内容：</td>
                                        <td colspan="3" style="border-bottom:1px #d2d2d2 solid; padding-left:5px;">
                                            <div id="remLen" style="float:right; padding-top:10px; padding-right:30px;">您还能填写500个字符</div>
                                            <textarea class="textarea" id="body" name="body" id="message" style="width:600px; height:60px;" onKeyDown="textCounter();" onKeyUp="textCounter();"></textarea>&nbsp;<font color="#FF0000">*</font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="30" align="right" style="border-right:1px #d2d2d2 solid; border-bottom:1px #d2d2d2 solid;">其他功能：</td>
                                        <td colspan="3" style="border-bottom:1px #d2d2d2 solid; padding-left:5px;">
                                            <input type="checkbox" name="secret" value="1">悄悄话</td>
                                    </tr>


                                    <tr>
                                        <td width="123" height="30" align="right" style="border-right:1px #d2d2d2 solid; border-bottom:1px #d2d2d2 solid;">验 证 码：</td>
                                        <td colspan="3" style="border-bottom:1px #d2d2d2 solid; padding-left:5px;">
                                            <div style="white-space:nowrap; float:left; margin-top:3px;">
                                                <input type="text" name="ImgCode" style="width:50px" class="input" />
                                            </div>
                                            <div style="cursor:pointer;white-space:nowrap; padding-left:3px; float:left; margin-top:4px;">
                                                <img id="codeimg" src="../codeimg.php" width="60" height="20" style="border:1px #dddddd solid">
                                            </div>
                                            <div id="getImgCode" style="cursor:pointer;margin-left:10px;line-height:30px">看不清？更换一张</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="123" align="right"></td>
                                        <td colspan="3"></td>
                                    </tr>
                                    <tr>
                                        <td width="123" align="right" style="border-right:1px #d2d2d2 solid;">&nbsp;</td>
                                        <td height="30" colspan="3" style="padding-left:5px;">
                                            <input type="submit" id="Submit" name="Submit" value="提交" class="submit">
                                            <input type='hidden' name='act' value='formsend'>
                                            <input name='groupid' type='hidden' id="groupid" value=''>
                                        </td>
                                    </tr>
                                </table>
                            <!-- </form>  -->
                            <script language="JavaScript">
                                function textCounter() {
                                    if (myform.message.value.length > 500) {
                                        myform.message.value = myform.message.value.substring(0, 500);
                                    } else {
                                        document.getElementById("remLen").innerHTML = "您还能填写" + (500 - myform.message.value.length) + "个汉字";
                                    }
                                }
                            </SCRIPT>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id='bottom' style='width:900px;height:171px;background:none transparent scroll repeat 0% 0%'>


            <!-- 底部菜单（一级） -->
            <div id='pdv_3410' class='pdv_class' style='width:900px;height:35px;top:0px;left:0px; z-index:2'>
                <div id='spdv_3410' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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

                                <a href="advise.jsp" target="_self">投诉建议</a>

                            </div>


                        </div>
                    </div>

                </div>
            </div>

            <!-- 文字友情链接 -->

            <div id='pdv_3407' class='pdv_class' title='' style='width:900px;height:30px;top:35px;left:0px; z-index:5'>
                <div id='spdv_3407' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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

            <!-- 底部信息编辑区 -->

            <div id='pdv_3408' class='pdv_class' title='脚注信息' style='width:898px;height:106px;top:65px;left:0px; z-index:6'>
                <div id='spdv_3408' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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

            <!-- 图片/FLASH -->

            <div id='pdv_3409' class='pdv_class' title='' style='width:123px;height:40px;top:105px;left:656px; z-index:7'>
                <div id='spdv_3409' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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
   </div>
    <div id='bodyex'>

    </div>

</body>

</html>