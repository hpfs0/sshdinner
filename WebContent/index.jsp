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
    <title>���Ͽ�͵�</title>
    <link href="css/dingcanall.css" rel="stylesheet" type="text/css">
    <link href="css/dingcanweekmenu.css" rel="stylesheet" type="text/css">
    <link href="css/newslist_time2.css" rel="stylesheet" type="text/css" />
    <link href="css/dingcanche.css" rel="stylesheet" type="text/css">
    <link href="css/dingcantimeinfo.css" rel="stylesheet" type="text/css">
    <link href="css/accordion.css" rel="stylesheet" type="text/css">
    <script language="javascript" src="js/dingcanall.js"></script>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <!-- the mousewheel plugin -->
    <!--<link rel="stylesheet" type="text/css" href="css/jscrollpane2.css" />
    <script type="text/javascript" src="js/jquery.mousewheel.js"></script>-->
    <!-- the jScrollPane script -->
    <!--<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
    <script type="text/javascript" src="js/scroll-startstop.events.jquery.js"></script>
    <script type="text/javascript" src="js/srollbar.js"></script>-->
    <!--<script type="text/javascript" src="js/srollresize.js"></script>-->
	<script type="text/javascript" src="js/expansion.js"></script>
</head>

<body style='background:transparent' onload="changeBq('01','02','03')">

    <script>
        var PDV_PAGEID = '1';
        var PDV_RP = '';
        var PDV_COLTYPE = 'index';
        var PDV_PAGENAME = 'index';
    </script>
    <div id="jp-container" class="jp-container">
    <div id='contain' style='width:900px;background:rgb(255,255,255);margin:0px auto;padding:0px'>
        <div id='content' style='width:900px;height:616px;background:none transparent scroll repeat 0% 0%;margin:10px auto'>
            <!-- ����ʱ����Ϣ -->
            <div id='pdv_3604' class='pdv_class' title='����ʱ��' style='width:243px;height:195px;top:0px;left:655px; z-index:1'>
                <div id='spdv_3604' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                                ����ʱ��
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">����</a>
                            </div>
                        </div>
                        <div style="padding:0px;height">

                            <div id="dingcantime">
                                <div id="dingcantime2">

                                    <div id="dingcantime_top">
                                        <div id="dingcantime_top_left">����ʱ��</div>
                                        <div id="dingcantime_top_right">&nbsp;</div>
                                    </div>

                                    <div style="padding:px;">

                                        <div class="dingcantimeinfo">
                                            <div style="height:24px;font-size:14px;font-weight:bold;"><font style="color:#ef6906;">��ͣ�</font><font style="color:#404040;">9:00&nbsp;-&nbsp;13:00</font>
                                            </div>
                                            <div style="height:24px;font-size:14px;font-weight:bold;"><font style="color:#ef6906;">��ͣ�</font><font style="color:#404040;">16:00&nbsp;-&nbsp;19:00</font>
                                            </div>
                                            <div style="height:20px;font-size:12px;color:#e52614;">ע�������ջ�����ʱ���òͣ�����ǰ����</div>
                                            <div style="height:24px;font-size:14px;font-weight:bold;color:#f16906;">�绰���ͣ�4008008818</div>
                                            <div style="text-align:center;" title='��ϵ��'>
                                                <a title="���������ҷ���Ϣ" href="http://wpa.qq.com/msgrd?v=3&amp;uin=84312430&amp;site=qq&amp;menu=yes" target="_blank"><img src="http://wpa.qq.com/pa?p=1:84312430:47"></a>
                                                <a title="���������ҷ���Ϣ" href="http://wpa.qq.com/msgrd?v=3&amp;uin=389314570&amp;site=qq&amp;menu=yes" target="_blank"><img src="http://wpa.qq.com/pa?p=1:389314570:47"></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="dingcantime_bottom_left">&nbsp;</div>
                            <div id="dingcantime_bottom_right">&nbsp;</div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- ���ͳ� -->
            <div id='pdv_3614' class='pdv_class' title='�ҵĲͳ�' style='width:243px;height:123px;top:180px;left:655px; z-index:2'>
                <div id='spdv_3614' class='pdv_content' style='overflow:visible;width:100%;'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                                �ҵĲͳ�
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">����</a>
                            </div>
                        </div>
                        <div style="padding:0px">


                            <script language="javascript" src="js/dingcanall.js"></script>
                            <script language="javascript" src="js/dingcansubmit.js"></script>

                            <div id="dingcanche">
                                <div id="dingcanche2">

                                    <div id="dingcanche_top">
                                        <div id="dingcanche_top_left">�ҵĲͳ�</div>
                                        <div id="dingcanche_top_right">&nbsp;</div>
                                    </div>

                                    <div style="padding:px;margin-bottom:10px;">

                                        <div style="height:13px;background:#f6f6f6;margin:0px 3px 1px 3px;">
                                            <div style="float:left;padding-left:60px;">����</div>
                                            <div style="float:right;padding-right:3px;">ȡ��</div>
                                            <div style="float:right;padding-right:10px;">����</div>
                                            <div style="float:right;padding-right:10px;">����</div>
                                        </div>

                                        <div id="dcinfo" style="margin:0px 3px 1px 3px;">

                                        </div>

                                        <div style="height:24px;margin:5px 3px 1px 3px;">
                                            <div style="float:left;line-height:24px;padding-left:25px;">С&nbsp;&nbsp;�ƣ�</div>
                                            <div style="float:right;line-height:24px;padding-right:15px;"><font id="allnums" style="color:#ff0000;">0</font>��</div>
                                            <div style="float:right;line-height:24px;padding-right:30px;"><font id="cpprice" style="color:#ff0000;">0</font>Ԫ</div>
                                        </div>

                                        <div style="height:26px;margin:5px 3px 1px 3px;">
                                            <div id="cartsubmit" style="float:left;padding-left:90px;cursor:pointer;">
                                                <img src="images/canche_submit.gif" border="0" onClick = "window.location='startorder.jsp'"/>
                                            </div>
                                            <div style="float:left;padding-left:10px;cursor:pointer;" onClick="delAll();">
                                                <img src="images/quxiao2.gif" border="0" />
                                            </div>
                                        </div>


                                    </div>

                                </div>
                            </div>

                            <div id="dingcanche_bottom_left">&nbsp;</div>
                            <div id="dingcanche_bottom_right">&nbsp;</div>

                            <input type="hidden" name="modnums_b" id="modnums_b" value="" />

                            <script>
                                $("div.cpline_d:even").addClass("cpline_s");
                            </script>


                        </div>
                    </div>

                </div>
            </div>

            <!-- �����б� -->
            <div id='pdv_3603' class='pdv_class' title='��վ����' style='width:243px;height:186px;top:310px;left:655px; z-index:3'>
                <div id='spdv_3603' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(base/border/640/images/left.jpg) repeat-y">
                        <div style="height:100%;background:url(images/right.jpg) right repeat-y">
                            <div style="height:43px;background:url(images/bg.jpg) 0px 0px no-repeat">
                                <div style="float:left;font:bold 16px/43px 'Microsoft YaHei','SimSun',Arial,Sans-Serif;text-align:left;padding-left:50px;color:#feab43;">
								��վ����
                                </div>
                                <div style="float:right;width:60px;height:43px;text-align:right;background:url(images/bg.jpg) -840px 0px no-repeat">
                                    <a href="news/class/" style="font:12px/43px simsun;color:#505050;margin-right:12px;display:inline">����&gt;&gt;</a>
                                </div>
                            </div>
                            <div style="margin:0px 3px;padding:10px;">


                                <ul class="newslist_time2">

                                    <li class="newslist_time2">
                                        <div class="time">09/27</div><a href="news/html/?297.jsp" target="_self" class="newslist_time2">�������٣���Ʒ��Ʒ������</a>
                                    </li>

                                    <li class="newslist_time2">
                                        <div class="time">09/27</div><a href="news/html/?296.jsp" target="_self" class="newslist_time2">���ֻ���ӰƱ����Ʒ�����</a>
                                    </li>

                                    <li class="newslist_time2">
                                        <div class="time">09/27</div><a href="news/html/?295.jsp" target="_self" class="newslist_time2">��Ʒ�ǽ��������</a>
                                    </li>

                                    <li class="newslist_time2">
                                        <div class="time">09/27</div><a href="news/html/?294.jsp" target="_self" class="newslist_time2">10�����嶩���Żݻ��ʼ</a>
                                    </li>

                                    <li class="newslist_time2">
                                        <div class="time">09/27</div><a href="news/html/?293.jsp" target="_self" class="newslist_time2">���շż�֪ͨ</a>
                                    </li>

                                </ul>

                            </div>
                        </div>
                    </div>
                    <div style="margin-top:-10px;height:10px;line-height:10px;background:url(images/bg.jpg) 0px -220px no-repeat">&nbsp;</div>
                    <div style="float:right;margin-top:-10px;width:10px;height:10px;line-height:10px;background:url(images/bg.jpg) -890px -220px no-repeat">&nbsp;</div>

                </div>
            </div>

            <!-- ���ܲ˵� -->
            <div id='pdv_3613' class='pdv_class' title='���ܲ˵�' style='width:243px;height:100px;top:505px;left:655px; z-index:5'>
                <div id='spdv_3613' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                                ���ܲ˵�
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">����</a>
                            </div>
                        </div>
                        <div style="padding:0px">

                            <div id="dingcanweekmenu">
                                <div id="dingcanweekmenu2">

                                    <div id="dingcanweekmenu_top">
                                        <div id="dingcanweekmenu_top_left">���ܲ˵�</div>
                                        <div id="dingcanweekmenu_top_right">&nbsp;</div>
                                    </div>

                                    <div style="padding:px;">

                                        <div class="dingcanweekmenuinfo">

                                            <table width="100%" border="0" cellspacing="0" cellpadding="3" height="30" style="background:#fef0d3;">
                                                <tr>
                                                    <td>һ</td>
                                                    <td>��</td>
                                                    <td>��</td>
                                                    <td>��</td>
                                                    <td>��</td>
                                                    <td>��</td>
                                                    <td>��</td>
                                                </tr>

                                                <!-- ���ݵ�ǰ�����Զ���ע��ɫTODO -->
                                                <tr>
                                                    <td class='riqi'><a href='dingcan/caipu.php?m=07&d=04' class='puriqiclass'></a>
                                                    </td>
                                                    <td class='riqi'><a href='dingcan/caipu.php?m=07&d=05' class='puriqiclass'></a>
                                                    </td>
                                                    <td class='riqi'><a href='dingcan/caipu.php?m=07&d=06' class='puriqiclass'></a>
                                                    </td>
                                                    <td class='riqi'><a href='dingcan/caipu.php?m=07&d=07' class='puriqiclass'></a>
                                                    </td>
                                                    <td class='riqi'><a href='dingcan/caipu.php?m=07&d=08' class='puriqiclass'></a>
                                                    </td>
                                                    <td class='riqi'><a href='dingcan/caipu.php?m=07&d=09' class='puriqiclass'></a>
                                                    </td>
                                                    <td class='riqi'><a href='dingcan/caipu.php?m=07&d=10' class='puriqiclass'></a>
                                                    </td>
                                                </tr>

                                            </table>

                                        </div>


                                    </div>

                                </div>
                            </div>

                            <div id="dingcanweekmenu_bottom_left">&nbsp;</div>
                            <div id="dingcanweekmenu_bottom_right">&nbsp;</div>

                        </div>
                    </div>

                </div>
            </div>

            <!-- ��Ʒչʾ�붩�� -->
            <div id='pdv_3606' class='pdv_class' title='' style='width:648px;height:1409px;top:0px;left:0px; z-index:12'>
                <div id='spdv_3606' class='pdv_content' style='overflow:visible;width:100%;'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;">
                            </div>
                        </div>
                        <div style="padding:0px;height:405px">

                            <div id="dingcanall">
                                <div id="dingcanall2">

                                    <div id="dingcanall_top">
                                        <div id="dingcanall_top_left"></div>
                                        <div id="dingcanall_top_mid">
                                            <div>
                                                <div id="tt_01" class="dingcanall_menunow" style="display:block;" onmouseover="changeBq('01','02','03');">��ѡ����</div>
                                                <div id="tt_02" class="dingcanall_menu" style="display:block;" onmouseover="changeBq('02','01','03');">�̶��ײ�</div>
                                                <div id="tt_03" class="dingcanall_menu" style="display:block;" onmouseover="changeBq('03','02','01');">����ײ�</div>
                                            </div>
                                        </div>
                                        <div id="dingcanall_top_right">&nbsp;</div>
                                    </div>

                                    <div style="margin-top:-35px;">
                                        <div id="mm_01" class="dingcanall_connow">
											<div class="picon" id="picon">
												<ul>
													<li>
														<img width="252" height="400" alt="jquery flow ͼƬ�л�������� ����ҳ������ť����ͼƬ���ҹ���" src="images/food1.jpg" />
														<div>
															<h3><font color="#000079">���۳�����</font></h3>
															<p><a href="http://home.meishichina.com/recipe-97066.html" target="_blank"><font color="#006000" style="display:none">���ϣ����� ������ ���ϣ��н� ���� �κͼ���</font></a><img class="clickimg" src="images/cart.png" /></p>
														</div>
													</li>
													<li>
														<img width="252" height="400" alt="jqueryͼƬ�л����� ˮƽ�ַ����л�������껬��ͼƬˮƽ�л�" src="images/food2.jpg" />
														<div>
															<h3><font color="#000079">�ɹ�ţ��</font></h3>
															<p><a href="http://www.haodou.com/recipe/294319" target="_blank"><font color="#006000" style="display:none">���ϣ�ţ�� ���ϣ��� �� �Ͼ� ����Ƭ �˽� ������ ���꽴 �罷 ݫ�� ��� ��</font></a><img class="clickimg" src="images/cart.png" /></p>
														</div>
													</li>
													<li>
														<img width="252" height="400" alt="jquery �����˵� jquery��CSS3����һ���������������»�����˵�" src="images/food3.jpg" />
														<div>
															<h3><font color="#000079">���δ�Ϻ</font></h3>
															<p><a href="http://www.haodou.com/recipe/54469" target="_blank"><font color="#006000" style="display:none">���ϣ����Ϻ ���ϣ��Ͼ� ���� ���� ������ �� ��ǩ ɫ���� ���� ��� �� ����</font></a><img class="clickimg" src="images/cart.png" /></p>
														</div>
													</li>
													<li>
														<img width="252" height="400" alt="jquery ���ֹ�����ȫ scroll ֧�����ֻ�ͼƬ ���й��� ���й��� ����ť���ƹ���" src="images/food4.jpg" />
														<div>
															<h3><font color="#000079">��������</font></h3>
															<p><a href="http://blog.sina.com.cn/s/blog_49cb90a40100t3bv.html" target="_blank"><font color="#006000" style="display:none">���ϣ�����8ֻ������5��  ���ϣ�ţ��200�ˣ��������������</font></a><img class="clickimg" src="images/cart.png" /></p>
														</div>
													</li>
													<li>
														<img width="252" height="400" alt="jquery ������Ч�޺������Ч��ʹ��jQuery��CSS" src="images/food5.jpg" />
														<div>
															<h3><font color="#000079">�ཷ��Ƭ</font></h3>
															<p><a href="http://home.meishichina.com/recipe-9541.html" target="_blank"><font color="#006000" style="display:none">���ϣ������150�ˣ��ཷ400�� ���ϣ���Ƭ10�ˣ�ʪ���10�˵��ϣ��Ͼ�12�ˣ�����2�ˣ���2�ˣ���25�ˣ�ֲ����20��</font></a><img class="clickimg" src="images/cart.png" /></p>
														</div>
													</li>
													<li>
														<img width="252" height="400" alt="jquery����֤ formvalidator ��������վ�ύ����֤����" src="images/food6.jpg" />
														<div>
															<h3><font color="#000079">��Ĥ�Ź�</font></h3>
															<p><a href="http://food.lanzhou.cn/system/2012/08/03/010208871.shtml" target="_blank"><font color="#006000" style="display:none">�����Źǣ��������ǣ��Σ����ͣ�õ�帯�飬�˽ǣ���Ҷ������</font></a><img class="clickimg" src="images/cart.png" /></p>
														</div>
													</li>
												</ul>
											</div>
                                        </div>

                                        <div id="mm_02" class="dingcanall_con">
                                            <table>
                                                <tr>
                                                    <td>
                                                        <div>
                                                            <table>
                                                                <tr>
                                                                    <td rowspan="5" class="bookPic">
                                                                        <img src="images/food30.jpg" style="border:1px solid #300;" />
                                                                    </td>
                                                                    <td><span>����:</span>
                                                                    </td>
                                                                    <td><span><strong>��������</strong></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>�г��۸�:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>��Ա�۸�:</span>
                                                                    </td>
                                                                    <td><span><strong style="color:red;">��������</strong></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>����˵��:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>��Ʒ����:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" style="height:40px;">
                                                                        <img class="clickimg" src="images/cart.png" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div>
                                                            <table>
                                                                <tr>
                                                                    <td rowspan="5" class="bookPic">
                                                                        <img src="images/food31.jpg" style="border:1px solid #300;" />
                                                                    </td>
                                                                    <td><span>����:</span>
                                                                    </td>
                                                                    <td><span><strong>��������</strong></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>�г��۸�:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>��Ա�۸�:</span>
                                                                    </td>
                                                                    <td><span><strong style="color:red;">��������</strong></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>����˵��:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>��Ʒ����:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" style="height:40px;">
                                                                        <img class="clickimg" src="images/cart.png" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div>
                                                            <table>
                                                                <tr>
                                                                    <td rowspan="5" class="bookPic">
                                                                        <img src="images/food32.jpg" style="border:1px solid #300;" />
                                                                    </td>
                                                                    <td><span>����:</span>
                                                                    </td>
                                                                    <td><span><strong>��������</strong></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>�г��۸�:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>��Ա�۸�:</span>
                                                                    </td>
                                                                    <td><span><strong style="color:red;">��������</strong></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>����˵��:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>��Ʒ����:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" style="height:40px;">
                                                                        <img class="clickimg" src="images/cart.png" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div>
                                                            <table>
                                                                <tr>
                                                                    <td rowspan="5" class="bookPic">
                                                                        <img src="images/food33.jpg" style="border:1px solid #300;" />
                                                                    </td>
                                                                    <td><span>����:</span>
                                                                    </td>
                                                                    <td><span><strong>��������</strong></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>�г��۸�:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>��Ա�۸�:</span>
                                                                    </td>
                                                                    <td><span><strong style="color:red;">��������</strong></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>����˵��:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>��Ʒ����:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" style="height:40px;">
                                                                        <img class="clickimg" src="images/cart.png" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>


                                        <div id="mm_03" class="dingcanall_con">
                                           <table>
                                                <tr>
                                                    <td>
                                                        <div>
                                                            <table>
                                                                <tr>
                                                                    <td rowspan="5" class="bookPic">
                                                                        <img src="images/food34.jpg" style="border:1px solid #300;" />
                                                                    </td>
                                                                    <td><span>����:</span>
                                                                    </td>
                                                                    <td><span><strong>��������</strong></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>�г��۸�:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>��Ա�۸�:</span>
                                                                    </td>
                                                                    <td><span><strong style="color:red;">��������</strong></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>����˵��:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>��Ʒ����:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" style="height:40px;">
                                                                        <img class="clickimg" src="images/cart.png" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div>
                                                            <table>
                                                                <tr>
                                                                    <td rowspan="5" class="bookPic">
                                                                        <img src="images/food35.jpg" style="border:1px solid #300;" />
                                                                    </td>
                                                                    <td><span>����:</span>
                                                                    </td>
                                                                    <td><span><strong>��������</strong></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>�г��۸�:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>��Ա�۸�:</span>
                                                                    </td>
                                                                    <td><span><strong style="color:red;">��������</strong></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>����˵��:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>��Ʒ����:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" style="height:40px;">
                                                                        <img class="clickimg" src="images/cart.png" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div>
                                                            <table>
                                                                <tr>
                                                                    <td rowspan="5" class="bookPic">
                                                                        <img src="images/food38.jpg" style="border:1px solid #300;" />
                                                                    </td>
                                                                    <td><span>����:</span>
                                                                    </td>
                                                                    <td><span><strong>��������</strong></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>�г��۸�:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>��Ա�۸�:</span>
                                                                    </td>
                                                                    <td><span><strong style="color:red;">��������</strong></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>����˵��:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>��Ʒ����:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" style="height:40px;">
                                                                        <img class="clickimg" src="images/cart.png" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div>
                                                            <table>
                                                                <tr>
                                                                    <td rowspan="5" class="bookPic">
                                                                        <img src="images/food39.jpg" style="border:1px solid #300;" />
                                                                    </td>
                                                                    <td><span>����:</span>
                                                                    </td>
                                                                    <td><span><strong>��������</strong></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>�г��۸�:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>��Ա�۸�:</span>
                                                                    </td>
                                                                    <td><span><strong style="color:red;">��������</strong></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>����˵��:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span>��Ʒ����:</span>
                                                                    </td>
                                                                    <td><span>��������</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" style="height:40px;">
                                                                        <img class="clickimg" src="images/cart.png" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>


                                    </div>

                                </div>
                            </div>

                            <div id="dingcanall_bottom_left">&nbsp;</div>
                            <div id="dingcanall_bottom_right">&nbsp;</div>

                            <input type="hidden" name="picw" id="picw" value="150" />
                            <input type="hidden" name="pich" id="pich" value="140" />
                            <input type="hidden" name="fittype" id="fittype" value="auto" />


                        </div>
                    </div>

                </div>
            </div>

            <!-- ͼƬ/FLASH -->
            <div id='pdv_3602' class='pdv_class' title='' style='width:649px;height:151px;top:435px;left:0px; z-index:13'>
                <div id='spdv_3602' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">

                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">����</a>
                            </div>
                        </div>
                        <div style="padding:0px">
                            <img src="images/1254038036.gif" border="0" width="100%" />
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div id='bottom' style='width:900px;height:173px;background:none transparent scroll repeat 0% 0%'>

            <!-- �ײ���Ϣ�༭�� -->
            <div id='pdv_3610' class='pdv_class' title='��ע��Ϣ' style='width:898px;height:106px;top:65px;left:0px; z-index:7'>
                <div id='spdv_3610' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                                ��ע��Ϣ
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">����</a>
                            </div>
                        </div>
                        <div style="padding:0px">
                            <div style="width:100%;text-align:center;font:12px/20px Arial, Helvetica, sans-serif">
                                <div style="LINE-HEIGHT: 30px">�绰��0573-87654321 ��ǰQQ��241457 45761112 ��ַ���㽭ʡ�����н�����·1586�� �ʱࣺ314000 �����������</div>
                                <div style="LINE-HEIGHT: 30px">���Ͽ�͵� Copyright(C)2009-2010</div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>



            <div id="bottommenu">
                <a href="onwe.jsp" target="_self">��������</a>|
                <a href="orderhelp.jsp" target="_self">����ָ��</a>|
                <a href="carryshow.jsp" target="_self">����˵��</a>|
                <a href="linkman.jsp" target="_self">��ϵ��ʽ</a>|
                <a href="admin/advise.jsp" target="_self">Ͷ�߽���</a>|
            </div>
            <!-- �ײ��˵���һ���� -->
            <div id='pdv_3612' class='pdv_class' style='width:898px;height:35px;top:0px;left:0px; z-index:8'>
                <div id='spdv_3612' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">����</a>
                            </div>
                        </div>
                        <div style="padding:0px">
                        </div>
                    </div>

                </div>
            </div>

            <!-- ������������ -->
            <div id='pdv_3609' class='pdv_class' title='' style='width:898px;height:30px;top:35px;left:0px; z-index:10'>
                <div id='spdv_3609' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">

                            </div>
                            <div style="float:right;margin-right:10px;display:inline">
                                <a href="advs/link/" style="line-height:25px;color:">����</a>
                            </div>
                        </div>
                        <div style="padding:5px">
                            <ul style="margin:0;padding:0">
                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://food.39.net/" target="_self">39������</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://eat.51ttyy.com/" target="_self">����Ӫ����</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.canyin.com/" target="_self">�й�������</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.canyinshijie.com/" target="_self">����������</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.tesecai.cn/" target="_self">��ɫ����</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.westfood.com.cn/" target="_self">�й�������</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.chinavegan.com/" target="_self">�л���ʳ��</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.kclm.org/" target="_self">�й����������</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.souchu.com/" target="_self">�ѳ���</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.cantingsheji.com/" target="_self">���������</a> 
                                </li>

                                <li style="list-style-type:none;float:left;margin:0px;padding:3px 10px 3px 10px; white-space:nowrap">
                                    <a href="http://www.meishichina.com/" target="_self">��ʳ�й�</a> 
                                </li>
                            </ul>

                        </div>
                    </div>

                </div>
            </div>

            <!-- ͼƬ/FLASH -->
            <div id='pdv_3611' class='pdv_class' title='' style='width:121px;height:44px;top:94px;left:656px; z-index:11'>
                <div id='spdv_3611' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">����</a>
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