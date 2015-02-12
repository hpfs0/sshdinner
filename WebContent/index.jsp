<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ include file='header.jsp'%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网上快餐店</title>
<link href="css/dingcanall.css" rel="stylesheet" type="text/css">
<link href="css/dingcanweekmenu.css" rel="stylesheet" type="text/css">
<link href="css/newslist_time2.css" rel="stylesheet" type="text/css" />
<link href="css/dingcanche.css" rel="stylesheet" type="text/css">
<link href="css/dingcantimeinfo.css" rel="stylesheet" type="text/css">
<link href="css/accordion.css" rel="stylesheet" type="text/css">
<link href="css/lof-slider.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script type="text/javascript" src="js/dingcanall.js"></script>
<script type="text/javascript" src="js/lof-slider.js"></script>
<!-- the mousewheel plugin -->
<!--<link rel="stylesheet" type="text/css" href="css/jscrollpane2.css" />
    <script type="text/javascript" src="js/jquery.mousewheel.js"></script>-->
<!-- the jScrollPane script -->
<!--<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
    <script type="text/javascript" src="js/scroll-startstop.events.jquery.js"></script>
    <script type="text/javascript" src="js/srollbar.js"></script>-->
<!--<script type="text/javascript" src="js/srollresize.js"></script>-->
<script type="text/javascript" src="js/expansion.js"></script>
<script type="text/javascript">
$(document).ready(function($){

	var buttons = {
		previous:$('#home-slider .button-previous'),
		next:$('#home-slider .button-next')
	};	

	$('#home-slider').lofJSidernews( {
		interval 		: 2000,
		direction		: 'opacitys',	
		easing			: 'easeInOutExpo',
		duration		: 1200,
		auto		 	: true,
		maxItemDisplay  : 5,
		navPosition     : 'horizontal', // horizontal
		navigatorHeight : 0,
		navigatorWidth  : 110,
		mainWidth		: 650,
		buttons: buttons
	});
	
	$(".sliders-wrapper li,.navigator-content").hover(function(){
		$(this).addClass("hover");
	},function(){
		$(this).removeClass("hover");
	});
	
});
</script>
</head>

