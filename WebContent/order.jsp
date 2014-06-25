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
    <title>订餐指南-网上快餐店</title>
	<link href="css/G.css" rel="stylesheet" type="text/css" />
	<link href="css/order.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/order.js"></script>
    <script language="javascript" src="js/Date/WdatePicker.js"></script>
</head>

<body style='background:transparent'>
    <script>
        var PDV_PAGEID = '311';
        var PDV_RP = '../';
        var PDV_COLTYPE = 'member';
        var PDV_PAGENAME = 'dingcanorder';
    </script>

    <div id='contain' style='width:900px;background:rgb(255,255,255);margin:0px auto;padding:0px'>
        <div id='content' style='width:900px;height:189px;background:none transparent scroll repeat 0% 0%;margin:10px auto'>


            <!-- 当前位置提示条 -->

            <div id='pdv_3592' class='pdv_class' title='当前位置' style='width:700px;height:30px;top:1px;left:204px; z-index:2'>
                <div id='spdv_3592' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
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
                            您现在的位置：<a href="../">网上快餐店</a> &gt; <a href="../member/">会员中心</a> &gt; 订单查询
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 会员功能菜单 -->

            <div id='pdv_3596' class='pdv_class' style='width:194px;height:185px;top:2px;left:2px; z-index:7'>
                <div id='spdv_3596' class='pdv_content' style='overflow:visible;width:100%;'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #def solid;background:#fff;">
                        <div style="height:25px;margin:1px;display:none;background:#cccccc;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:#fff">
                            会员中心
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:#fff">更多</a>
                            </div>
                        </div>
                        <div style="padding:0px">
                            <script type=text/javascript src="js/qqmenu.js"></script>
                            <div class="arrowlistmenu">

                                <div class="menuheader expandable">会员资料设置</div>
                                <ul class="categoryitems">
                                    <li><a href='../member/member_account.php' target='_self'>登录账号设置</a>
                                    </li>
                                    <li><a href='../member/member_person.php' target='_self'>头像签名设置</a>
                                    </li>
                                    <li><a href='../member/member_detail.php' target='_self'>个人资料修改</a>
                                    </li>
                                    <li><a href='../member/member_contact.php' target='_self'>联系信息修改</a>
                                    </li>
                                    <li><a href='../logout.php' target='_self'>安全退出登录</a>
                                    </li>
                                </ul>

                                <div class="menuheader expandable">帐务订单查询</div>
                                <ul class="categoryitems">
                                    <li><a href='../member/member_paylist.php' target='_self'>会员付费记录</a>
                                    </li>
                                    <li><a href='../member/member_buylist.php' target='_self'>会员消费记录</a>
                                    </li>
                                    <li><a href='../member/member_onlinepay.php' target='_self'>会员帐户充值</a>
                                    </li>
                                    <li><a href='../dingcan/order.php' target='_self'>订餐订单查询</a>
                                    </li>
                                    <li><a href='../huanzeng/order.php' target='_self'>赠品订单查询</a>
                                    </li>
                                </ul>

                                <div class="menuheader expandable">会员个人专区</div>
                                <ul class="categoryitems">
                                    <li><a href='../member/member_fav.php' target='_self'>我的收藏夹</a>
                                    </li>
                                    <li><a href='../member/member_friends.php' target='_self'>我的好友</a>
                                    </li>
                                    <li><a href='../member/member_msn.php' target='_self'>站内短信</a>
                                    </li>
                                    <li><a href='../member/member_cent.php' target='_self'>我的积分</a>
                                    </li>
                                </ul>

                            </div>

                        </div>
                    </div>

                </div>
            </div>

            <!-- 会员订单查询 -->

            <div id='pdv_3601' class='pdv_class' title='订单查询' style='width:700px;height:136px;top:31px;left:204px; z-index:10'>
                <div id='spdv_3601' class='pdv_content' style='overflow:visible;width:100%;'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;background:#fff;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                            订单查询
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">更多</a>
                            </div>
                        </div>
                        <div style="padding:0px">
                            <table width="100%" border="0" cellpadding="5" cellspacing="1" class="ordersearch">
                                <tr>
                                    <td>
                                        <form action="" method="get" name="ordersearch" id="ordersearch">
                                            &nbsp;
                                            <input name="startday" type="text" class="input" id="startday" style="cursor:pointer" onClick="WdatePicker()" value="2011-06-29" size="10" readonly/>-
                                            <input name="endday" type="text" class="input" id="endday" style="cursor:pointer" onClick="WdatePicker()" value="2011-07-06" size="10" readonly/>
                                            <select name="showyun" id="showyun">
                                                <option value="all">配送状态</option>
                                                <option value="0">未配送</option>
                                                <option value="1">已配送</option>
                                            </select>
                                            <select name="showok" id="showok">
                                                <option value="0">处理中订单</option>
                                                <option value="1">已完成订单</option>
                                            </select>
                                            <input name="key" type="text" class="input" id="key" value="" size="15">
                                            <input name="imageField" id="searchbutton" type="image" src="images/search5.gif" border="0">
                                            <input type="hidden" id="nowshowpay" value="">
                                            <input type="hidden" id="nowshowyun" value="all">
                                            <input type="hidden" id="nowshowok" value="0">
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <table width="100%" border="0" cellspacing="0" cellpadding="5" class="ordergl">
                                <tr>
                                    <td width="75" height="26" align="center" class="biaoti">订单号</td>
                                    <td class="biaoti">商品摘要</td>
                                    <td width="90" class="biaoti">订单金额（元）</td>
                                    <td width="75" height="26" class="biaoti">订购时间</td>
                                    <td width="35" class="biaoti">配送</td>
                                    <td width="35" class="biaoti">完成</td>
                                    <td width="35" height="26" class="biaoti">详情</td>
                                </tr>


                            </table>
                            <div id="showpages">
                                <div id="pagesinfo">共0条 每页10条 页次：1/1</div>
                                <div id="pages">
                                    <ul>
                                        <li class="pbutton"><a href=/1258520704/dingcan/order.php?page=1&amp;key=&amp;startday=2011-06-29&amp;endday=2011-07-06&amp;showpay=&amp;showyun=all&amp;showok=0>首页</a>
                                        </li>
                                        <li class="pbutton">上一页</li>
                                        <li class="pagesnow">1</li>
                                        <li class="pbutton">下一页</li>
                                        <li class="opt">
                                            <select onChange="window.location=this.options[this.selectedIndex].value"></select>
                                        </li>
                                        <li class="pbutton"><a href=/1258520704/dingcan/order.php?page=1&amp;key=&amp;startday=2011-06-29&amp;endday=2011-07-06&amp;showpay=&amp;showyun=all&amp;showok=0>尾页</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>


                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div id='bottom' style='width:900px;height:176px;background:none transparent scroll repeat 0% 0%'>


            <!-- 底部菜单（一级） -->

            <div id='pdv_3600' class='pdv_class' style='width:900px;height:35px;top:3px;left:3px; z-index:4'>
                <div id='spdv_3600' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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

            <!-- 底部信息编辑区 -->

            <div id='pdv_3591' class='pdv_class' title='脚注信息' style='width:898px;height:106px;top:65px;left:0px; z-index:6'>
                <div id='spdv_3591' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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

            <div id='pdv_3590' class='pdv_class' title='' style='width:900px;height:30px;top:38px;left:3px; z-index:8'>
                <div id='spdv_3590' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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

            <div id='pdv_3599' class='pdv_class' title='' style='width:123px;height:40px;top:108px;left:659px; z-index:9'>
                <div id='spdv_3599' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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