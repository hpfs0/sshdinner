//三种订餐方式的点击切换
function changeBq(bqnow,bq1,bq2){
	//标签切换之标题
	var ttnow = document.getElementById("tt_"+bqnow);
	var tt1 = document.getElementById("tt_"+bq1);
	var tt2 = document.getElementById("tt_"+bq2);

	ttnow.className="dingcanall_menunow";
	tt1.className="dingcanall_menu";
	tt2.className="dingcanall_menu";
	
	//标签切换之内容
	var mmnow = document.getElementById("mm_"+bqnow);
	var mm1 = document.getElementById("mm_"+bq1);
	var mm2 = document.getElementById("mm_"+bq2);
	
	mmnow.className="dingcanall_connow";
	mm1.className="dingcanall_con";
	mm2.className="dingcanall_con";
	
}


//三种订餐方式下的一级分类切换
function changeCat(ty,catid,n,k){

	//切换样式
	for(var i=1; i<=n; i++){
		if(i==k){
			$("#cat_"+ty+"_"+i)[0].className="catfontnow";
		}else{
			$("#cat_"+ty+"_"+i)[0].className="catfont";
		}
	}
	
	//读取数据
	var picw=$('#picw')[0].value;
	var pich=$('#pich')[0].value;
	var fittype=$('#fittype')[0].value;
	
	if(ty=="zx"){
		var pf="DingCanAllZx.php";
		var mm="smm_01";
	}else if(ty=="gd"){
		var pf="DingCanAllGd.php";
		var mm="smm_02";
	}

	$.ajax({
		type: "POST",
		url:PDV_RP+"dingcan/module/"+pf+"?myrp="+PDV_RP+"&catid="+catid+"&k="+k+"&picw="+picw+"&pich="+pich+"&fittype="+fittype,
		data: "act=dingcanall_"+ty,
		success: function(msg){
				
			var msg_arr=msg.split("::");
				
			if(msg_arr[0]=="OK"){
				$('#'+mm).html(msg_arr[1]);
				$().setBg();
			}else{
				$().alertwindow(msg,"");
			}
						
		}
	});
	
}

//首页的餐品展示与订购--组合套餐选择改变后，其价格积分信息实时跟随变动
function changeZhInfo(selzh){

	var zhid=selzh.value;
	
	$.ajax({
		type: "POST",
		url:PDV_RP+"dingcan/module/DingCanAllZh.php?myrp="+PDV_RP+"&zhid="+zhid,
		data: "act=dingcanall_zh_info",
		success: function(msg){
			
			eval(msg);
	
			if(M.O=="OK"){
				$('font#zhpp').html(M.P);
				$('font#zhmc').html(M.C);
				$('span#zuchenginfo').html(M.I);
				$('input#zucheng')[0].value=M.Z;
				$('img.zhcpimg')[0].id="zh_"+zhid+"_"+M.P;
				$().setBg();
			}else{
				$().alertwindow(msg,"");
			}
					
		}
	});

}


//首页的餐品展示与订购--对组合餐品的选择数量进行判断
function checkSelNums(cb){
	
	//获取所点选的checkbox信息
	var cbname=cb.name;
	var cbid_str=cb.id;
	var cbid_arr=cbid_str.split("_");
	var cbcatid=cbid_arr[1];
	var cbid=cbid_arr[2];
	
	//对当前所选组合套餐的组成进行处理
	var zucheng=$("#zucheng")[0].value;
	var zucheng_arr=zucheng.split(",");
	var zucheng_arr_nums=zucheng_arr.length;
	for(var i=0; i<zucheng_arr_nums; i++){
		var zucheng_arr2=zucheng_arr[i].split(":");
		if(zucheng_arr2[0]==cbcatid){
			var nowcatnums=zucheng_arr2[1];
		}
	}

	//获取当前餐品类别下所选餐品的数量
	var cbcatlength;
	cbcatlength=$("input[name='"+cbname+"']:checked").length;
	
	//对当前所选餐品类别下选择的餐品数目进行判断
	if(cbcatlength>nowcatnums){
		alert("当前套餐限定该餐品最多只可选择"+nowcatnums+"个");
		cb.checked=false;
	}else{
		var nowzhmemo=$("#zhmemo")[0].value;
		if(cb.checked==true){
			if(nowzhmemo==""){
				var tozhmemo=cbid+":1";
			}else{
				var nowzhmemo_arr=nowzhmemo.split(",");
				if((cbid+":1") in nowzhmemo_arr){
					var tozhmemo=nowzhmemo;
				}else{
					var tozhmemo=nowzhmemo+","+cbid+":1";
				}
			}
			$("#zhmemo")[0].value=tozhmemo;
		}else{
			var delidinfo=cbid+":1";
			if(nowzhmemo!=""){
				var tozhmemo2=nowzhmemo.replace(delidinfo, "");
				var tozhmemo=tozhmemo2.replace(/,,/g, ",");
				if(tozhmemo.substr(tozhmemo.length-1)==","){
					tozhmemo=tozhmemo.substr(0,tozhmemo.length-1);
				}
			}
			$("#zhmemo")[0].value=tozhmemo;
		}
	}
	
}


