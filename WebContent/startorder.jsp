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
    <title>��������-���Ͽ�͵�</title>
	<link href="css/navpath.css" rel="stylesheet" type="text/css" />
	<link href="css/startorder.css" rel="stylesheet" type="text/css" />
	<link href="css/dingcanweekmenu28.css" rel="stylesheet" type="text/css">
	<link href="css/newslist.css" rel="stylesheet" type="text/css" />
</head>

<body style='background:transparent'>
    <script>
        var PDV_PAGEID = '307';
        var PDV_RP = '../';
        var PDV_COLTYPE = 'dingcan';
        var PDV_PAGENAME = 'startorder';
    </script>

    <div id='contain' style='width:900px;background:rgb(255,255,255);margin:0px auto;padding:0px'>
        <div id='content' style='width:900px;height:1117px;background:none transparent scroll repeat 0% 0%;margin:10px auto'>
            <!-- ��ǰλ����ʾ�� -->
            <div id='pdv_3534' class='pdv_class' title='��ǰλ��' style='width:650px;height:30px;top:0px;left:0px; z-index:8'>
                <div id='spdv_3534' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;background:#fff;">
                        <div style="height:25px;margin:1px;display:none;background:#cccccc;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:#fff">
                            ��ǰλ��
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:#fff">����</a>
                            </div>
                        </div>
                        <div style="padding:5px">
                            <div id="nav">
                            �����ڵ�λ�ã�<a href="../">���Ͽ�͵�</a> &gt; <a href="../dingcan/">���϶���</a> &gt; ��������
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- �������� -->

            <div id='pdv_3535' class='pdv_class' title='��������' style='width:650px;height:1079px;top:36px;left:0px; z-index:9'>
                <div id='spdv_3535' class='pdv_content' style='overflow:visible;width:100%;'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;background:#fff;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                                ��������
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">����</a>
                            </div>
                        </div>
                        <div style="padding:0px">
                            <div style="text-align:center;color:#ff0000;padding:30px 0px;display:none;"></div>
                            <script type=text/javascript src="js/startorder.js"></script>
                            <table width="100%" height="27" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td class="startordertitle">������Ʒ�嵥</td>
                                </tr>
                            </table>
                            <br>
                            <br>
                            <table width="100%" border="0" cellpadding="3" cellspacing="0" class="startorder">
                                <tr>
                                    <td class="cap" width="3" height="23">&nbsp;</td>
                                    <td class="cap" width="75" height="23">��Ʒ����</td>
                                    <td class="cap" height="23">����</div>
                        </td>
                        <td class="cap" width="60" height="23">����(Ԫ)</td>
                        <td width="50" height="23" class="cap">����</td>
                        <td class="cap" width="60" height="23">С��(Ԫ)</td>
                        <td class="cap" width="30" height="23" style="display:none;">����</td>
                        <td class="cap" width="50" height="23" style="display:none;">����С��</td>
                        <td class="cap" width="35" height="23">ȡ��</td>
                        </tr>


                        <tr id="div_diy_34">
                            <td width="3" height="28"></td>
                            <td width="75" height="28">��ѡ��Ʒ</td>
                            <td height="28">����ե��<span style="display:none">{}</span>
                            </td>
                            <td width="60" height="28">6.00</td>
                            <td width="50" height="28">
                                <input type="text" name="cpnums" id="cpnums_diy_34" value="1" class="input" style="width:19px;height:21px;" onFocus="giveModNums(this);" onBlur="modNums(this, '6.00', '6');" />
                            </td>
                            <td width="60" height="28"><span id="jine_34">6.00</span>
                            </td>
                            <td width="30" height="28" style="display:none;">6</td>
                            <td width="50" height="28" style="display:none;"><span id="cent_34">6</span>
                            </td>
                            <td width="35" height="28">
                                <img src="images/quxiao3.gif" border="0" style="cursor:pointer;" onClick="delOne('div_diy_34', '6.00', '6');" />
                            </td>
                        </tr>

                        </table>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>
                                    <table border="0" cellpadding="3" cellspacing="0" style="margin:5px 0px">
                                        <tr>
                                            <td height="20">
                                                ��Ʒ����: <span id="allnums">1</span> ��&nbsp;&nbsp;&nbsp;&nbsp;��Ʒ�ܼ�: <span id="span_tjine">6.00</span> Ԫ
                                                <input type="hidden" id="tjine" value="6.00">
                                            </td>
                                            <td style="display:none;">&nbsp;&nbsp;�ɻ����: <span id="span_tcent">6</span> ��</td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="23" align="right">
                                    <img src="images/smallcart.png" width="16" height="16">
                                </td>
                                <td width="75" align="center"><a href="index.jsp">����ѡ��</a>
                                </td>
                            </tr>
                        </table>

                        <br />

                        <table width="100%" height="27" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td class="startordersel">��д������Ϣ</td>
                            </tr>
                        </table>

                        <div id="notLogin">
                            ����û�е�¼����Ա���Ϳ��Ի�û��֣��ǻ�Ա������ֱ���ύ���� <span class="loginlink">������¼</span> | <a href="reg.jsp" class="nomal">ע��</a>
                        </div>
                        <div id="isLogin">
                            <span id="username"></span> ���ã����ѵ�¼������д���¶�����Ϣ��&nbsp; &nbsp;<a href="center.jsp" class="nomal">��Ա����</a> | &nbsp;<span class="logoutlink">�˳���¼</span>
                        </div>



                        <div id="notice" class="noticediv"></div>
                        <div class="orderform">

                            <form id="OrderForm" method="post" action="">

                                <table width="100%" border="0" cellspacing="1" cellpadding="2">

                                    <tr>
                                        <td height="23" colspan="3" class="biaoti">��д�Ͳ͵�ַ</td>
                                    </tr>
                                    <tr>
                                        <td height="28" colspan="3" style="border-bottom:1px #def solid;padding-left:38px;">��ѡ���Ͳ�����/��д�Ͳ͵�ַ</td>
                                    </tr>
                                    <tr>
                                        <td height="23" colspan="3" style="padding-left:33px;">
                                            <input type="radio" name="yunarea" id="sarea" value="1" checked />
                                            <span><select name="yunzone" id="yunzone">
			  			<option value='0'>��ѡ���Ͳ�����</option>
			  		  </select>
			    </span> 
                                            <span>
					<select name="subzone" id="subzone"></select>
				</span> 
                                            <input type="hidden" id="zoneid" name="zoneid" value="0">�����ַ��
                                            <input name="jaddress" type="text" class="input" id="jaddress" size="30" />&nbsp;<span style="color:#ff0000;">*</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="23" colspan="3" style="padding-left:33px;">
                                            <input type="radio" name="yunarea" id="warea" value="2" />�Լ���д��ϸ��ַ&nbsp;&nbsp;
                                            <input name="xaddress" type="text" class="input" id="xaddress" size="50" />&nbsp;<span style="color:#ff0000;">*</span>
                                        </td>
                                    </tr>
                                    <tr id="tr_yunfei">
                                        <td height="25" colspan="3" style="padding-left:58px;">���ͷ��ã�<span id="span_yunfei"></span> Ԫ</td>
                                    </tr>


                                    <tr>
                                        <td height="8" colspan="3" align="right">&nbsp;</td>
                                    </tr>


                                    <tr>
                                        <td height="23" colspan="3" class="biaoti1">��ϵ��ʽ</td>
                                    </tr>
                                    <tr>
                                        <td height="8" colspan="3" align="right">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td width="96" height="23" align="right">�ͻ����ƣ�</td>
                                        <td height="23" colspan="2">
                                            <input name="name" type="text" class="input" id="name" size="20" />&nbsp;
                                            <span style="color:#ff0000;">*</span>&nbsp;&nbsp;����д������ʵ����</td>
                                    </tr>
                                    <tr>
                                        <td width="96" height="23" align="right">��ϵ�绰��</td>
                                        <td height="23" colspan="2">
                                            <input name="tel" type="text" class="input" id="tel" size="20" />&nbsp;
                                            <span style="color:#ff0000;">*</span>&nbsp;&nbsp;��ϵ�绰��ʽ�磺82667683��������д���ţ�</td>
                                    </tr>
                                    <tr>
                                        <td height="23" align="right">�ֻ����룺</td>
                                        <td height="23" colspan="2">
                                            <input name="mov" type="text" class="input" id="mov" size="20" />&nbsp;
                                            <span style="color:#ff0000;">*</span>&nbsp;&nbsp;�ֻ������ʽ�磺13912345678</td>
                                    </tr>
                                    <tr>
                                        <td height="23" align="right">&nbsp;</td>
                                        <td height="23" colspan="2" style="color:#336699;">
                                            <img src="images/chk_msg.gif" border="0" />&nbsp;&nbsp;��ϵ�绰���ֻ����룬����������дһ��</td>
                                    </tr>


                                    <tr>
                                        <td height="8" colspan="3" align="right">&nbsp;</td>
                                    </tr>


                                    <tr>
                                        <td height="23" colspan="3" class="biaoti1">ѡ�񸶿ʽ���Ͳ�ʱ��</td>
                                    </tr>
                                    <tr>
                                        <td height="8" colspan="3" align="right">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td height="23" align="right">���ʽ��</td>
                                        <td height="23">&nbsp;</td>
                                        <td height="23">
                                            <select name="payid" id="payid">
                                            </select>
                                        </td>
                                    </tr>
                                    <tr id="tr_payintro">
                                        <td height="23" align="right"></td>
                                        <td height="23">&nbsp;</td>
                                        <td height="23">
                                            <div id="payintro">
                                                <div id="payintro_t">
                                                    �����ܽ�<span id="ordertotal">6.00</span> Ԫ</div>
                                                <div id="payintro_text"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="23" align="right">�Ͳ�ʱ�Σ�</td>
                                        <td height="23">&nbsp;</td>
                                        <td height="23">
                                            <select name="sctime" id="sctime">
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="96" height="23" align="right">��ע��Ϣ��</td>
                                        <td width="3" height="23">&nbsp;</td>
                                        <td height="23">
                                            <textarea name="bz" cols="60" rows="5" class="textarea" id="bz"></textarea>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td width="96" height="23" align="right">&nbsp;</td>
                                        <td width="3" height="23">&nbsp;</td>
                                        <td height="23">
                                            <input name="imageField" type="image" src="images/order.gif" width="106" height="36" border="0">
                                            <input name="act" type="hidden" id="act" value="orderformsubmit">
                                            <input name="ifmemberlogin" type="hidden" id="ifmemberlogin" value="0">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="23" align="right">&nbsp;</td>
                                        <td height="23">&nbsp;</td>
                                        <td height="23">&nbsp;</td>
                                    </tr>
                                </table>

                            </form>
                        </div>


                        <br />
                        <input type="hidden" name="modnums_b" id="modnums_b" value="" />

                    </div>
                </div>

            </div>
        </div>

        <!-- ���ܲ˵� -->

        <div id='pdv_3785' class='pdv_class' title='���ܲ˵�' style='width:245px;height:170px;top:0px;left:655px; z-index:10'>
            <div id='spdv_3785' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
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
                                                <td rowspan="5" align="center" valign="top"><span style="background:#f99d20;color:#ffffff;">07</span>
                                                </td>
                                                <td>һ</td>
                                                <td>��</td>
                                                <td>��</td>
                                                <td>��</td>
                                                <td>��</td>
                                                <td>��</td>
                                                <td>��</td>
                                            </tr>

                                            <tr>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=04' class='puriqiclass'>04</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=05' class='puriqiclass'>05</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=06' class='puriqiclass'>06</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=07' class='puriqiclass'>07</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=08' class='puriqiclass'>08</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=09' class='puriqiclass'>09</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=10' class='puriqiclass'>10</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=11' class='puriqiclass'>11</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=12' class='puriqiclass'>12</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=13' class='puriqiclass'>13</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=14' class='puriqiclass'>14</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=15' class='puriqiclass'>15</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=16' class='puriqiclass'>16</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=17' class='puriqiclass'>17</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=18' class='puriqiclass'>18</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=19' class='puriqiclass'>19</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=20' class='puriqiclass'>20</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=21' class='puriqiclass'>21</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=22' class='puriqiclass'>22</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=23' class='puriqiclass'>23</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=24' class='puriqiclass'>24</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=25' class='puriqiclass'>25</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=26' class='puriqiclass'>26</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=27' class='puriqiclass'>27</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=28' class='puriqiclass'>28</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=29' class='puriqiclass'>29</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=30' class='puriqiclass'>30</a>
                                                </td>
                                                <td class='riqi'><a href='../dingcan/caipu.php?m=07&d=31' class='puriqiclass'>31</a>
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

        <!-- �����б� -->

        <div id='pdv_3786' class='pdv_class' title='��վ����' style='width:245px;height:297px;top:176px;left:655px; z-index:11'>
            <div id='spdv_3786' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
                <div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(images/left.jpg) repeat-y">
                    <div style="height:100%;background:url(images/right.jpg) right repeat-y">
                        <div style="height:43px;background:url(images/bg.jpg) 0px 0px no-repeat">
                            <div style="float:left;font:bold 16px/43px 'Microsoft YaHei','SimSun',Arial,Sans-Serif;text-align:left;padding-left:50px;color:#feab43;">
                                ��վ����
                            </div>
                            <div style="float:right;width:60px;height:43px;text-align:right;background:url(images/bg.jpg) -840px 0px no-repeat">
                                <a href="../news/class/" style="font:12px/43px simsun;color:#505050;margin-right:12px;display:inline">����&gt;&gt;</a>
                            </div>
                        </div>
                        <div style="margin:0px 3px;padding:10px;">
                            <ul class="newslist">
                                <li class="newslist"><a href="../news/html/?297.jsp" target="_self" class="newslist">�������٣���Ʒ��Ʒ������</a>
                                </li>
                                <li class="newslist"><a href="../news/html/?296.jsp" target="_self" class="newslist">���ֻ���ӰƱ����Ʒ�����</a>
                                </li>
                                <li class="newslist"><a href="../news/html/?295.jsp" target="_self" class="newslist">��Ʒ�ǽ��������</a>
                                </li>
                                <li class="newslist"><a href="../news/html/?294.jsp" target="_self" class="newslist">10�����嶩���Żݻ��ʼ</a>
                                </li>
                                <li class="newslist"><a href="../news/html/?293.jsp" target="_self" class="newslist">���շż�֪ͨ</a>
                                </li>

                            </ul>

                        </div>
                    </div>
                </div>
                <div style="margin-top:-10px;height:10px;line-height:10px;background:url(../base/border/640/images/bg.jpg) 0px -220px no-repeat">&nbsp;</div>
                <div style="float:right;margin-top:-10px;width:10px;height:10px;line-height:10px;background:url(../base/border/640/images/bg.jpg) -890px -220px no-repeat">&nbsp;</div>

            </div>
        </div>
    </div>
    <div id='bottom' style='width:900px;height:173px;background:none transparent scroll repeat 0% 0%'>


        <!-- �ײ��˵���һ���� -->

        <div id='pdv_3533' class='pdv_class' style='width:900px;height:35px;top:0px;left:0px; z-index:2'>
            <div id='spdv_3533' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
                <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                    <div style="height:25px;margin:1px;display:none;background:;">
                        <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">

                        </div>
                        <div style="float:right;margin-right:10px;display:none">
                            <a href="-1" style="line-height:25px;color:">����</a>
                        </div>
                    </div>
                    <div style="padding:0px">
                        <div id="bottommenu">
                            <a href="onwe.jsp" target="_self">��������</a>|
                            <a href="orderhelp.jsp" target="_self">����ָ��</a>|
                            <a href="carryshow.jsp" target="_self">����˵��</a>|
                            <a href="linkman.jsp" target="_self">��ϵ��ʽ</a>|
                            <a href="advise.jsp" target="_self">Ͷ�߽���</a>|
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ������������ -->

        <div id='pdv_3531' class='pdv_class' title='' style='width:900px;height:30px;top:35px;left:0px; z-index:5'>
            <div id='spdv_3531' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
                <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                    <div style="height:25px;margin:1px;display:none;background:;">
                        <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">

                        </div>
                        <div style="float:right;margin-right:10px;display:inline">
                            <a href="../advs/link/" style="line-height:25px;color:">����</a>
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

        <!-- �ײ���Ϣ�༭�� -->

        <div id='pdv_3528' class='pdv_class' title='��ע��Ϣ' style='width:898px;height:106px;top:65px;left:0px; z-index:6'>
            <div id='spdv_3528' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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

        <!-- ͼƬ/FLASH -->

        <div id='pdv_3532' class='pdv_class' title='' style='width:123px;height:40px;top:105px;left:656px; z-index:7'>
            <div id='spdv_3532' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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
    <div id='bodyex'>

    </div>

</body>

</html>