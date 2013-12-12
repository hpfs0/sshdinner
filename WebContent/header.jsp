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
</head>

<body style='background:transparent'>
    <div id='top' style='width:1000px;height:108px;background:none transparent scroll repeat 0% 0%'>
        <!-- �����˵�(һ��) -->
        <div id='pdv_3607' class='pdv_class' style='width:395px;height:25px;left:495px; z-index:4'>
            <div id='spdv_3607' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
                <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                    <div style="height:25px;margin:1px;display:none;background:;">
                        <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                        </div>
                        <div style="float:right;margin-right:10px;display:none">
                            <a href="-1" style="line-height:25px;color:">����</a>
                        </div>
                    </div>
                    <div style="padding:0px">
                        <div id="topmenu">
       						<s:if test="#session.loginStatus!=1"> 
                            	<a href="login.jsp" target="_self">��Ա��¼</a>|
                            </s:if> 
                            <s:if test="#session.loginStatus==1"> 
                            	<a href="login.jsp" target="_self">${sessionScope.memberNickName}</a><a href="logout.action">�˳�</a>|
                            </s:if> 
                            <a href="reg.jsp" target="_self">��Աע��</a>|
                            <a href="linkman.jsp" target="_self">��ϵ��ʽ</a>|
                            <a href="admin/advise.jsp" target="_self">Ͷ�߽���</a>|
                            <a href="carryshow.jsp" target="_self">����˵��</a>|
                            <a href="onwe.jsp" target="_self">��������</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ���������˵� -->
        <div id='pdv_3605' class='pdv_class' style='width:898px;height:41px;top:65px;left:0px; z-index:6'>
            <div id='spdv_3605' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
                <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                    <div style="height:25px;margin:1px;display:none;background:;">
                        <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                        </div>
                        <div style="float:right;margin-right:10px;display:none">
                            <a href="-1" style="line-height:25px;color:">����</a>
                        </div>
                    </div>
                    <div style="padding:0px">
                        <div id="menu">
                            <div class="mainmenuleft"></div>
                            <div class="mainmenuright"></div>
                            <div id="mainmenu">
                                <ul>

                                    <li><a href="index.jsp" target="_self">��ҳ</a>
                                    </li>

                                    <li><a href="search.jsp" target="_self">������ѯ</a>
                                    </li>

                                    <li><a href="orderhelp.jsp" target="_self">����ָ��</a>
                                    </li>

                                    <li><a href="center.jsp" target="_self">��Ա����</a>
                                    </li>

                                    <li><a href="order.jsp" target="_self">�ҵĶ���</a>
                                    </li>

                                    <li><a href="restaurant.jsp" target="_self">��������</a>
                                    </li>

                                    <li><a href="note.jsp" target="_self">�˿�����</a>
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

        <!-- ��վ��־ -->
        <div id='pdv_3608' class='pdv_class' title='' style='width:208px;height:101px;top:0px;left:0px; z-index:9'>
            <div id='spdv_3608' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
                <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
                    <div style="height:25px;margin:1px;display:none;background:;">
                        <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
                        </div>
                        <div style="float:right;margin-right:10px;display:none">
                            <a href="-1" style="line-height:25px;color:">����</a>
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