//首页的餐品展示与订购--对组合餐品的选择数量进行提交判断
function checkSelNumsAll(dg){
	
	//对当前所选组合套餐的组成进行处理
	var zucheng=$("#zucheng")[0].value;
	var zucheng_arr=zucheng.split(",");
	var zucheng_arr_nums=zucheng_arr.length;
	for(var i=0; i<zucheng_arr_nums; i++){
		var zucheng_arr2=zucheng_arr[i].split(":");
		var cbname="zhcp_"+zucheng_arr2[0];
		var cbcatlength;
		cbcatlength=$("input[name='"+cbname+"']:checked").length;
		if(cbcatlength>zucheng_arr2[1]){
			
			$.ajax({
				type: "POST",
				url:"dingcan/module/DingCanAllZh.php?zhcatid="+zucheng_arr2[0]+"&maxnums="+zucheng_arr2[1]+"&yxnums="+cbcatlength,
				data: "act=dingcanall_zh_cuoxuan",
				success: function(msg){
					alert(msg);
				}
			});
			
			return false;
			
		}else if(cbcatlength<zucheng_arr2[1]){
			
			$.ajax({
				type: "POST",
				url:"dingcan/module/DingCanAllZh.php?zhcatid="+zucheng_arr2[0]+"&maxnums="+zucheng_arr2[1]+"&yxnums="+cbcatlength,
				data: "act=dingcanall_zh_cuoxuan",
				success: function(msg){
					alert(msg);
				}
			});
			
			return false;
			
		}
	}
	
	 addCart(dg);
	
}