<body style='background: transparent'>

	<script>
        var PDV_PAGEID = '1';
        var PDV_RP = '';
        var PDV_COLTYPE = 'index';
        var PDV_PAGENAME = 'index';
    </script>
	<div id="jp-container" class="jp-container">
		<div id='contain'
			style='width: 900px; background: rgb(255, 255, 255); margin: 0px auto; padding: 0px'>
			<div id='content'
				style='width: 900px; height: 616px; background: none transparent scroll repeat 0% 0%; margin: 10px auto'>
				<!-- 订餐时间信息 -->
				<div id='pdv_3604' class='pdv_class' title='订餐时间'
					style='width: 243px; height: 195px; top: 0px; left: 655px; z-index: 1'>
					<div id='spdv_3604' class='pdv_content'
						style='overflow: hidden; width: 100%; height: 100%'>
						<div class="pdv_border"
							style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">
							<div
								style="height: 25px; margin: 1px; display: none; background:;">
								<div
									style="float: left; margin-left: 12px; line-height: 25px; font-weight: bold; color:">
									订餐时间</div>
								<div style="float: right; margin-right: 10px; display: none">
									<a href="-1" style="line-height: 25px; color:">更多</a>
								</div>
							</div>
							<div style="padding: 0px;">

								<div id="dingcantime">
									<div id="dingcantime2">

										<div id="dingcantime_top">
											<div id="dingcantime_top_left">订餐时间</div>
											<div id="dingcantime_top_right">&nbsp;</div>
										</div>

										<div style="padding: px;">

											<div class="dingcantimeinfo">
												<div
													style="height: 24px; font-size: 14px; font-weight: bold;">
													<font style="color: #ef6906;">午餐：</font><font
														style="color: #404040;">9:00&nbsp;-&nbsp;13:00</font>
												</div>
												<div
													style="height: 24px; font-size: 14px; font-weight: bold;">
													<font style="color: #ef6906;">晚餐：</font><font
														style="color: #404040;">16:00&nbsp;-&nbsp;19:00</font>
												</div>
												<div style="height: 20px; font-size: 12px; color: #e52614;">注：周六日或其他时间用餐，请提前来电</div>
												<div
													style="height: 24px; font-size: 14px; font-weight: bold; color: #f16906;">电话订餐：4008008818</div>
												<div style="text-align: center;" title='联系我'>
													<a title="点击这里给我发消息"
														href="http://wpa.qq.com/msgrd?v=3&amp;uin=84312430&amp;site=qq&amp;menu=yes"
														target="_blank"><img
														src="http://wpa.qq.com/pa?p=1:84312430:47"></a> <a
														title="点击这里给我发消息"
														href="http://wpa.qq.com/msgrd?v=3&amp;uin=389314570&amp;site=qq&amp;menu=yes"
														target="_blank"><img
														src="http://wpa.qq.com/pa?p=1:389314570:47"></a>
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

				<!-- 订餐车 -->
				<div id='pdv_3614' class='pdv_class' title='我的餐车'
					style='width: 243px; height: 123px; top: 180px; left: 655px; z-index: 2'>
					<div id='spdv_3614' class='pdv_content'
						style='overflow: visible; width: 100%;'>
						<div class="pdv_border"
							style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">
							<div
								style="height: 25px; margin: 1px; display: none; background:;">
								<div
									style="float: left; margin-left: 12px; line-height: 25px; font-weight: bold; color:">
									我的餐车</div>
								<div style="float: right; margin-right: 10px; display: none">
									<a href="-1" style="line-height: 25px; color:">更多</a>
								</div>
							</div>
							<div style="padding: 0px">


								<script language="javascript" src="js/dingcanall.js"></script>
								<script language="javascript" src="js/dingcansubmit.js"></script>

								<div id="dingcanche">
									<div id="dingcanche2">

										<div id="dingcanche_top">
											<div id="dingcanche_top_left">我的餐车</div>
											<div id="dingcanche_top_right">&nbsp;</div>
										</div>

										<div style="padding: px; margin-bottom: 10px;">

											<table style="width:100%;" cellspacing="0" >
												<thead style="height: 13px; background: #f6f6f6; margin: 0px 3px 1px 3px;">
													<tr>
														<th>
															<div style="float: left; padding-left: 20px;">名称</div>
														</th>
														<th>
															<div style="float: right; padding-right: 20px;">单价</div>
														</th>
														<th>
															<div style="float: right; padding-right: 42px;">份数</div>
														</th>
														<th>
															<div style="float: right; padding-right: 3px;">取消</div>
														</th>
													</tr>
												</thead>
												<tbody id="dcinfo" style="margin: 0px 3px 1px 3px;"></tbody>
											</table>

											<div style="height: 24px; margin: 5px 3px 1px 3px;">
												<div
													style="float: left; line-height: 24px; padding-left: 25px;">小&nbsp;&nbsp;计：</div>
												<div
													style="float: right; line-height: 24px; padding-right: 15px;">
													<font id="allnums" style="color: #ff0000;">0</font>份
												</div>
												<div
													style="float: right; line-height: 24px; padding-right: 30px;">
													<font id="cpprice" style="color: #ff0000;">0</font>元
												</div>
											</div>

											<div style="height: 26px; margin: 5px 3px 1px 3px;">
												<div id="cartsubmit" style="float: left; margin-left: 90px; cursor: pointer;">
													<img  src="images/canche_submit.gif" border="0"
														/>
												</div>
												<div
													style="float: left; padding-left: 10px; cursor: pointer;"
													onClick="delAll();">
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

				<!-- 文章列表 -->
				<div id='pdv_3603' class='pdv_class' title='网站公告'
					style='width: 243px; height: 186px; top: 310px; left: 655px; z-index: 3'>
					<div id='spdv_3603' class='pdv_content'
						style='overflow: hidden; width: 100%; height: 100%'>
						<div class="pdv_border"
							style="border: 0px; height: 100%; padding: 0; margin: 0; background: url(images/left.jpg) repeat-y">
							<div
								style="height: 100%; background: url(images/right.jpg) right repeat-y">
								<div
									style="height: 43px; background: url(images/bg.jpg) 0px 0px no-repeat">
									<div
										style="float: left; font: bold 16px/43px 'Microsoft YaHei', 'SimSun', Arial, Sans-Serif; text-align: left; padding-left: 50px; color: #feab43;">
										网站公告</div>
									<div
										style="float: right; width: 60px; height: 43px; text-align: right; background: url(images/bg.jpg) -840px 0px no-repeat">
										<a href="notice"
											style="font: 12px/43px simsun; color: #505050; margin-right: 12px; display: inline">更多&gt;&gt;</a>
									</div>
								</div>
								<div style="margin: 0px 3px; padding: 10px;">


									<ul id="noticeList" class="newslist_time2">

										<!-- <li class="newslist_time2">
											<div class="time">09/27</div>
											<a href="news/html/?297.jsp" target="_self"
											class="newslist_time2">金秋来临，菜品赠品大升级</a>
										</li>

										<li class="newslist_time2">
											<div class="time">09/27</div>
											<a href="news/html/?296.jsp" target="_self"
											class="newslist_time2">积分换电影票，奖品大变样</a>
										</li>

										<li class="newslist_time2">
											<div class="time">09/27</div>
											<a href="news/html/?295.jsp" target="_self"
											class="newslist_time2">精品盖浇饭上市喽</a>
										</li>

										<li class="newslist_time2">
											<div class="time">09/27</div>
											<a href="news/html/?294.jsp" target="_self"
											class="newslist_time2">10月团体订餐优惠活动开始</a>
										</li>

										<li class="newslist_time2">
											<div class="time">09/27</div>
											<a href="news/html/?293.jsp" target="_self"
											class="newslist_time2">大鹏加入test</a>
										</li>
										 -->

									</ul>

								</div>
							</div>
						</div>
						<div
							style="margin-top: -10px; height: 10px; line-height: 10px; background: url(images/bg.jpg) 0px -220px no-repeat">&nbsp;</div>
						<div
							style="float: right; margin-top: -10px; width: 10px; height: 10px; line-height: 10px; background: url(images/bg.jpg) -890px -220px no-repeat">&nbsp;</div>

					</div>
				</div>

				<!-- 本周菜单 -->
				<div id='pdv_3613' class='pdv_class' title='本周菜单'
					style='width: 243px; height: 100px; top: 505px; left: 655px; z-index: 5'>
					<div id='spdv_3613' class='pdv_content'
						style='overflow: hidden; width: 100%; height: 100%'>
						<div class="pdv_border"
							style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">
							<div
								style="height: 25px; margin: 1px; display: none; background:;">
								<div
									style="float: left; margin-left: 12px; line-height: 25px; font-weight: bold; color:">
									本周菜单</div>
								<div style="float: right; margin-right: 10px; display: none">
									<a href="-1" style="line-height: 25px; color:">更多</a>
								</div>
							</div>
							<div style="padding: 0px">

								<div id="dingcanweekmenu">
									<div id="dingcanweekmenu2">

										<div id="dingcanweekmenu_top">
											<div id="dingcanweekmenu_top_left">本周菜单</div>
											<div id="dingcanweekmenu_top_right">&nbsp;</div>
										</div>

										<div style="padding: px;">

											<div class="dingcanweekmenuinfo">

												<table width="100%" border="0" cellspacing="0"
													cellpadding="3" height="30" style="background: #fef0d3;">
													<tr>
														<td>一</td>
														<td>二</td>
														<td>三</td>
														<td>四</td>
														<td>五</td>
														<td>六</td>
														<td>日</td>
													</tr>

													<tr>
														<td class='riqi'><a
															href='dingcan/caipu.php?m=07&d=04' class='puriqiclass'></a>
														</td>
														<td class='riqi'><a
															href='dingcan/caipu.php?m=07&d=05' class='puriqiclass'></a>
														</td>
														<td class='riqi'><a
															href='dingcan/caipu.php?m=07&d=06' class='puriqiclass'></a>
														</td>
														<td class='riqi'><a
															href='dingcan/caipu.php?m=07&d=07' class='puriqiclass'></a>
														</td>
														<td class='riqi'><a
															href='dingcan/caipu.php?m=07&d=08' class='puriqiclass'></a>
														</td>
														<td class='riqi'><a
															href='dingcan/caipu.php?m=07&d=09' class='puriqiclass'></a>
														</td>
														<td class='riqi'><a
															href='dingcan/caipu.php?m=07&d=10' class='puriqiclass'></a>
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

				<!-- 餐品展示与订购 -->
				<div id='pdv_3606' class='pdv_class' title=''
					style='width: 648px; height: 1409px; top: 0px; left: 0px; z-index: 12'>
					<div id='spdv_3606' class='pdv_content'
						style='overflow: visible; width: 100%;'>
						<div class="pdv_border"
							style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">
							<div
								style="height: 25px; margin: 1px; display: none; background:;">
								<div
									style="float: left; margin-left: 12px; line-height: 25px; font-weight: bold;">
								</div>
							</div>
							<div style="padding: 0px; height: 0px">

								<div id="dingcanall">
									<div id="dingcanall2">

										<div id="dingcanall_top">
											<div id="dingcanall_top_left"></div>
											<div id="dingcanall_top_mid">
												<div>
													<div id="tt_01" class="dingcanall_menu"
														style="display: block;">自选订餐</div>
													<div id="tt_02" class="dingcanall_menu"
														style="display: block;" onclick="javascript:location = 'more'">更　多</div>
												</div>
											</div>
											<div id="dingcanall_top_right">&nbsp;</div>
										</div>
										
										<div id="mm_01" class="dingcanall_connow" style="height: 365px;">
												<div id="home-slider" class="lof-slidecontent">
													<div class="preload">
														<div></div>
													</div>
													<ul class="sliders-wrap-inner">
														<li><img src="images/food1.jpg" width="100%" height="320px"
															alt="alt" />
															<div class="slider-description">
															    <input type="hidden" value="F000000001" />
																<h2><font color="#000079">香芹炒腊肉</font></h2>
																<h2><font color="red">会员价:¥38</font></h2>
																<!-- 单价 -->
																<input type="hidden" value="38" />
																<div align="right" style="display:inline">
																	<img class="clickimg" src="images/cart.png" />
																</div>
															</div></li>
														<li><img src="images/food2.jpg" width="100%" height="320px"
															alt="alt" />
															<div class="slider-description">
															    <input type="hidden" value="F000000002" />
																<h2><font color="#000079">干锅牛蛙</font></h2>
																<!-- 单价 -->
																<input type="hidden" value="88" />
																<div align="right" style="display:inline">
																	<img class="clickimg" src="images/cart.png" />
																</div>
															</div></li>
														<li><img src="images/food3.jpg" width="100%" height="320px"
															alt="alt" />
															<div class="slider-description">
															    <input type="hidden" value="F000000003" />
																<h2><font color="#000079">椒盐大虾</font></h2>
																<!-- 单价 -->
																<input type="hidden" value="32" />
																<div align="right" style="display:inline">
																	<img class="clickimg" src="images/cart.png" />
																</div>
															</div></li>
														<li><img src="images/food4.jpg" width="100%" height="320px"
															alt="alt" />
															<div class="slider-description">
															    <input type="hidden" value="F000000004" />
																<h2><font color="#000079">海蚌炖蛋</font></h2>
																<!-- 单价 -->
																<input type="hidden" value="45" />
																<div align="right" style="display:inline">
																	<img class="clickimg" src="images/cart.png" />
																</div>
															</div></li>
														<li><img src="images/food5.jpg" width="100%" height="320px"
															alt="alt" />
															<div class="slider-description">
															    <input type="hidden" value="F000000005" />
																<h2><font color="#000079">青椒肚片</font></h2>
																<!-- 单价 -->
																<input type="hidden" value="20" />
																<div align="right" style="display:inline">
																	<img class="clickimg" src="images/cart.png" />
																</div>
															</div></li>
														<li><img src="images/food6.jpg" width="100%" height="320px"
															alt="alt" />
															<div class="slider-description">
															    <input type="hidden" value="F000000006" />
																<h2><font color="#000079">油膜排骨</font></h2>
																<!-- 单价 -->
																<input type="hidden" value="35" />
																<div align="right" style="display:inline">
																	<img class="clickimg" src="images/cart.png" />
																</div>
															</div></li>
														<li><img src="images/food7.jpg" width="100%" height="320px"
															alt="alt" />
															<div class="slider-description">
															    <input type="hidden" value="F000000007" />
																<h2><font color="blue">水煮鱼</font></h2>
																<!-- 单价 -->
																<input type="hidden" value="29" />
																<div align="right" style="display:inline">
																	<img class="clickimg" src="images/cart.png" />
																</div>
															</div></li>
													</ul>

													<div class="navigator-content">
														<div class="navigator-wrapper">
															<ul class="navigator-wrap-inner">
																<li><img src=""
																	alt="alt" /></li>
																<li><img src=""
																	alt="alt" /></li>
																<li><img src=""
																	alt="alt" /></li>
																<li><img src=""
																	alt="alt" /></li>
																<li><img src=""
																	alt="alt" /></li>
																<li><img src=""
																	alt="alt" /></li>
																<li><img src=""
																	alt="alt" /></li>
															</ul>
														</div>
														<div class="button-next">下一张</div>
														<div class="button-previous">上一张</div>
													</div>

												</div>
											</div>
									</div>
								</div>

								<div id="dingcanall_bottom_left">&nbsp;</div>
								<div id="dingcanall_bottom_right">&nbsp;</div>

								<input type="hidden" name="picw" id="picw" value="150" /> <input
									type="hidden" name="pich" id="pich" value="140" /> <input
									type="hidden" name="fittype" id="fittype" value="auto" />
							</div>
						</div>

					</div>
				</div>

				<!-- 图片/FLASH -->
				<div id='pdv_3602' class='pdv_class' title=''
					style='width: 649px; height: 151px; top: 375px; left: 0px; z-index: 13'>
					<div id='spdv_3602' class='pdv_content'
						style='overflow: hidden; width: 100%; height: 100%'>
						<div class="pdv_border"
							style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">
							<div
								style="height: 25px; margin: 1px; display: none; background:;">
								<div
									style="float: left; margin-left: 12px; line-height: 25px; font-weight: bold; color:">

								</div>
								<div style="float: right; margin-right: 10px; display: none">
									<a href="-1" style="line-height: 25px; color:">更多</a>
								</div>
							</div>
							<div style="padding: 0px">
								<img src="images/1254038036.gif" border="0" width="100%" />
							</div>
						</div>

					</div>
				</div>
			</div>
			<div id='bottom'
				style='width: 900px; height: 173px; background: none transparent scroll repeat 0% 0%'>

				<!-- 底部信息编辑区 -->
				<div id='pdv_3610' class='pdv_class' title='脚注信息'
					style='width: 898px; height: 106px; top: 65px; left: 0px; z-index: 7'>
					<div id='spdv_3610' class='pdv_bottom'
						style='overflow: hidden; width: 100%; height: 100%'>
						<div class="pdv_border"
							style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">
							<div
								style="height: 25px; margin: 1px; display: none; background:;">
								<div
									style="float: left; margin-left: 12px; line-height: 25px; font-weight: bold; color:">
									脚注信息</div>
								<div style="float: right; margin-right: 10px; display: none">
									<a href="-1" style="line-height: 25px; color:">更多</a>
								</div>
							</div>
							<div style="padding: 0px">
								<div
									style="width: 100%; text-align: center; font: 12px/20px Arial, Helvetica, sans-serif">
									<div style="LINE-HEIGHT: 30px">电话：0573-87654321
										售前QQ：241457 45761112 地址：浙江省嘉兴市建国南路1586号 邮编：314000 （商务合作）</div>
									<div style="LINE-HEIGHT: 30px">网上快餐店
										Copyright(C)2009-2010</div>
								</div>

							</div>
						</div>

					</div>
				</div>



				<div id="bottommenu">
					<a href="onwe.jsp" target="_self">关于我们</a>| <a href="orderhelp.jsp"
						target="_self">订餐指南</a>| <a href="carryshow.jsp" target="_self">配送说明</a>|
					<a href="linkman.jsp" target="_self">联系方式</a>| <a
						href="admin/advise.jsp" target="_self">投诉建议</a>|
				</div>
				<!-- 底部菜单（一级） -->
				<div id='pdv_3612' class='pdv_class'
					style='width: 898px; height: 35px; top: 0px; left: 0px; z-index: 8'>
					<div id='spdv_3612' class='pdv_bottom'
						style='overflow: hidden; width: 100%; height: 100%'>
						<div class="pdv_border"
							style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">
							<div
								style="height: 25px; margin: 1px; display: none; background:;">
								<div
									style="float: left; margin-left: 12px; line-height: 25px; font-weight: bold; color:">
								</div>
								<div style="float: right; margin-right: 10px; display: none">
									<a href="-1" style="line-height: 25px; color:">更多</a>
								</div>
							</div>
							<div style="padding: 0px"></div>
						</div>

					</div>
				</div>

				<!-- 文字友情链接 -->
				<div id='pdv_3609' class='pdv_class' title=''
					style='width: 898px; height: 30px; top: 35px; left: 0px; z-index: 10'>
					<div id='spdv_3609' class='pdv_bottom'
						style='overflow: hidden; width: 100%; height: 100%'>
						<div class="pdv_border"
							style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">
							<div
								style="height: 25px; margin: 1px; display: none; background:;">
								<div
									style="float: left; margin-left: 12px; line-height: 25px; font-weight: bold; color:">

								</div>
								<div style="float: right; margin-right: 10px; display: inline">
									<a href="advs/link/" style="line-height: 25px; color:">更多</a>
								</div>
							</div>
							<div style="padding: 5px">
								<ul style="margin: 0; padding: 0">
									<li
										style="list-style-type: none; float: left; margin: 0px; padding: 3px 10px 3px 10px; white-space: nowrap">
										<a href="http://food.39.net/" target="_self">39健康网</a>
									</li>

									<li
										style="list-style-type: none; float: left; margin: 0px; padding: 3px 10px 3px 10px; white-space: nowrap">
										<a href="http://eat.51ttyy.com/" target="_self">天天营养网</a>
									</li>

									<li
										style="list-style-type: none; float: left; margin: 0px; padding: 3px 10px 3px 10px; white-space: nowrap">
										<a href="http://www.canyin.com/" target="_self">中国餐饮网</a>
									</li>

									<li
										style="list-style-type: none; float: left; margin: 0px; padding: 3px 10px 3px 10px; white-space: nowrap">
										<a href="http://www.canyinshijie.com/" target="_self">餐饮世界网</a>
									</li>

									<li
										style="list-style-type: none; float: left; margin: 0px; padding: 3px 10px 3px 10px; white-space: nowrap">
										<a href="http://www.tesecai.cn/" target="_self">特色菜网</a>
									</li>

									<li
										style="list-style-type: none; float: left; margin: 0px; padding: 3px 10px 3px 10px; white-space: nowrap">
										<a href="http://www.westfood.com.cn/" target="_self">中国西餐网</a>
									</li>

									<li
										style="list-style-type: none; float: left; margin: 0px; padding: 3px 10px 3px 10px; white-space: nowrap">
										<a href="http://www.chinavegan.com/" target="_self">中华素食网</a>
									</li>

									<li
										style="list-style-type: none; float: left; margin: 0px; padding: 3px 10px 3px 10px; white-space: nowrap">
										<a href="http://www.kclm.org/" target="_self">中国快餐联盟网</a>
									</li>

									<li
										style="list-style-type: none; float: left; margin: 0px; padding: 3px 10px 3px 10px; white-space: nowrap">
										<a href="http://www.souchu.com/" target="_self">搜厨网</a>
									</li>

									<li
										style="list-style-type: none; float: left; margin: 0px; padding: 3px 10px 3px 10px; white-space: nowrap">
										<a href="http://www.cantingsheji.com/" target="_self">餐厅设计网</a>
									</li>

									<li
										style="list-style-type: none; float: left; margin: 0px; padding: 3px 10px 3px 10px; white-space: nowrap">
										<a href="http://www.meishichina.com/" target="_self">美食中国</a>
									</li>
								</ul>

							</div>
						</div>

					</div>
				</div>

				<!-- 图片/FLASH -->
				<div id='pdv_3611' class='pdv_class' title=''
					style='width: 121px; height: 44px; top: 94px; left: 656px; z-index: 11'>
					<div id='spdv_3611' class='pdv_bottom'
						style='overflow: hidden; width: 100%; height: 100%'>
						<div class="pdv_border"
							style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">
							<div
								style="height: 25px; margin: 1px; display: none; background:;">
								<div
									style="float: left; margin-left: 12px; line-height: 25px; font-weight: bold; color:">
								</div>
								<div style="float: right; margin-right: 10px; display: none">
									<a href="-1" style="line-height: 25px; color:">更多</a>
								</div>
							</div>
							<div style="padding: 0px">
								<img src="images/1253157163.jpg" border="0" width="100%" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id='bodyex'></div>
</body>

</html>