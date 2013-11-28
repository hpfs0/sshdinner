
//会员表单校验

$(document).ready(function(){

	//初始提示
	$('#user').focus(function(){ 
		$('#chkUser').remove();
		$('#user').after('<span id="chkUser" class="msgdiv">登录账号由5-20个英文字母或数字组成</span>');
	}); 
	
	$('#user').blur(function(){ 
		var p=$("#user")[0].value;
		var patrn=/^(\w){5,20}$/;
		if(!patrn.exec(p)){
			$('#chkUser').remove();
			$('#user').after('<span id="chkUser" class="errdiv">登录账号必须由5-20个英文字母或数字组成</span>');
		}else{
			$.ajax({
					type: "POST",
					url: "checkuser.action",
					data: "username="+p,
					success: function(msg){
						if(msg=="1"){
							$('#chkUser').remove();
							$('#user').after('<span id="chkUser" class="rightdiv">该登录账号可以使用</span>');
						}else{
							$('#chkUser').remove();
							$('#user').after('<span id="chkUser" class="errdiv">该登录账号已经被使用，请更换一个</span>');
						}
					}
			 });
			
		}
	}); 


	$('#password').focus(function(){ 
		$('#chkPass').remove();
		$('#password').after('<span id="chkPass" class="msgdiv">登录密码由5-20个英文字母或数字组成</span>');
	}); 


	$('#password').blur(function(){ 
		var p=$("#password")[0].value;
		var patrn=/^(\w){5,20}$/;
		if(!patrn.exec(p)){
			$('#chkPass').remove();
			$('#password').after('<span id="chkPass" class="errdiv">登录密码必须由5-20个英文字母或数字组成</span>');
		}else{
			$('#chkPass').remove();
			$('#password').after('<span id="chkPass" class="rightdiv">该登录密码可以使用</span>');
		}
	}); 

	$('#repass').focus(function(){ 
		$('#chkRepass').remove();
		$('#repass').after('<span id="chkRepass" class="msgdiv">请重复输入和上面相同的密码</span>');
	}); 

	$('#repass').blur(function(){ 
		var p=$("#repass")[0].value;
		var w=$("#password")[0].value;
		var patrn=/^(\w){5,20}$/;
		if(!patrn.exec(p)){
			$('#chkRepass').remove();
			$('#repass').after('<span id="chkRepass" class="errdiv">登录密码必须由5-20个英文字母或数字组成</span>');
		}else if(p!=w){
			$('#chkRepass').remove();
			$('#repass').after('<span id="chkRepass" class="errdiv">两次输入的密码不一致，请输入和上面相同的密码</span>');
		}else{
			$('#chkRepass').remove();
			$('#repass').after('<span id="chkRepass" class="rightdiv">输入正确</span>');
		}
	}); 

	$('#email').focus(function(){ 
		$('#chkEmail').remove();
		$('#email').after('<span id="chkEmail" class="msgdiv">请输入正确的电子邮件</span>');
	}); 

	$('#email').blur(function(){ 
		var p=$("#email")[0].value;
		var patrn=/^[_.0-9a-z-]+@([0-9a-z][0-9a-z-]+.)+[a-z]{2,3}$/;
		if(!patrn.exec(p)){
			$('#chkEmail').remove();
			$('#email').after('<span id="chkEmail" class="errdiv">电子邮件格式不正确，请输入正确的电子邮件</span>');
		}else{
			$('#chkEmail').remove();
			$('#email').after('<span id="chkEmail" class="rightdiv">输入正确</span>');
		}
	}); 


	


    //昵称
	$('#pname').focus(function(){ 
		$('#chkPname').remove();
		$('#pname').after('<span id="chkPname" class="msgdiv">网名昵称可以是中文、英文或数字</span>');
	}); 

	$('#pname').blur(function(){
		var p=$("#pname")[0].value;
		if(p.length<1){
			$('#chkPname').remove();
			$('#pname').after('<span id="chkPname" class="errdiv">请输入网名昵称</span>');
		}else{
			$('#chkPname').remove();
			$('#pname').after('<span id="chkPname" class="rightdiv">输入正确</span>');
		}

	}); 

	//姓名
	$('#name').focus(function(){ 
		$('#chkName').remove();
		$('#name').after('<span id="chkName" class="msgdiv">请输入您的姓名</span>');
	}); 

	$('#name').blur(function(){
		var p=$("#name")[0].value;
		if(p.length<2){
			$('#chkName').remove();
			$('#name').after('<span id="chkName" class="errdiv">请输入您的姓名</span>');
		}else{
			$('#chkName').remove();
			$('#name').after('<span id="chkName" class="rightdiv">输入正确</span>');
		}

	}); 


	//公司
	$('#company').focus(function(){ 
		$('#chkCompany').remove();
		$('#company').after('<span id="chkCompany" class="msgdiv">请填写公司名称,个人用户请填姓名</span>');
	}); 

	$('#company').blur(function(){
		var p=$("#company")[0].value;
		if(p.length<2){
			$('#chkCompany').remove();
			$('#company').after('<span id="chkCompany" class="errdiv">请填写公司名称,个人用户请填姓名</span>');
		}else{
			$('#chkCompany').remove();
			$('#company').after('<span id="chkCompany" class="rightdiv">输入正确</span>');
		}

	});

	//固定电话
	$('#tel').focus(function(){ 
		$('#chkTel').remove();
		$('#tel').after('<span id="chkTel" class="msgdiv">请输入固定电话号码，格式如：010-12345678</span>');
	}); 

	$('#tel').blur(function(){
		var p=$("#tel")[0].value;
		if(p==''){
			$('#chkTel').remove();
		}else{
			var patrn=/^[_.0-9a-z-]+-([0-9a-z][0-9a-z-])+[0-9]{4,8}$/;
			if(!patrn.exec(p)){
				$('#chkTel').remove();
				$('#tel').after('<span id="chkTel" class="errdiv">请输入正确的固定电话号码，格式如：010-12345678</span>');
			}else{
				$('#chkTel').remove();
				$('#tel').after('<span id="chkTel" class="rightdiv">输入正确</span>');
				
			}
		}

	}); 
	
	//手机
	$('#mov').focus(function(){ 
		$('#chkMov').remove();
		$('#mov').after('<span id="chkMov" class="msgdiv">请输入手机号码，如：13912345678</span>');
	}); 

	$('#mov').blur(function(){
		var p=$("#mov").val();
		var patrn=/[0-9]{11,11}/;
		if(p==''){
			$('#chkMov').remove();
		}else{
			if(p.length != 11 || !patrn.exec(p)){
				$('#chkMov').remove();
				$('#mov').after('<span id="chkMov" class="errdiv">请输入正确的手机号码，如：13912345678</span>');
			}else{
				$('#chkMov').remove();
				$('#mov').after('<span id="chkMov" class="rightdiv">输入正确</span>');
			}
		}
	});
	
	//验证码
	$("#ImgCode").blur(function(){
		//获取用户输入的验证码
		var inputCode = $("#ImgCode").val();
		if(inputCode.length > 0){
			//发送ajax请求判断是否输入正确
			$.ajax({
				type: "POST",
				url: "checkgifcode.action",
				data: "inputCode="+inputCode,
				success: function(msg){
					if(msg=="OK"){
						$("#codepng").remove();
						$("#codeimg").after('<img id="codepng" src="images/right.png" />');
					}else{
						$("#codepng").remove();
						$("#codeimg").after('<img id="codepng" src="images/error.png" />');
					}
				}
			});
		}
	});
});