// 解决重复加载
var loaded = false;
//首页的餐品展示与订购--加入购物车
$(document).ready(function(){
	if(!loaded){
		loaded = true;
		
		if($.cookie("GOODSINFO")){
			// 加载cookie
			var goodsCookie = JSON.parse($.cookie("GOODSINFO"));
			// 向餐车中加入订购的菜品
		    var $dcinfo = $("#dcinfo");
			if(goodsCookie){
				for(var i=0; i< goodsCookie.GoodInfo.length; i++){
					// 构建加入元素的html字符串
					var appendHtml = "<tr id='"
						+ goodsCookie.GoodInfo[i].goodId
						+ "'><td><div style='float: left; padding-left: 20px;'>"
						+ decodeURIComponent(goodsCookie.GoodInfo[i].goodName)
						+ "</div></td>"
						+ "<td><div style='float: right; padding-right: 23px;'>"
						+ goodsCookie.GoodInfo[i].goodUnitPrice
						+ "</div></td>"
						+ "<td><div style='float: right; margin-right: 30px;'><input type='button' id='"
						+ goodsCookie.GoodInfo[i].goodId
						+ "_ADD' onclick='changeCount(this.id)' value='+' style='text-align: center; float: right; width: 14px' />"
						+ "<input type='text' id='"
						+ goodsCookie.GoodInfo[i].goodId
						+ "_COUNT' style='float: right; width: 16px' value='" +
						+ goodsCookie.GoodInfo[i].goodCnt
						+ "' maxlength='2' /><input type='button' id='"
						+ goodsCookie.GoodInfo[i].goodId
						+ "_SUBTRACT' onclick='changeCount(this.id)' value='-' style='text-align: center; float: right; width: 14px' /></div></td>"
						+ "<td><div style='float: right; padding-right: 10px;'><a id='"
						+ goodsCookie.GoodInfo[i].goodId
						+ "_DEL' onclick='changeCount(this.id)' style='text-decoration: none; cursor:pointer; '>×</a></div></td>";
					$dcinfo.append(appendHtml);
				}
				orderWithDivMov(true);
				setAllNumsAndPrice();
			}
		}
		
		// 结算总数监听
		$("#dcinfo input:eq(1)").focusout(function(){
			setAllNumsAndPrice();
			setGoosInfoCookie();
		});
		
		// 加入购物车
		var $clickedImg = $(".clickimg");
		$clickedImg.unbind("click").click(function(){
			// 获取菜品名称
			var dinnerName = "";
			// 获取菜品单价
			var dinnerPrice = 0;
			// 获取菜品ID
			var dinnerId = "";
			var $tag1 = $("#mm_01");
			if($tag1.css("display") == "block" ){
				var temp = $(this).parents("div.slider-description");
				dinnerName = temp.find("font").text();
				dinnerPrice = $(this).parent().prev().val();
				dinnerId = temp.children("input:first").val();
			}else{
				dinnerName = $(this).parents("table:first").find("strong:first").text();
				// 非会员
				dinnerPrice = $(this).parents("table:first").find("span:eq(3)").text();
				dinnerId = $(this).next().val();
			}
			
			var b = $(this).offset();
	        g = $("#pdv_3614").offset();
	        g.top += $("#pdv_3614").height() / 2;
	        var flyEffectTxt = $('<div class="flyEffect" style="z-index:99">' + dinnerName + "</div>");
	        flyEffectTxt.offset(b);
	        flyEffectTxt.appendTo("body").animate({
	            left: g.left + 20 + "px",
	            top: g.top + 20 + "px",
	            opacity: 1
	        }, function () {
	            $(this).animate({
	                opacity: 0
	            }, function () {
	                $(this).remove();
	                // 向餐车中加入订购的菜品
	                var $dcinfo = $("#dcinfo");
					// 构建加入元素的html字符串
					var appendHtml = "<tr id='"
						+ dinnerId
						+ "'><td><div style='float: left; padding-left: 20px;'>"
						+ dinnerName
						+ "</div></td>"
						+ "<td><div style='float: right; padding-right: 23px;'>"
						+ dinnerPrice
						+ "</div></td>"
						+ "<td><div style='float: right; margin-right: 30px;'><input type='button' id='"
						+ dinnerId
						+ "_ADD' onclick='changeCount(this.id)' value='+' style='text-align: center; float: right; width: 14px' />"
						+ "<input type='text' id='"
						+ dinnerId
						+ "_COUNT' style='float: right; width: 16px' value='1' maxlength='2' /><input type='button' id='"
						+ dinnerId
						+ "_SUBTRACT' onclick='changeCount(this.id)' value='-' style='text-align: center; float: right; width: 14px' /></div></td>"
						+ "<td><div style='float: right; padding-right: 10px;'><a id='"
						+ dinnerId
						+ "_DEL' onclick='changeCount(this.id)' style='text-decoration: none; cursor:pointer; '>×</a></div></td>";
					var hasDinnerId = "#"+dinnerId;
	                if($(hasDinnerId).length == 0){
	                    $dcinfo.append(appendHtml);
	                    orderWithDivMov(true);
	                }else{
	                    changeCount(dinnerId+"_ADD");
	                }
	                setAllNumsAndPrice();
	    			setGoosInfoCookie();
	            });
	        });
		});
	}
});

