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
    <title>��Աע��-���Ͽ�͵�</title>
	<link href="css/reg.css" rel="stylesheet" type="text/css" />	
    <script type="text/javascript" src="js/jquery.toastmessage.js"></script>
    <link href="js/resource/css/jquery.toastmessage.css" rel="stylesheet" type="text/css" />
    <script language="javascript" src="js/reg.js"></script>
</head>

<body style='background:transparent'>
    <script>
        var PDV_PAGEID = '12';
        var PDV_COLTYPE = 'member';
        var PDV_PAGENAME = 'reg';
    </script>
    <div id='contain' style='width:900px;background:rgb(255,255,255);margin:0px auto;padding:0px'>
        
        <div id='content' style='width:900px;height:346px;background:none transparent scroll repeat 0% 0%;margin:10px auto'>
            <!-- ��ǰλ����ʾ�� -->
            <div id='pdv_319' class='pdv_class' title='��ǰλ��' style='width:700px;height:30px;top:0px;left:203px; z-index:2'>
                <div id='spdv_319' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
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
                            �����ڵ�λ�ã�<a href="../">���Ͽ�͵�</a> &gt; <a href="../member/">��Ա����</a> &gt; ��Աע��
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- ��Աע�� -->

            <div id='pdv_1454' class='pdv_class' title='��Աע��' style='width:750px;height:304px;top:43px;left:79px; z-index:3'>
                <div id='spdv_1454' class='pdv_content' style='overflow:visible;width:100%;'>
                
                    <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:#fff;">
                        <div style="height:25px;margin:1px;display:none;background:;">
                            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                                                                 ��Աע��
                            </div>
                            <div style="float:right;margin-right:10px;display:none">
                                <a href="-1" style="line-height:25px;color:">����</a>
                            </div>
                        </div>
                        
                        <div style="padding:0px">
                            <div id="reg">
                                    <div id="stepname" class="stepname"></div>
                                    <div class="zone">
                                        <div id="notice" class="noticediv"></div>

                                        <div class="row">
                                            <div class="left">��Ա���ͣ�</div>
                                            <div class="con">
                                                <select id="membertypeid" name="membertypeid" style="margin-left:11px;margin-top:5px">
                                                    <option value='0'>���˻�Ա</option>
                                                    <option value='1'>�����Ա</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="left">��¼�˺ţ�</div>
                                            <div class="mustfill">*</div>
                                            <div class="con">
                                                <input type="text" id="user" name="user" class="input" style="width:200px" value="" />
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="left">��¼���룺</div>
                                            <div class="mustfill">*</div>
                                            <div class="con">
                                                <input id="password" type="password" name="password" style="width:200px" class="input" value="" />
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="left">�ظ����룺</div>
                                            <div class="mustfill">*</div>
                                            <div class="con">
                                                <input id="repass" type="password" name="repass" class="input" style="width:200px" value="" />
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="left">�����ʼ���</div>
                                            <div class="mustfill">*</div>
                                            <div class="con">
                                                <input id="email" type="text" name="email" class="input" value="" style="width:200px" />
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="left">�ǳƣ�</div>
                                            <div class="mustfill">*</div>
                                            <div class="con">
                                                <input id="pname" type="text" name="pname" class="input" value="" style="width:200px" />
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="left">������</div>
                                            <div class="mustfill">*</div>
                                            <div class="con">
                                                <input id="name" type="text" name="name" class="input" value="" style="width:200px" />
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="left">��˾��</div>
                                            <div class="mustfill">*</div>
                                            <div class="con">
                                                <input id="company" type="text" name="company" class="input" value="" style="width:200px" />
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="left">�̶��绰��</div>
                                            <div class="con">
                                                &nbsp;&nbsp;&nbsp;<input id="tel" type="text" name="tel" class="input" value="" style="width:200px" />
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="left">�ֻ����룺</div>
                                            <div class="mustfill">*</div>
                                            <div class="con">
                                                <input id="mov" type="text" name="mov" class="input" value="" style="width:200px" />
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="left">�� ֤ �룺</div>
                                            <div class="mustfill">*</div>
                                            <div class="con">
                                                <table border="0" cellspacing="0" cellpadding="1">
                                                    <tr>
                                                        <td>
                                                            <input id="ImgCode" type='text' name='ImgCode' style='width:40px' maxlength="4" class="input"/>
                                                        </td>
                                                        <td>
                                                            <img id="codeimg" src="gifcode.action" width='60' height='20' style='border:1px #dddddd solid;cursor:pointer' />
                                                        </td>
                                                        <td><span id="getImgCode" style="cursor:pointer;margin-left:5px;">�����壿����һ��</span>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>

                                        <div class="row" style="margin:10px 0px">
                                            <div class="left"></div>
                                            <div class="mustfill"></div>
                                            <div class="con">
                                                <input type="checkbox" id="tongyi" value="1">&nbsp;ͬ���Աע��Э�� &nbsp; <span id="lookxieyi" style="cursor:pointer">�鿴ע��Э��</span>
                                            </div>
                                        </div>

                                        <div class="row" style="margin:10px 0px">
                                            <div class="left"></div>
                                            <div class="mustfill"></div>
                                            <div class="con">
                                                <input id="tijiao" type="submit" name="cc" value="ע��" class="submit" disabled />
                                                <input name="act" type="hidden" id="act" value="memberreg" />
                                                <input name="nowstep" type="hidden" id="nowstep" value="account" />
                                                <input name="nextstep" type="hidden" id="nextstep" value="enter" />
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id='bottom' style='width:900px;height:171px;background:none transparent scroll repeat 0% 0%'>


            <!-- �ײ��˵���һ���� -->
            <div id='pdv_3481' class='pdv_class' style='width:900px;height:35px;top:1px;left:1px; z-index:5'>
                <div id='spdv_3481' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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

            <div id='pdv_3477' class='pdv_class' title='��ע��Ϣ' style='width:898px;height:106px;top:65px;left:0px; z-index:7'>
                <div id='spdv_3477' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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

            <div id='pdv_3478' class='pdv_class' title='' style='width:900px;height:30px;top:36px;left:1px; z-index:8'>
                <div id='spdv_3478' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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

            <div id='pdv_3480' class='pdv_class' title='' style='width:123px;height:40px;top:106px;left:657px; z-index:9'>
                <div id='spdv_3480' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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