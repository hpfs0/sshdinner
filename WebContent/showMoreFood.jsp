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
    <script type="text/javascript" src="js/jquery-1.7.2.js"></script>
    <link href="css/navpath.css" rel="stylesheet" type="text/css" />
    <link href="css/startorder.css" rel="stylesheet" type="text/css" />
    <link href="css/dingcanweekmenu28.css" rel="stylesheet" type="text/css">
    <link href="css/newslist.css" rel="stylesheet" type="text/css" /> 	
    <link href="css/navigationBar.css" rel="stylesheet" type="text/css" />
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
	<script type="text/javascript">
		// ������ఴť�򿪼�����
		function openDetail(){
			var divStyle =document.getElementById("foodSearchDetail").style.display;
			if(divStyle=="none"){
		  		document.getElementById("foodSearchDetail").style.display="";
		  		document.getElementById('choose').style.backgroundImage="url(images/backup_1.jpg)";
			} else{
				document.getElementById("foodSearchDetail").style.display="none";
				document.getElementById('choose').style.backgroundImage="url(images/more_1.jpg)";
			}
		 }
		// �������ʱ����ʾͼ��Ϊѡ��״̬
		function changePictureMouseOver(){
			var divStyle =document.getElementById("foodSearchDetail").style.display;
			if(divStyle=="none"){
				document.getElementById('choose').style.backgroundImage="url(images/more_2.jpg)";
			} else {
				document.getElementById('choose').style.backgroundImage="url(images/backup_2.jpg)";
			}
		}
		// ����Ƴ�ʱ���ָ�ͼ��Ϊδѡ��״̬
		function changePictureMouseOut(){
			var divStyle =document.getElementById("foodSearchDetail").style.display;
			if(divStyle=="none"){
				document.getElementById('choose').style.backgroundImage="url(images/more_1.jpg)";
			} else {
				document.getElementById('choose').style.backgroundImage="url(images/backup_1.jpg)";
			}
		}
	 </script>
	 <script>
		function crud(type) {
			document.myForm.actionType.value=type;
			document.myForm.submit();
		}
	</script>
	
	<script type="text/javascript">
		function linkSelect(type){
			// ��ȡҳ���Ϸ��������Ĳ�Ʒ����
			var foodName = $("#foodName").val();
			// ��ȡҳ���Ϸ��������Ĳ�Ʒ�۸���
			var foodPrizeFrom = $("#foodPrizeFrom").val();
			// ��ȡҳ���Ϸ��������Ĳ�Ʒ�۸��գ�
			var foodPrizeTo = $("#foodPrizeTo").val();
			// ��ȡҳ���Ϸ����������Ż�״��
			var preferential = $("#preferential").val();
			// ���ü��������еĲ�ϵΪ�����ˡ�
			var foodKind = '2';
			// ����ģʽΪ����
			var actionType = 'select';
			$.ajax({
				type: "POST",
				url: "More.action",
				data: "&foodName="+ foodName + "&foodPrizeFrom=" + foodPrizeFrom 
				+ "&foodPrizeTo=" + foodPrizeTo + "&preferential=" + preferential
				+ "&foodKind=" + foodKind + "&foodPungencyDegree" + foodPungencyDegree
				+ "&actionType="+ actionType
			});
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

	<div class="sidebar">
		<h2>��ƷĿ¼</h2>
		<ul id="foodmenu">

			<li><a href="#">����</a>
				<div class="dropdown_4columns">
					<div class="col_1">
						<h3>���Ų�ϵ</h3>
						<ul>
							<li><a id="chuancai" href="javascript:void(0)" onclick="linkSelect('select')">����ϵ��</a></li>
							<li><a href="#">����ϵ��</a></li>
							<li><a href="#">�����ϵ��</a></li>
							<li><a href="#">������ϵ��</a></li>
							<li><a href="#">����ϵ��</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�۸�����</h3>
						<ul>
							<li><a href="#">100Ԫ����</a></li>
							<li><a href="#">100-300Ԫ</a></li>
							<li><a href="#">300-500Ԫ</a></li>
							<li><a href="#">500-1000Ԫ</a></li>
							<li><a href="#">1000Ԫ����</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�����</h3>
						<ul>
							<li><a href="#">����ϵ�д���</a></li>
							<li><a href="#">����5�۴���</a></li>
							<li><a href="#">����һ����</a></li>
							<li><a href="#">�Żݻ</a></li>
							<li><a href="#">���۴���</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�Ƽ���Ʒ</h3>
						<ul>
							<li><a href="#">������˿</a></li>
							<li><a href="#">��������</a></li>
							<li><a href="#">�����ļ���</a></li>
							<li><a href="#">���κ���բз</a></li>
							<li><a href="#">������Ѽ</a></li>
						</ul>
					</div>
				</div></li>
			<!-- End 4 columns Item -->

			<li><a href="#">��Ʒ�ײ�</a>
				<div class="dropdown_4columns">
					<div class="col_1">
						<h3>���Ų�ϵ</h3>
						<ul>
							<li><a href="#">����ϵ��</a></li>
							<li><a href="#">����ϵ��</a></li>
							<li><a href="#">�����ϵ��</a></li>
							<li><a href="#">������ϵ��</a></li>
							<li><a href="#">����ϵ��</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�۸�����</h3>
						<ul>
							<li><a href="#">100Ԫ����</a></li>
							<li><a href="#">100-300Ԫ</a></li>
							<li><a href="#">300-500Ԫ</a></li>
							<li><a href="#">500-1000Ԫ</a></li>
							<li><a href="#">1000Ԫ����</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�����</h3>
						<ul>
							<li><a href="#">����ϵ�д���</a></li>
							<li><a href="#">����5�۴���</a></li>
							<li><a href="#">����һ����</a></li>
							<li><a href="#">�Żݻ</a></li>
							<li><a href="#">���۴���</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�Ƽ���Ʒ</h3>
						<ul>
							<li><a href="#">������˿</a></li>
							<li><a href="#">��������</a></li>
							<li><a href="#">�����ļ���</a></li>
							<li><a href="#">���κ���բз</a></li>
							<li><a href="#">������Ѽ</a></li>
						</ul>
					</div>
				</div></li>
			<!-- End 4 columns Item -->

			<li><a href="#">��Ʒ��ͯ��</a>
				<div class="dropdown_4columns">
					<div class="col_1">
						<h3>���Ų�ϵ</h3>
						<ul>
							<li><a href="#">����ϵ��</a></li>
							<li><a href="#">����ϵ��</a></li>
							<li><a href="#">�����ϵ��</a></li>
							<li><a href="#">������ϵ��</a></li>
							<li><a href="#">����ϵ��</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�۸�����</h3>
						<ul>
							<li><a href="#">100Ԫ����</a></li>
							<li><a href="#">100-300Ԫ</a></li>
							<li><a href="#">300-500Ԫ</a></li>
							<li><a href="#">500-1000Ԫ</a></li>
							<li><a href="#">1000Ԫ����</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�����</h3>
						<ul>
							<li><a href="#">����ϵ�д���</a></li>
							<li><a href="#">����5�۴���</a></li>
							<li><a href="#">����һ����</a></li>
							<li><a href="#">�Żݻ</a></li>
							<li><a href="#">���۴���</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�Ƽ���Ʒ</h3>
						<ul>
							<li><a href="#">������˿</a></li>
							<li><a href="#">��������</a></li>
							<li><a href="#">�����ļ���</a></li>
							<li><a href="#">���κ���բз</a></li>
							<li><a href="#">������Ѽ</a></li>
						</ul>
					</div>
				</div></li>
			<!-- End 4 columns Item -->

			<li><a href="#">Ӫ����</a>
				<div class="dropdown_4columns">
					<div class="col_1">
						<h3>���Ų�ϵ</h3>
						<ul>
							<li><a href="#">����ϵ��</a></li>
							<li><a href="#">����ϵ��</a></li>
							<li><a href="#">�����ϵ��</a></li>
							<li><a href="#">������ϵ��</a></li>
							<li><a href="#">����ϵ��</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�۸�����</h3>
						<ul>
							<li><a href="#">100Ԫ����</a></li>
							<li><a href="#">100-300Ԫ</a></li>
							<li><a href="#">300-500Ԫ</a></li>
							<li><a href="#">500-1000Ԫ</a></li>
							<li><a href="#">1000Ԫ����</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�����</h3>
						<ul>
							<li><a href="#">����ϵ�д���</a></li>
							<li><a href="#">����5�۴���</a></li>
							<li><a href="#">����һ����</a></li>
							<li><a href="#">�Żݻ</a></li>
							<li><a href="#">���۴���</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�Ƽ���Ʒ</h3>
						<ul>
							<li><a href="#">������˿</a></li>
							<li><a href="#">��������</a></li>
							<li><a href="#">�����ļ���</a></li>
							<li><a href="#">���κ���բз</a></li>
							<li><a href="#">������Ѽ</a></li>
						</ul>
					</div>
				</div></li>
			<!-- End 4 columns Item -->

			<li><a href="#">�ߵ���ϯ</a>
				<div class="dropdown_4columns">
					<div class="col_1">
						<h3>���Ų�ϵ</h3>
						<ul>
							<li><a href="#">����ϵ��</a></li>
							<li><a href="#">����ϵ��</a></li>
							<li><a href="#">�����ϵ��</a></li>
							<li><a href="#">������ϵ��</a></li>
							<li><a href="#">����ϵ��</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�۸�����</h3>
						<ul>
							<li><a href="#">100Ԫ����</a></li>
							<li><a href="#">100-300Ԫ</a></li>
							<li><a href="#">300-500Ԫ</a></li>
							<li><a href="#">500-1000Ԫ</a></li>
							<li><a href="#">1000Ԫ����</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�����</h3>
						<ul>
							<li><a href="#">����ϵ�д���</a></li>
							<li><a href="#">����5�۴���</a></li>
							<li><a href="#">����һ����</a></li>
							<li><a href="#">�Żݻ</a></li>
							<li><a href="#">���۴���</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�Ƽ���Ʒ</h3>
						<ul>
							<li><a href="#">������˿</a></li>
							<li><a href="#">��������</a></li>
							<li><a href="#">�����ļ���</a></li>
							<li><a href="#">���κ���բз</a></li>
							<li><a href="#">������Ѽ</a></li>
						</ul>
					</div>
				</div></li>
			<!-- End 4 columns Item -->

			<li><a href="#">����ϵ��</a>
				<div class="dropdown_4columns">
					<div class="col_1">
						<h3>���Ų�ϵ</h3>
						<ul>
							<li><a href="#">����ϵ��</a></li>
							<li><a href="#">����ϵ��</a></li>
							<li><a href="#">�����ϵ��</a></li>
							<li><a href="#">������ϵ��</a></li>
							<li><a href="#">����ϵ��</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�۸�����</h3>
						<ul>
							<li><a href="#">100Ԫ����</a></li>
							<li><a href="#">100-300Ԫ</a></li>
							<li><a href="#">300-500Ԫ</a></li>
							<li><a href="#">500-1000Ԫ</a></li>
							<li><a href="#">1000Ԫ����</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�����</h3>
						<ul>
							<li><a href="#">����ϵ�д���</a></li>
							<li><a href="#">����5�۴���</a></li>
							<li><a href="#">����һ����</a></li>
							<li><a href="#">�Żݻ</a></li>
							<li><a href="#">���۴���</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�Ƽ���Ʒ</h3>
						<ul>
							<li><a href="#">������˿</a></li>
							<li><a href="#">��������</a></li>
							<li><a href="#">�����ļ���</a></li>
							<li><a href="#">���κ���բз</a></li>
							<li><a href="#">������Ѽ</a></li>
						</ul>
					</div>
				</div></li>
			<!-- End 4 columns Item -->

			<li><a href="#">������ϵ��</a>
				<div class="dropdown_4columns">
					<div class="col_1">
						<h3>���Ų�ϵ</h3>
						<ul>
							<li><a href="#">����ϵ��</a></li>
							<li><a href="#">����ϵ��</a></li>
							<li><a href="#">�����ϵ��</a></li>
							<li><a href="#">������ϵ��</a></li>
							<li><a href="#">����ϵ��</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�۸�����</h3>
						<ul>
							<li><a href="#">100Ԫ����</a></li>
							<li><a href="#">100-300Ԫ</a></li>
							<li><a href="#">300-500Ԫ</a></li>
							<li><a href="#">500-1000Ԫ</a></li>
							<li><a href="#">1000Ԫ����</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�����</h3>
						<ul>
							<li><a href="#">����ϵ�д���</a></li>
							<li><a href="#">����5�۴���</a></li>
							<li><a href="#">����һ����</a></li>
							<li><a href="#">�Żݻ</a></li>
							<li><a href="#">���۴���</a></li>
						</ul>
					</div>
					<div class="col_1">
						<h3>�Ƽ���Ʒ</h3>
						<ul>
							<li><a href="#">������˿</a></li>
							<li><a href="#">��������</a></li>
							<li><a href="#">�����ļ���</a></li>
							<li><a href="#">���κ���բз</a></li>
							<li><a href="#">������Ѽ</a></li>
						</ul>
					</div>
				</div></li>
			<!-- End 4 columns Item -->
			<div class="clear"></div>
		</ul>
	</div>

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
	
	            <div id='pdv_3535' class='pdv_class' title='��������' style='width:700px;height:1079px;top:36px;left:0px; z-index:9' >
	            	<form name="myForm" action="More.action" method="post">
						<table border="0">
							<tr>
								<td><b>��Ʒ���ƣ�</b></td>
								<td>
								    <input name="foodName" type="text" id="foodName" value="${sessionScope.foodName}" style = "width:150px"  
			
									      onmouseover=this.focus();this.select();  
									
									      onclick="if(value==defaultValue){value='';this.style.color='#000'}"   
									
									      onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999" />
								</td>
								<td>&nbsp;</td>
								<td><b>��Ʒ�۸�</b></td>
								<td> 
									<input name="foodPrizeFrom" type="text" id="foodPrizeFrom" style="ime-mode:disabled;width:60px" onkeydown="return check(event)" onkeyup="if(isNaN(this.value)||this.value<0||this.value>999999) this.value='0'"
										value="${sessionScope.foodPrizeFrom}"/> 
								</td>
								<td><b> &nbsp;~ &nbsp;</b></td>
								<td><input name="foodPrizeTo" type="text" id="foodPrizeTo" style="ime-mode:disabled;width:60px" onkeydown="return check(event)" onkeyup="if(isNaN(this.value)||this.value<0||this.value>999999) this.value='0'"
									value="${sessionScope.foodPrizeTo}"/></td>
								<td>&nbsp;</td>
								<td><input name="preferential" type="checkbox" id="preferential" value="1" style=" vertical-align:middle" >
								<b>�����Ż�</b></td> 
								<td><input id="choose" type="button" onclick="openDetail();" style="width:60px;border:0;background-image:url(images/more_1.jpg)" onMouseOver="changePictureMouseOver();" onMouseOut="changePictureMouseOut();"></td>
								<td>
									<input type="button" value="��ѯ"onclick="crud('select')"/>
									<s:hidden name="actionType" ></s:hidden>
								</td>	
							</tr>
							<tr id="foodSearchDetail" style="display: none">
								<td><b>��Ʒ��ϵ��</b></td>
								<td>
									<select style="width: 100px;" id="foodKind" name="foodKind">
										<option value="1" <s:if test="foodKind==1">selected="selected"</s:if>>³��</option>
										<option value="2" <s:if test="foodKind==2">selected="selected"</s:if>>����</option>
										<option value="3" <s:if test="foodKind==3">selected="selected"</s:if>>����</option>
										<option value="4" <s:if test="foodKind==4">selected="selected"</s:if>>�ղ�</option>
										<option value="5" <s:if test="foodKind==5">selected="selected"</s:if>>����</option>
										<option value="6" <s:if test="foodKind==6">selected="selected"</s:if>>���</option>
										<option value="7" <s:if test="foodKind==7">selected="selected"</s:if>>���</option>
										<option value="8" <s:if test="foodKind==8">selected="selected"</s:if>>�ղ�</option>
										<option value="9" <s:if test="foodKind==9">selected="selected"</s:if>>����</option>
										<option value="0" <s:if test="foodKind==0">selected="selected"</s:if>>�����</option>
									</select>
								</td>
								<td>&nbsp;</td>
								<td><b>��Ʒ���ȣ�</b></td>
								<td colspan="2">
									<select style="width: 100px;" id="foodPungencyDegree" name="foodPungencyDegree">
										<option value="0" <s:if test="foodPungencyDegree==0">selected="selected"</s:if>>����</option>
										<option value="1" <s:if test="foodPungencyDegree==1">selected="selected"</s:if>>΢��</option>
										<option value="2" <s:if test="foodPungencyDegree==2">selected="selected"</s:if>>��</option>
										<option value="3" <s:if test="foodPungencyDegree==3">selected="selected"</s:if>>����</option>
										<option value="4" <s:if test="foodPungencyDegree==4">selected="selected"</s:if>>��̬��</option>
									</select>
								</td>									
							</tr>
						</table>
						<table>
							<tr>
								<s:iterator value="showMoreFoodlist" id="showMorefoodDetail" status="L">
									<td>
										<table border="0">
											<tr>
												<td colspan="2"><a
													href="Show.action?Id=<s:property value="foodId"/>" target=3>
														<img
														src="<%=request.getContextPath()%>/images/<s:property value="foodPhotoUrlpath"/>"
														width="200" height="180">
												</a></td>
											</tr>
											<tr>
												<td><b><s:property value="foodName" /></b></td>
											</tr>
											<tr>
												<td><b><font color="red" style="font-size: 12px">��վ��Ա��:
													</font></b></td>
												<td><b><font color="red" style="font-size: 16px">��<s:property
																value="foodMemberPrice" /></b></font></td>
											</tr>
											<tr>
												<td><s>����۸�: </s></td>
												<td><s>��<s:property value="foodUnitPrice" /></td>
												</s>
											</tr>
											<tr>
												<td>��Ʒ����:</td>
												<td><s:property value="foodSalesCopies" /></td>
											</tr>
										</table>
									</td>
								<s:if test="%{(#L.index+1)%4 == 0}">
									</tr>
									<tr>
								</s:if>
							</s:iterator>
							</tr>
						</table>
					</form>
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