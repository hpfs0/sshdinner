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
    <title>订单处理-网上快餐店</title>
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
		// 点击更多按钮打开检索栏
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
		// 鼠标移入时，显示图标为选中状态
		function changePictureMouseOver(){
			var divStyle =document.getElementById("foodSearchDetail").style.display;
			if(divStyle=="none"){
				document.getElementById('choose').style.backgroundImage="url(images/more_2.jpg)";
			} else {
				document.getElementById('choose').style.backgroundImage="url(images/backup_2.jpg)";
			}
		}
		// 鼠标移出时，恢复图标为未选中状态
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
	
	<script>
		function linkSelect(){
			// 获取页面上方检索部的菜品名称
			var foodName = document.getElementById("foodName").value;
			// 获取页面上方检索部的菜品价格（起）
			var foodPrizeFrom = document.getElementById("foodPrizeFrom").value;
			// 获取页面上方检索部的菜品价格（终）
			var foodPrizeTo = document.getElementById("foodPrizeTo").value;
			// 获取页面上方检索部的优惠状况
			var preferential = document.getElementById("preferential").value;
			// 获取页面上方检索部的菜品辣度
			var foodPungencyDegree = document.getElementById("foodPungencyDegree").value;
			// 设置检索条件中的菜系为[川菜]
			var foodKind = '2';
			// 设置模式为检索
			var actionType = 'linkSelect';
			// 把检索部的值作为参数传到后台
			document.barForm.actionType.value = actionType;
			document.barForm.foodNameBar.value = foodName;
			document.barForm.foodPrizeFromBar.value = foodPrizeFrom;
			document.barForm.foodPrizeToBar.value = foodPrizeTo;
			document.barForm.preferentialBar.value = preferential;
			document.barForm.foodKindBar.value = foodKind;
			document.barForm.foodPungencyDegreeBar.value = foodPungencyDegree;
			document.barForm.submit();
			
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

	<div class="main" style="width:1200px;margin:0 auto;"> 
		<form name="barForm" action="More.action" method="post" target="_self">
			<div class="sidebar">
				<h2>菜品一览</h2>
				<ul id="foodmenu">		
					<li><a href="#">炒菜</a>
						<div class="dropdown_4columns">
							<div class="col_1">
								<h3>热门菜系</h3>
								<ul>
									<li><a id="chuancai" href="javascript:void(0)" onclick="linkSelect()">川菜系列</a></li>
									<s:hidden name="actionType" ></s:hidden>
									<s:hidden name="foodNameBar" value="222"></s:hidden>
									<s:hidden name="foodPrizeFromBar" ></s:hidden>
									<s:hidden name="foodPrizeToBar" ></s:hidden>
									<s:hidden name="preferentialBar" ></s:hidden>
									<s:hidden name="foodPungencyDegreeBar" ></s:hidden>
									<s:hidden name="foodKindBar" ></s:hidden>
									<li><a href="#">粤菜系列</a></li>
									<li><a href="#">淮扬菜系列</a></li>
									<li><a href="#">东北菜系列</a></li>
									<li><a href="#">西餐系列</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>价格区间</h3>
								<ul>
									<li><a href="#">100元以下</a></li>
									<li><a href="#">100-300元</a></li>
									<li><a href="#">300-500元</a></li>
									<li><a href="#">500-1000元</a></li>
									<li><a href="#">1000元以上</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>促销活动</h3>
								<ul>
									<li><a href="#">川菜系列促销</a></li>
									<li><a href="#">春节5折促销</a></li>
									<li><a href="#">促销一折起</a></li>
									<li><a href="#">优惠活动</a></li>
									<li><a href="#">降价促销</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>推荐菜品</h3>
								<ul>
									<li><a href="#">鱼香肉丝</a></li>
									<li><a href="#">油焖茄子</a></li>
									<li><a href="#">干煸四季豆</a></li>
									<li><a href="#">阳澄湖大闸蟹</a></li>
									<li><a href="#">北京烤鸭</a></li>
								</ul>
							</div>
						</div></li>
					<!-- End 4 columns Item -->
		
					<li><a href="#">精品套餐</a>
						<div class="dropdown_4columns">
							<div class="col_1">
								<h3>热门菜系</h3>
								<ul>
									<li><a href="#">川菜系列</a></li>
									<li><a href="#">粤菜系列</a></li>
									<li><a href="#">淮扬菜系列</a></li>
									<li><a href="#">东北菜系列</a></li>
									<li><a href="#">西餐系列</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>价格区间</h3>
								<ul>
									<li><a href="#">100元以下</a></li>
									<li><a href="#">100-300元</a></li>
									<li><a href="#">300-500元</a></li>
									<li><a href="#">500-1000元</a></li>
									<li><a href="#">1000元以上</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>促销活动</h3>
								<ul>
									<li><a href="#">川菜系列促销</a></li>
									<li><a href="#">春节5折促销</a></li>
									<li><a href="#">促销一折起</a></li>
									<li><a href="#">优惠活动</a></li>
									<li><a href="#">降价促销</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>推荐菜品</h3>
								<ul>
									<li><a href="#">鱼香肉丝</a></li>
									<li><a href="#">油焖茄子</a></li>
									<li><a href="#">干煸四季豆</a></li>
									<li><a href="#">阳澄湖大闸蟹</a></li>
									<li><a href="#">北京烤鸭</a></li>
								</ul>
							</div>
						</div></li>
					<!-- End 4 columns Item -->
		
					<li><a href="#">极品儿童餐</a>
						<div class="dropdown_4columns">
							<div class="col_1">
								<h3>热门菜系</h3>
								<ul>
									<li><a href="#">川菜系列</a></li>
									<li><a href="#">粤菜系列</a></li>
									<li><a href="#">淮扬菜系列</a></li>
									<li><a href="#">东北菜系列</a></li>
									<li><a href="#">西餐系列</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>价格区间</h3>
								<ul>
									<li><a href="#">100元以下</a></li>
									<li><a href="#">100-300元</a></li>
									<li><a href="#">300-500元</a></li>
									<li><a href="#">500-1000元</a></li>
									<li><a href="#">1000元以上</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>促销活动</h3>
								<ul>
									<li><a href="#">川菜系列促销</a></li>
									<li><a href="#">春节5折促销</a></li>
									<li><a href="#">促销一折起</a></li>
									<li><a href="#">优惠活动</a></li>
									<li><a href="#">降价促销</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>推荐菜品</h3>
								<ul>
									<li><a href="#">鱼香肉丝</a></li>
									<li><a href="#">油焖茄子</a></li>
									<li><a href="#">干煸四季豆</a></li>
									<li><a href="#">阳澄湖大闸蟹</a></li>
									<li><a href="#">北京烤鸭</a></li>
								</ul>
							</div>
						</div></li>
					<!-- End 4 columns Item -->
		
					<li><a href="#">营养餐</a>
						<div class="dropdown_4columns">
							<div class="col_1">
								<h3>热门菜系</h3>
								<ul>
									<li><a href="#">川菜系列</a></li>
									<li><a href="#">粤菜系列</a></li>
									<li><a href="#">淮扬菜系列</a></li>
									<li><a href="#">东北菜系列</a></li>
									<li><a href="#">西餐系列</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>价格区间</h3>
								<ul>
									<li><a href="#">100元以下</a></li>
									<li><a href="#">100-300元</a></li>
									<li><a href="#">300-500元</a></li>
									<li><a href="#">500-1000元</a></li>
									<li><a href="#">1000元以上</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>促销活动</h3>
								<ul>
									<li><a href="#">川菜系列促销</a></li>
									<li><a href="#">春节5折促销</a></li>
									<li><a href="#">促销一折起</a></li>
									<li><a href="#">优惠活动</a></li>
									<li><a href="#">降价促销</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>推荐菜品</h3>
								<ul>
									<li><a href="#">鱼香肉丝</a></li>
									<li><a href="#">油焖茄子</a></li>
									<li><a href="#">干煸四季豆</a></li>
									<li><a href="#">阳澄湖大闸蟹</a></li>
									<li><a href="#">北京烤鸭</a></li>
								</ul>
							</div>
						</div></li>
					<!-- End 4 columns Item -->
		
					<li><a href="#">高档宴席</a>
						<div class="dropdown_4columns">
							<div class="col_1">
								<h3>热门菜系</h3>
								<ul>
									<li><a href="#">川菜系列</a></li>
									<li><a href="#">粤菜系列</a></li>
									<li><a href="#">淮扬菜系列</a></li>
									<li><a href="#">东北菜系列</a></li>
									<li><a href="#">西餐系列</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>价格区间</h3>
								<ul>
									<li><a href="#">100元以下</a></li>
									<li><a href="#">100-300元</a></li>
									<li><a href="#">300-500元</a></li>
									<li><a href="#">500-1000元</a></li>
									<li><a href="#">1000元以上</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>促销活动</h3>
								<ul>
									<li><a href="#">川菜系列促销</a></li>
									<li><a href="#">春节5折促销</a></li>
									<li><a href="#">促销一折起</a></li>
									<li><a href="#">优惠活动</a></li>
									<li><a href="#">降价促销</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>推荐菜品</h3>
								<ul>
									<li><a href="#">鱼香肉丝</a></li>
									<li><a href="#">油焖茄子</a></li>
									<li><a href="#">干煸四季豆</a></li>
									<li><a href="#">阳澄湖大闸蟹</a></li>
									<li><a href="#">北京烤鸭</a></li>
								</ul>
							</div>
						</div></li>
					<!-- End 4 columns Item -->
		
					<li><a href="#">西餐系列</a>
						<div class="dropdown_4columns">
							<div class="col_1">
								<h3>热门菜系</h3>
								<ul>
									<li><a href="#">川菜系列</a></li>
									<li><a href="#">粤菜系列</a></li>
									<li><a href="#">淮扬菜系列</a></li>
									<li><a href="#">东北菜系列</a></li>
									<li><a href="#">西餐系列</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>价格区间</h3>
								<ul>
									<li><a href="#">100元以下</a></li>
									<li><a href="#">100-300元</a></li>
									<li><a href="#">300-500元</a></li>
									<li><a href="#">500-1000元</a></li>
									<li><a href="#">1000元以上</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>促销活动</h3>
								<ul>
									<li><a href="#">川菜系列促销</a></li>
									<li><a href="#">春节5折促销</a></li>
									<li><a href="#">促销一折起</a></li>
									<li><a href="#">优惠活动</a></li>
									<li><a href="#">降价促销</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>推荐菜品</h3>
								<ul>
									<li><a href="#">鱼香肉丝</a></li>
									<li><a href="#">油焖茄子</a></li>
									<li><a href="#">干煸四季豆</a></li>
									<li><a href="#">阳澄湖大闸蟹</a></li>
									<li><a href="#">北京烤鸭</a></li>
								</ul>
							</div>
						</div></li>
					<!-- End 4 columns Item -->		
					<li><a href="#">东北菜系列</a>
						<div class="dropdown_4columns">
							<div class="col_1">
								<h3>热门菜系</h3>
								<ul>
									<li><a href="#">川菜系列</a></li>
									<li><a href="#">粤菜系列</a></li>
									<li><a href="#">淮扬菜系列</a></li>
									<li><a href="#">东北菜系列</a></li>
									<li><a href="#">西餐系列</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>价格区间</h3>
								<ul>
									<li><a href="#">100元以下</a></li>
									<li><a href="#">100-300元</a></li>
									<li><a href="#">300-500元</a></li>
									<li><a href="#">500-1000元</a></li>
									<li><a href="#">1000元以上</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>促销活动</h3>
								<ul>
									<li><a href="#">川菜系列促销</a></li>
									<li><a href="#">春节5折促销</a></li>
									<li><a href="#">促销一折起</a></li>
									<li><a href="#">优惠活动</a></li>
									<li><a href="#">降价促销</a></li>
								</ul>
							</div>
							<div class="col_1">
								<h3>推荐菜品</h3>
								<ul>
									<li><a href="#">鱼香肉丝</a></li>
									<li><a href="#">油焖茄子</a></li>
									<li><a href="#">干煸四季豆</a></li>
									<li><a href="#">阳澄湖大闸蟹</a></li>
									<li><a href="#">北京烤鸭</a></li>
								</ul>
							</div>
						</div></li>
					<!-- End 4 columns Item -->
					<div class="clear"></div>
				</ul>
			</div>
		</form>
	
		<div id='contain' style='width:900px;background:rgb(255,255,255);float:left;position:relative;margin-left:10px;padding:0;'>
		        <div id='content' style='width:900px;height:1117px;background:none transparent scroll repeat 0% 0%;margin:10px auto'>
		            <!-- 当前位置提示条 -->
		            <div id='pdv_3534' class='pdv_class' title='当前位置' style='width:650px;height:30px;top:0px;left:0px; z-index:8'>
		                <div id='spdv_3534' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
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
		                                您现在的位置：<a href="../">网上快餐店</a> &gt; <a href="../dingcan/">网上订餐</a> &gt; 菜品详细
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <!-- 订单处理 -->
		
		            <div id='pdv_3535' class='pdv_class' title='订单处理' style='width:700px;height:1079px;top:36px;left:0px; z-index:9' >
		            	<form name="myForm" action="More.action" method="post">
							<table border="0">
								<tr>
									<td><b>菜品名称：</b></td>
									<td>
									    <input name="foodName" type="text" id="foodName" value="${sessionScope.foodName}" style = "width:150px"  
				
										      onmouseover=this.focus();this.select();  
										
										      onclick="if(value==defaultValue){value='';this.style.color='#000'}"   
										
										      onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999" />
									</td>
									<td>&nbsp;</td>
									<td><b>菜品价格：</b></td>
									<td> 
										<input name="foodPrizeFrom" type="text" id="foodPrizeFrom" style="ime-mode:disabled;width:60px" onkeydown="return check(event)" onkeyup="if(isNaN(this.value)||this.value<0||this.value>999999) this.value='0'"
											value="${sessionScope.foodPrizeFrom}"/> 
									</td>
									<td><b> &nbsp;~ &nbsp;</b></td>
									<td><input name="foodPrizeTo" type="text" id="foodPrizeTo" style="ime-mode:disabled;width:60px" onkeydown="return check(event)" onkeyup="if(isNaN(this.value)||this.value<0||this.value>999999) this.value='0'"
										value="${sessionScope.foodPrizeTo}"/></td>
									<td>&nbsp;</td>
									<td><input name="preferential" type="checkbox" id="preferential" value="1" style=" vertical-align:middle" >
									<b>今日优惠</b></td> 
									<td><input id="choose" type="button" onclick="openDetail();" style="width:60px;border:0;background-image:url(images/more_1.jpg)" onMouseOver="changePictureMouseOver();" onMouseOut="changePictureMouseOut();"></td>
									<td>
										<input type="button" value="查询"onclick="crud('select')"/>
										<s:hidden name="actionType" ></s:hidden>
									</td>	
								</tr>
								<tr id="foodSearchDetail" style="display: none">
									<td><b>菜品菜系：</b></td>
									<td>
										<select style="width: 100px;" id="foodKind" name="foodKind">
											<option value="0" <s:if test="foodKind==0">selected="selected"</s:if>>不限</option>
											<option value="1" <s:if test="foodKind==1">selected="selected"</s:if>>鲁菜</option>
											<option value="2" <s:if test="foodKind==2">selected="selected"</s:if>>川菜</option>
											<option value="3" <s:if test="foodKind==3">selected="selected"</s:if>>粤菜</option>
											<option value="4" <s:if test="foodKind==4">selected="selected"</s:if>>苏菜</option>
											<option value="5" <s:if test="foodKind==5">selected="selected"</s:if>>闽菜</option>
											<option value="6" <s:if test="foodKind==6">selected="selected"</s:if>>浙菜</option>
											<option value="7" <s:if test="foodKind==7">selected="selected"</s:if>>湘菜</option>
											<option value="8" <s:if test="foodKind==8">selected="selected"</s:if>>徽菜</option>
											<option value="9" <s:if test="foodKind==9">selected="selected"</s:if>>其他</option>
											<option value="10"<s:if test="foodKind==10">selected="selected"</s:if>>西洋菜</option>
										</select>
									</td>
									<td>&nbsp;</td>
									<td><b>菜品辣度：</b></td>
									<td colspan="2">
										<select style="width: 100px;" id="foodPungencyDegree" name="foodPungencyDegree">
											<option value="0" <s:if test="foodPungencyDegree==0">selected="selected"</s:if>>不限</option>
											<option value="1" <s:if test="foodPungencyDegree==1">selected="selected"</s:if>>不辣</option>
											<option value="2" <s:if test="foodPungencyDegree==2">selected="selected"</s:if>>微辣</option>
											<option value="3" <s:if test="foodPungencyDegree==3">selected="selected"</s:if>>辣</option>
											<option value="4" <s:if test="foodPungencyDegree==4">selected="selected"</s:if>>很辣</option>
											<option value="5" <s:if test="foodPungencyDegree==5">selected="selected"</s:if>>变态辣</option>
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
													<td><b><font color="red" style="font-size: 12px">本站会员价:
														</font></b></td>
													<td><b><font color="red" style="font-size: 16px">￥<s:property
																	value="foodMemberPrice" /></b></font></td>
												</tr>
												<tr>
													<td><s>店面价格: </s></td>
													<td><s>￥<s:property value="foodUnitPrice" /></td>
													</s>
												</tr>
												<tr>
													<td>菜品人气:</td>
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
	
	            <!-- 底部菜单（一级） -->
	
	            <div id='pdv_3533' class='pdv_class' style='width:900px;height:35px;top:0px;left:0px; z-index:2'>
	                <div id='spdv_3533' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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
	                                <a href="advise.jsp" target="_self">投诉建议</a>|
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	
	            <!-- 文字友情链接 -->
	
	            <div id='pdv_3531' class='pdv_class' title='' style='width:900px;height:30px;top:35px;left:0px; z-index:5'>
	                <div id='spdv_3531' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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
	
	            <div id='pdv_3528' class='pdv_class' title='脚注信息' style='width:898px;height:106px;top:65px;left:0px; z-index:6'>
	                <div id='spdv_3528' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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
	            <div id='pdv_3532' class='pdv_class' title='' style='width:123px;height:40px;top:105px;left:656px; z-index:7'>
	                <div id='spdv_3532' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
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