//注册步骤
$(document).ready(function(){
	
	var membertypeid=$("#membertypeid")[0].value;
	var nowstep=$("#nowstep")[0].value;
	
	var firstclass;
	
	if(nowstep=="account"){
		firstclass="stepnow";
	}else{
		firstclass="step";
	}

	$.ajax({
			type: "POST",
			url: "post.php",
			data: "act=getstep&membertypeid="+membertypeid+"&nowstep="+nowstep,
			success: function(msg){
				$("#stepname").html("<ul><li class='"+firstclass+"'>申请登录账号</li>");
				$("#stepname").append(msg);
				$("#stepname").append("<li class='step'>完成注册</li></ul>");
				$("#nextstep")[0].value=$("#nextst")[0].value;
			}
		
	 });

	$("#membertypeid").change(function(){
		var membertypeid=$("#membertypeid")[0].value;

		$.ajax({
				type: "POST",
				url: "post.php",
				data: "act=getstep&membertypeid="+membertypeid+"&nowstep="+nowstep,
				success: function(msg){
					$("#stepname").html("<ul><li class='"+firstclass+"'>申请登录账号</li>");
					$("#stepname").append(msg);
					$("#stepname").append("<li class='step'>完成注册</li></ul>");
					$("#nextstep")[0].value=$("#nextst")[0].value;
				}
			
		 });
	});
});


//会员注册协议
$(document).ready(function(){
	
	$("#tongyi").click(function(){
		if($("#tongyi")[0].checked==true){
			$("#tijiao")[0].disabled=false;
		}else{
			$("#tijiao")[0].disabled=true;
		}
	});

	$("#lookxieyi").click(function(){
		var membertypeid=$("#membertypeid")[0].value;
		$.ajax({
				type: "POST",
				url: "post.php",
				data: "act=xieyi&membertypeid="+membertypeid,
				success: function(msg){
					$('#frmWindow').remove();
					$("body").append("<div id='frmWindow'></div>");
					$('#frmWindow').append('<div class="topBar">会员注册协议<div class="pwClose"></div></div><div class="border"><div class="windowcontent"><div class="ntc">'+msg+'</div></div></div>');
					$.blockUI({message:$('#frmWindow'),css:{width:'600px',top:'80px'}}); 
					$('.pwClose').click(function() { 
						$.unblockUI(); 
					}); 
				}
			
		 });
	});
});