// 修复订餐导致边框不对齐
function orderWithDivMov(addFlg){
	if(addFlg){
		// 显示不正确部分下移
        var pdv3603Top = $("#pdv_3603").css("top");
        var pdv3613Top = $("#pdv_3613").css("top");
        var bottomMagrginTop = $("#bottom").css("margin-top");
        
        $("#pdv_3603").css("top", parseInt(pdv3603Top.substring(0,pdv3603Top.indexOf("px"))) + 19 + "px");
        $("#pdv_3613").css("top", parseInt(pdv3613Top.substring(0,pdv3613Top.indexOf("px"))) + 19 + "px");
        if(bottomMagrginTop == "0"){
        	$("#bottom").css("margin-top", "19px");
        } else {
        	$("#bottom").css("margin-top", parseInt(bottomMagrginTop.substring(0,bottomMagrginTop.indexOf("px"))) + 19 + "px");
        }
	}else{
		// 显示不正确部分上移
		var pdv3603Top = $("#pdv_3603").css("top");
        var pdv3613Top = $("#pdv_3613").css("top");
        var bottomMagrginTop = $("#bottom").css("margin-top");
        
        $("#pdv_3603").css("top", (parseInt(pdv3603Top.substring(0,pdv3603Top.indexOf("px"))) - 19) + "px");
        $("#pdv_3613").css("top", (parseInt(pdv3613Top.substring(0,pdv3613Top.indexOf("px"))) - 19) + "px");
        $("#bottom").css("margin-top", (parseInt(bottomMagrginTop.substring(0,bottomMagrginTop.indexOf("px"))) - 19) + "px");
	}
}

// 设置购物车cookie
function setGoosInfoCookie(){
	var goodsCookie = {};
	var goodsArray = new Array();
	var goods = $("#dcinfo tr");
	for(var i = 0; i < goods.length; i++){
		var goodId = $(goods[i]).attr("id");
		var goodCnt = parseInt($(goods[i]).find("input:eq(1)").val());
		var goodName = $(goods[i]).find("div:eq(0)").text();
		var goodUnitPrice = parseInt($(goods[i]).find("div:eq(1)").text());
		var item = {"goodId":goodId,"goodCnt":goodCnt,"goodName":encodeURIComponent(goodName),"goodUnitPrice":goodUnitPrice};
		goodsArray.push(item);
	}
	goodsCookie.GoodInfo = goodsArray;
	if(goods.length == 0){
		$.removeCookie('GOODSINFO');
	}else{
		$.cookie('GOODSINFO', JSON.stringify(goodsCookie), { expires: 7 });
	}
}

// 结算总数和金额
function setAllNumsAndPrice(){
	var allNums = 0;
	var cpprice = 0;
	var goods = $("#dcinfo tr");
	for(var i = 0; i < goods.length; i++){
		var goodCnt = parseInt($(goods[i]).find("input:eq(1)").val());
		var goodUnitPrice = parseInt($(goods[i]).find("div:eq(1)").text());
		allNums += goodCnt;
		cpprice += goodCnt*goodUnitPrice;
	}
	$("#allnums").text(allNums + "");
	$("#cpprice").text(cpprice + "");
}

// “+”和"-"和"×"功能实现
function changeCount(id){
	if(id){
		var info = id.split('_');
		var selectedGood = "#"+info[0];
		var selectedGoodCountString = selectedGood+"_COUNT";
		var $selectedGoodCount = $(selectedGoodCountString);
		if(info[1] == "ADD"){
			if(parseInt($selectedGoodCount.val())<99){
			    $selectedGoodCount.val((parseInt($selectedGoodCount.val()) + 1));
			    setAllNumsAndPrice();
                setGoosInfoCookie();
			}else{
				$selectedGoodCount.val(99);
			}
		}else if(info[1] == "SUBTRACT"){
			if(parseInt($selectedGoodCount.val())>1){
			    $selectedGoodCount.val((parseInt($selectedGoodCount.val()) - 1));
			    setAllNumsAndPrice();
                setGoosInfoCookie();
			}else{
				$selectedGoodCount.val(1);
			}
			setAllNums();
		}else if(info[1] == "DEL"){
			$(selectedGood).fadeOut("slow", function (){
			    $(this).remove();
			    setAllNumsAndPrice();
                setGoosInfoCookie();
			    orderWithDivMov(false);
			});
		}
		
	}
}

// 删除全部已选菜品
function delAll(){
	if($("#dcinfo").html() != ""){
		$("#dcinfo").html("");
		setAllNumsAndPrice();
		orderWithDivMov();
		setGoosInfoCookie();
	}
}

//首页的餐品展示与订购--修改餐品份数时，先记录当前的份数
function giveModNums(cn){
	$("#modnums_b")[0].value=cn.value;
}


