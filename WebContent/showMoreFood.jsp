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
    <script type="text/javascript"> 
		function check(event) { 
		var e = window.event || event; 
		var target = e.srcElement || e.target; 
		var k = e.keyCode; 
		if(isFunKey(k)) { 
		return true; 
		} 
		var c = getChar(k); 
		if(target.value.length == '' && (c == '-' || c == '+')) { 
		return true; 
		} 
		if(isNaN(target.value + getChar(k))) { 
		return false; 
		} 
		return true; 
		} 
		function isFunKey(code) { 
		// 8 --> Backspace 
		// 35 --> End 
		// 36 --> Home 
		// 37 --> Left Arrow 
		// 39 --> Right Arrow 
		// 46 --> Delete 
		// 112~123 --> F1~F12 
		var funKeys = [8, 35, 36, 37, 39, 46]; 
		for(var i = 112; i <= 123; i++) { 
		funKeys.push(i); 
		} 
		for(var i = 0; i < funKeys.length; i++) { 
		if(funKeys[i] == code) { 
		return true; 
		} 
		} 
		return false; 
		} 
		function getChar(k) { 
		if(k >= 48 && k <= 57) { 
		return String.fromCharCode(k); 
		} 
		if(k >= 96 && k <= 105) { 
		return String.fromCharCode(k - 48); 
		} 
		if(k == 110 || k == 190 || k== 188 ) { 
		return "."; 
		} 
		if(k == 109 || k == 189) { 
		return "-"; 
		} 
		if(k == 107 || k == 187) { 
		return "+"; 
		} 
		return "#"; 
		} 
	</script> 
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
                                �����ڵ�λ�ã�<a href="../">���Ͽ�͵�</a> &gt; <a href="../dingcan/">���϶���</a> &gt; ��Ʒ��ϸ
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- �������� -->

            <div id='pdv_3535' class='pdv_class' title='��������' style='width:650px;height:1079px;top:36px;left:0px; z-index:9'>
				<table border="0">
					<tr>
						<td><b>��Ʒ��ϵ��</b></td>
						<td>
							<select name="foodKind">
								<option value="1">³��</option>
								<option value="2">����</option>
								<option value="3">����</option>
								<option value="4">�ղ�</option>
								<option value="5">����</option>
								<option value="6">���</option>
								<option value="7">���</option>
								<option value="8">�ղ�</option>
								<option value="9">����</option>
								<option value="0">�����</option>
							</select>
						</td>
						<td>&nbsp;</td>
						<td><b>��Ʒ���ƣ�</b></td>
						<td>
						    <input name="foodName" type="text" id="foodName" value="�ؼ���" style = "width:150px"  
	
							      onmouseover=this.focus();this.select();  
							
							      onclick="if(value==defaultValue){value='';this.style.color='#000'}"   
							
							      onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999" />
						</td>
						<td>&nbsp;</td>
						<td><b>��Ʒ�۸�</b></td>
						<td> 
							<input name="foodPrizeFrom" type="text" id="foodPrizeFrom" style="ime-mode:disabled;width:60px" onkeydown="return check(event)" onkeyup="if(isNaN(this.value)||this.value<0||this.value>999999) this.value='0'"
							/> 
						</td>
						<td><b> &nbsp;~ &nbsp;</b></td>
						<td><input name="foodPrizeTo" type="text" id="foodPrizeTo" style="ime-mode:disabled;width:60px" onkeydown="return check(event)" onkeyup="if(isNaN(this.value)||this.value<0||this.value>999999) this.value='0'"
						/></td> 
					</tr>
					<tr>
						<td><b>��Ʒ���ȣ�</b></td>
						<td>
							<select name="foodPungencyDegree">
								<option value="0">����</option>
								<option value="1">΢��</option>
								<option value="2">��</option>
								<option value="3">����</option>
								<option value="4">��̬��</option>				
							</select>
						</td>
						
						<td>&nbsp;</td>
						<td><input type="checkbox" id="preferential" value="preferential" style=" vertical-align:middle" >
						<b>�����Ż�</b></td>
						
					</tr>
				</table>
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