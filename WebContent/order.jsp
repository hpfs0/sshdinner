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
    <title>����ָ��-���Ͽ�͵�</title>
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


            <!-- ��ǰλ����ʾ�� -->

            <div id='pdv_3592' class='pdv_class' title='��ǰλ��' style='width:700px;height:30px;top:1px;left:204px; z-index:2'>
                <div id='spdv_3592' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #4682b4 solid;background:#fff;">
                        <div style="height:25px;margin:1px;display:none;background:#4682b4;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:#fff">
                            ��ǰλ��
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:#fff">����</a>
                            </div>
                        </div>
                        <div style="padding:5px">
                            <div id="nav">
                            �����ڵ�λ�ã�<a href="../">���Ͽ�͵�</a> &gt; <a href="../member/">��Ա����</a> &gt; ������ѯ
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- ��Ա���ܲ˵� -->

            <div id='pdv_3596' class='pdv_class' style='width:194px;height:185px;top:2px;left:2px; z-index:7'>
                <div id='spdv_3596' class='pdv_content' style='overflow:visible;width:100%;'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #def solid;background:#fff;">
                        <div style="height:25px;margin:1px;display:none;background:#cccccc;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:#fff">
                            ��Ա����
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:#fff">����</a>
                            </div>
                        </div>
                        <div style="padding:0px">
                            <script type=text/javascript src="js/qqmenu.js"></script>
                            <div class="arrowlistmenu">

                                <div class="menuheader expandable">��Ա��������</div>
                                <ul class="categoryitems">
                                    <li><a href='../member/member_account.php' target='_self'>��¼�˺�����</a>
                                    </li>
                                    <li><a href='../member/member_person.php' target='_self'>ͷ��ǩ������</a>
                                    </li>
                                    <li><a href='../member/member_detail.php' target='_self'>���������޸�</a>
                                    </li>
                                    <li><a href='../member/member_contact.php' target='_self'>��ϵ��Ϣ�޸�</a>
                                    </li>
                                    <li><a href='../logout.php' target='_self'>��ȫ�˳���¼</a>
                                    </li>
                                </ul>

                                <div class="menuheader expandable">���񶩵���ѯ</div>
                                <ul class="categoryitems">
                                    <li><a href='../member/member_paylist.php' target='_self'>��Ա���Ѽ�¼</a>
                                    </li>
                                    <li><a href='../member/member_buylist.php' target='_self'>��Ա���Ѽ�¼</a>
                                    </li>
                                    <li><a href='../member/member_onlinepay.php' target='_self'>��Ա�ʻ���ֵ</a>
                                    </li>
                                    <li><a href='../dingcan/order.php' target='_self'>���Ͷ�����ѯ</a>
                                    </li>
                                    <li><a href='../huanzeng/order.php' target='_self'>��Ʒ������ѯ</a>
                                    </li>
                                </ul>

                                <div class="menuheader expandable">��Ա����ר��</div>
                                <ul class="categoryitems">
                                    <li><a href='../member/member_fav.php' target='_self'>�ҵ��ղؼ�</a>
                                    </li>
                                    <li><a href='../member/member_friends.php' target='_self'>�ҵĺ���</a>
                                    </li>
                                    <li><a href='../member/member_msn.php' target='_self'>վ�ڶ���</a>
                                    </li>
                                    <li><a href='../member/member_cent.php' target='_self'>�ҵĻ���</a>
                                    </li>
                                </ul>

                            </div>

                        </div>
                    </div>

                </div>
            </div>

            <!-- ��Ա������ѯ -->

            <div id='pdv_3601' class='pdv_class' title='������ѯ' style='width:700px;height:136px;top:31px;left:204px; z-index:10'>
                <div id='spdv_3601' class='pdv_content' style='overflow:visible;width:100%;'>
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;background:#fff;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                            ������ѯ
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">����</a>
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
                                                <option value="all">����״̬</option>
                                                <option value="0">δ����</option>
                                                <option value="1">������</option>
                                            </select>
                                            <select name="showok" id="showok">
                                                <option value="0">�����ж���</option>
                                                <option value="1">����ɶ���</option>
                                            </select>
                                            <input name="key" type="text" class="input" id="key" value="" size="15">
                                            <input name="imageField" id="searchbutton" type="image" src="images/search5.gif" border="0" style="position:relative;top:6px">

                                            <input type="hidden" id="nowshowpay" value="">
                                            <input type="hidden" id="nowshowyun" value="all">
                                            <input type="hidden" id="nowshowok" value="0">
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <table width="100%" border="0" cellspacing="0" cellpadding="5" class="ordergl">
                                <tr>
                                    <td width="75" height="26" align="center" class="biaoti">������</td>
                                    <td class="biaoti">��ƷժҪ</td>
                                    <td width="90" class="biaoti">������Ԫ��</td>
                                    <td width="75" height="26" class="biaoti">����ʱ��</td>
                                    <td width="35" class="biaoti">����</td>
                                    <td width="35" class="biaoti">���</td>
                                    <td width="35" height="26" class="biaoti">����</td>
                                </tr>


                            </table>
                            <div id="showpages">
                                <div id="pagesinfo">��0�� ÿҳ10�� ҳ�Σ�1/1</div>
                                <div id="pages">
                                    <ul>
                                        <li class="pbutton"><a href=/1258520704/dingcan/order.php?page=1&amp;key=&amp;startday=2011-06-29&amp;endday=2011-07-06&amp;showpay=&amp;showyun=all&amp;showok=0>��ҳ</a>
                                        </li>
                                        <li class="pbutton">��һҳ</li>
                                        <li class="pagesnow">1</li>
                                        <li class="pbutton">��һҳ</li>
                                        <li class="opt">
                                            <select onChange="window.location=this.options[this.selectedIndex].value"></select>
                                        </li>
                                        <li class="pbutton"><a href=/1258520704/dingcan/order.php?page=1&amp;key=&amp;startday=2011-06-29&amp;endday=2011-07-06&amp;showpay=&amp;showyun=all&amp;showok=0>βҳ</a>
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


            <!-- �ײ��˵���һ���� -->

            <div id='pdv_3600' class='pdv_class' style='width:900px;height:35px;top:3px;left:3px; z-index:4'>
                <div id='spdv_3600' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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

                                <a href="advise.jsp" target="_self">Ͷ�߽���</a>

                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <!-- �ײ���Ϣ�༭�� -->

            <div id='pdv_3591' class='pdv_class' title='��ע��Ϣ' style='width:898px;height:106px;top:65px;left:0px; z-index:6'>
                <div id='spdv_3591' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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

            <!-- ������������ -->

            <div id='pdv_3590' class='pdv_class' title='' style='width:900px;height:30px;top:38px;left:3px; z-index:8'>
                <div id='spdv_3590' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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

            <!-- ͼƬ/FLASH -->

            <div id='pdv_3599' class='pdv_class' title='' style='width:123px;height:40px;top:108px;left:659px; z-index:9'>
                <div id='spdv_3599' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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