//会员注册表单提交
$(document).ready(function(){
	
	$('#memberReg').submit(function(){ 
		$('#memberReg').ajaxSubmit({
			target: 'div#notice',
			url: 'post.php',
			success: function(msg) {
				
				switch(msg){
					
					case "OK":
						$('div#notice').hide();
						if($("#nextstep")[0].value=="enter"){
							window.location='index.php';
						}else{
							window.location='reg.php?step='+$("#nextstep")[0].value;
						}

					break;

					case "CHECK":
						$('div#notice')[0].className='okdiv';
						$('div#notice').html("会员注册成功！您注册的会员类型需要审核后才能登录，感谢您的注册");
						$('div#notice').show();
						$().setBg();
					break;

					default :
						$('div#notice')[0].className='noticediv';
						$('div#notice').show();
						$().setBg();
					break;
				}
				
			}
		}); 
       return false; 

   }); 
});

//会员注册分步提交
$(document).ready(function(){
	
	$('#RegStep').submit(function(){ 
		
		$('#RegStep').ajaxSubmit({
			target: 'div#notice',
			url: 'post.php',
			success: function(msg) {
				if(msg=="OK"){
					$('div#notice').hide();
					
					if($("#nextstep")[0].value=="enter"){
						window.location='index.php';
					}else{
						window.location='reg.php?step='+$("#nextstep")[0].value;
					}
					
				}else{
					$('div#notice')[0].className='noticediv';
					$('div#notice').show();
					$().setBg();
					
				}
			}
		}); 
		
       return false; 

   }); 
});

//头像设置
$(document).ready(function(){
	$(".selface").click(function(){
		$("input#nowface")[0].value=this.id.substr(8);
		$("img#nowfacepic")[0].src=this.src;
	});
});

//新验证码生成
$(document).ready(function(){
	$("#getImgCode").click(function(){
		$("#codeimg").attr("src","gifcode.action");
		$("#ImgCode").val("");
		$("#codepng").remove();
		$("#ImgCode").focus();
	});
	$("#codeimg").click(function(){
		$("#codeimg").attr("src","gifcode.action");
		$("#ImgCode").val("");
		$("#codepng").remove();
		$("#ImgCode").focus();
	});
});

//注册点击处理
$(document).ready(function(){
	$("#tijiao").click(function(){
		// jquery找到有无输入不正确的选项
		var errDiv = $(".errdiv");
		var showinfo = "";
		var errCode = $('[src="image/error.png"]');

		if(errDiv.length > 0){
			showinfo = errDiv.html();
			$.jBox.error("<font color='red'><b>" + showinfo + "</b><font>", "警告",
				{
					draggable : false,
					top : '40%',
					buttons: {}
				});
		}else if(errCode.attr("src") > 0){
			showinfo = "验证码不正确";
			$.jBox.error("<font color='red'><b>" + showinfo + "</b><font>", "警告",
					{
						draggable : false,
						top : '40%',
						buttons: {}
					});
		}
		else{
			var membertypeid = $("#membertypeid").val();
			var user = $("#user").val();
			var password = $("#password").val();
			var email = $("#email").val();
			var pname = $("#pname").val();
			var name = $("#name").val();
			var company = $("#company").val();
			var mov = $("#mov").val();
			
			// 必须项目全部都填写
			if(user != "" && password != "" && email != "" 
				&& pname != "" & name != "" && company != "" && mov != ""){
				
				// 所有输入部分隐藏
				$(".row").css("display","none");
				// 调用registerAction
				$.ajax({
					type: "POST",
					url: "reguser.action",
					data: "membertypeid="+ membertypeid +"&user="+ user 
					+ "&password=" + password + "&email=" + email + "&name=" + name + 
					"&pname=" + pname + "&company=" + company + "&mov=" + mov,
					success: function(msg){
						if(msg=="OK"){
							$('div#notice')[0].className='okdiv';
							$('div#notice').html("会员注册成功！感谢您的注册! <a href='login.jsp'><b>点此登录</b></>");
							$('div#notice').show();
							$().setBg();
						}else{
							$('div#notice')[0].className='okdiv';
							$('div#notice').html("会员注册失败！给您带来的不便非常抱歉！ <a href='reg.jsp'><b>点此重新注册</b></>");
							$('div#notice').show();
							$().setBg();
						}
					}
				});
			}
		}
	});
});
