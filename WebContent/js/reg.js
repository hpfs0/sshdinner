
//会员表单校验

$(document).ready(function(){

	//初始提示
	//登录帐号
	var $user = $('#user');
	$user.poshytip({
		className: 'tip-yellow',
		showOn: 'focus',
		alignTo: 'target',
		alignX: 'right',
		alignY: 'center',
		offsetX: 10,
		showTimeout: 200,
		content: '<span class="msgdiv">登录账号由5-20个英文字母或数字组成</span>'
	});
	
	$user.blur(function(){ 
		var p=$user[0].value;
		var patrn=/^(\w){5,20}$/;
		if(p.length){
		    if(!patrn.exec(p)){
		    	$user.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />登录账号必须由5-20个英文字母或数字组成</span>',true);
		    }else{
			    $.ajax({
					    type: "POST",
					    url: "checkuser.action",
					    data: "username="+p,
					    success: function(msg){
						    if(msg=="1"){
						    	$user.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />该登录账号可以使用</span>',true);
						    }else{
						    	$user.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />该登录账号已经被使用，请更换一个</span>',true);
							}
						}
			    });
			}
		}else{
			$user.poshytip('hide');
		}
	}); 

	//密码
	var $password = $('#password');
	$password.poshytip({
		className: 'tip-yellow',
		showOn: 'focus',
		alignTo: 'target',
		alignX: 'right',
		alignY: 'center',
		offsetX: 10,
		showTimeout: 200,
		content: '<span class="msgdiv">登录密码由5-20个英文字母或数字组成</span>'
	});

	$password.blur(function(){ 
		var p=$password[0].value;
		var patrn=/^(\w){5,20}$/;
		if(p.length){
			if(!patrn.exec(p)){
				$password.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />登录密码必须由5-20个英文字母或数字组成</span>',true);
			}else{
				$password.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />该登录密码可以使用</span>',true);
			}
		}else{
			$password.poshytip('hide');
		}
	}); 

	//密码确认
	var $repass = $('#repass');
	$repass.poshytip({
		className: 'tip-yellow',
		showOn: 'focus',
		alignTo: 'target',
		alignX: 'right',
		alignY: 'center',
		offsetX: 10,
		showTimeout: 200,
		content: '<span class="msgdiv">请重复输入和上面相同的密码</span>'
	});

	$repass.blur(function(){ 
		var p=$repass[0].value;
		var w=$password[0].value;
		var patrn=/^(\w){5,20}$/;
		if(p.length){
			if(!patrn.exec(p)){
				$repass.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />登录密码必须由5-20个英文字母或数字组成</span>',true);
			}else if(p!=w){
				$repass.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />两次输入的密码不一致，请输入和上面相同的密码</span>',true);
			}else{
				$repass.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />输入正确</span>',true);
			}
		}else{
			$repass.poshytip('hide');
		}
	}); 

	//电子邮件
	var $email = $('#email');
	$email.poshytip({
		className: 'tip-yellow',
		showOn: 'focus',
		alignTo: 'target',
		alignX: 'right',
		alignY: 'center',
		offsetX: 10,
		showTimeout: 200,
		content: '<span class="msgdiv">请输入正确的电子邮件</span>'
	});

	$email.blur(function(){ 
		var p=$email[0].value;
		var patrn=/^[_.0-9a-z-]+@([0-9a-z][0-9a-z-]+.)+[a-z]{2,3}$/;
		if(p.length){
			if(!patrn.exec(p)){
				$email.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />电子邮件格式不正确，请输入正确的电子邮件</span>',true);
			}else{
				$email.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />输入正确</span>',true);
			}
		}else{
			$email.poshytip('hide');
		}
	}); 

	//昵称
	var $pname = $('#pname');
	$pname.poshytip({
		className: 'tip-yellow',
		showOn: 'focus',
		alignTo: 'target',
		alignX: 'right',
		alignY: 'center',
		offsetX: 10,
		showTimeout: 200,
		content: '<span class="msgdiv">网名昵称可以是中文、英文或数字</span>'
	});

	$pname.blur(function(){
		var p=$pname[0].value;
		if(p.length){
			if(p.length<1){
				$pname.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />请输入网名昵称</span>',true);
			}else{
				$pname.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />输入正确</span>',true);
			}
		}else{
			$pname.poshytip('hide');
		}
	}); 

	//姓名
	var $name = $('#name');
	$name.poshytip({
		className: 'tip-yellow',
		showOn: 'focus',
		alignTo: 'target',
		alignX: 'right',
		alignY: 'center',
		offsetX: 10,
		showTimeout: 200,
		content: '<span class="msgdiv">请输入您的姓名</span>'
	});

	$name.blur(function(){
		var p=$name[0].value;
		if(p.length){
			if(p.length<2){
				$name.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />请输入您的姓名</span>',true);
			}else{
				$name.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />输入正确</span>',true);
			}
		}else{
			$name.poshytip('hide');
		}
	}); 

	//公司
	var $company = $('#company');
	$company.poshytip({
		className: 'tip-yellow',
		showOn: 'focus',
		alignTo: 'target',
		alignX: 'right',
		alignY: 'center',
		offsetX: 10,
		showTimeout: 200,
		content: '<span class="msgdiv">请填写公司名称,个人用户请填姓名</span>'
	});

	$company.blur(function(){
		var p=$company[0].value;
		if(p.length){
			if(p.length<2){
				$company.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />请填写公司名称,个人用户请填姓名</span>',true);
			}else{
				$company.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />输入正确</span>',true);
			}
		}else{
			$company.poshytip('hide');
		}
	});

	//固定电话
	var $tel = $('#tel');
	$tel.poshytip({
		className: 'tip-yellow',
		showOn: 'focus',
		alignTo: 'target',
		alignX: 'right',
		alignY: 'center',
		offsetX: 10,
		showTimeout: 200,
		content: '<span class="msgdiv">请输入固定电话号码，格式如：010-12345678</span>'
	});

	$tel.blur(function(){
		var p=$("#tel")[0].value;
		var patrn=/^[_.0-9a-z-]+-([0-9a-z][0-9a-z-])+[0-9]{4,8}$/;
		if(p.length){
			if(!patrn.exec(p)){
				$tel.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />请输入正确的固定电话号码，格式如：010-12345678</span>',true);
			}else{
				$tel.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />输入正确</span>',true);
			}
		}else{
			$tel.poshytip('hide');
		}
	}); 
	
	//手机
	var $mov = $('#mov');
	$mov.poshytip({
		className: 'tip-yellow',
		showOn: 'focus',
		alignTo: 'target',
		alignX: 'right',
		alignY: 'center',
		offsetX: 10,
		showTimeout: 200,
		content: '<span class="msgdiv">请输入手机号码，如：13912345678</span>'
	});

	$mov.blur(function(){
		var p=$mov.val();
		var patrn=/[0-9]{11,11}/;
		if(p.length){
			if(p.length != 11 || !patrn.exec(p)){
				$mov.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />请输入正确的手机号码，如：13912345678</span>',true);
			}else{
				$mov.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />输入正确</span>',true);
			}
		}else{
			$mov.poshytip('hide');
		}
	});
	
	//验证码
	var $imgCode = $("#ImgCode");
	$imgCode.blur(function(){
		//获取用户输入的验证码
		var inputCode = $imgCode.val();
		if(inputCode.length){
			//发送ajax请求判断是否输入正确
			$.ajax({
				type: "POST",
				url: "checkgifcode.action",
				data: "inputCode="+inputCode,
				success: function(msg){
					var $codepng = $("#codepng");
					var $codeimg = $("#codeimg");
					if(msg=="OK"){
						$codepng.remove();
						$codeimg.after('<img id="codepng" src="images/right.png" />');
					}else{
						$codepng.remove();
						$codeimg.after('<img id="codepng" src="images/error.png" />');
					}
				}
			});
		}else{
			$('#codepng').remove();
		}
	});
	
	//注册点击处理
	$("#tijiao").click(function(){
		// jquery找到有无输入不正确的选项
		var $errDiv = $(".errdiv");
		var showinfo = "";
		var errCode = $('[src="images/error.png"]');

		if($errDiv.length > 0){
			showinfo = $errDiv.html().replace(/<.*>/,'');
			showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
		}else if(errCode.length > 0){
			showinfo = "验证码不正确!";
			showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
		}
		else{
			var membertypeid = $("#membertypeid").val();
			var user = $("#user").val();
			var password = $("#password").val();
			var repass = $("#repass").val();
			var email = $("#email").val();
			var pname = $("#pname").val();
			var name = $("#name").val();
			var company = $("#company").val();
			var mov = $("#mov").val();
			var imgCode = $("#ImgCode").val();
			
			if(user == ""){
				showinfo = "请输入您的登录帐号！";
				showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
			}else if(password == ""){
				showinfo = "请输入您的密码！";
				showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
			}else if(repass == ""){
				showinfo = "请再次输入您的密码！";
				showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
			}else if(email == ""){
				showinfo = "请输入您的电子邮箱！";
				showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
			}else if(pname == ""){
				showinfo = "请输入您的昵称！";
				showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
			}else if(name == ""){
				showinfo = "请输入您的姓名！";
				showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
			}else if(company == ""){
				showinfo = "请输入您的公司！如果是个人用户,填写您的姓名即可。";
				showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
			}else if(company == ""){
				showinfo = "请输入您的公司！如果是个人用户,填写您的姓名即可。";
				showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
			}else if(mov == ""){
				showinfo = "请输入您的手机号码！";
				showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
			}else if(imgCode == ""){
				showinfo = "请输入验证码！";
				showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
			}else{
				$user.poshytip('hide');
				$password.poshytip('hide');
				$repass.poshytip('hide');
				$email.poshytip('hide');
				$pname.poshytip('hide');
				$name.poshytip('hide');
				$company.poshytip('hide');
				$tel.poshytip('hide');
				$mov.poshytip('hide');
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


////注册步骤
//$(document).ready(function(){
//	
//	var membertypeid=$("#membertypeid")[0].value;
//	var nowstep=$("#nowstep")[0].value;
//	
//	var firstclass;
//	
//	if(nowstep=="account"){
//		firstclass="stepnow";
//	}else{
//		firstclass="step";
//	}
//
//	$.ajax({
//			type: "POST",
//			url: "post.php",
//			data: "act=getstep&membertypeid="+membertypeid+"&nowstep="+nowstep,
//			success: function(msg){
//				$("#stepname").html("<ul><li class='"+firstclass+"'>申请登录账号</li>");
//				$("#stepname").append(msg);
//				$("#stepname").append("<li class='step'>完成注册</li></ul>");
//				$("#nextstep")[0].value=$("#nextst")[0].value;
//			}
//		
//	 });
//
//	$("#membertypeid").change(function(){
//		var membertypeid=$("#membertypeid")[0].value;
//
//		$.ajax({
//				type: "POST",
//				url: "post.php",
//				data: "act=getstep&membertypeid="+membertypeid+"&nowstep="+nowstep,
//				success: function(msg){
//					$("#stepname").html("<ul><li class='"+firstclass+"'>申请登录账号</li>");
//					$("#stepname").append(msg);
//					$("#stepname").append("<li class='step'>完成注册</li></ul>");
//					$("#nextstep")[0].value=$("#nextst")[0].value;
//				}
//			
//		 });
//	});
//});


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
				url: "agreement.action",
				data: "membertypeid="+membertypeid,
				success: function(msg){
					$('#frmWindow').remove();
					$("body").append("<div id='frmWindow'></div>");
					$('#frmWindow').append('<div class="topBar">会员注册协议<div class="pwClose"></div></div><div class="border"><div class="windowcontent"><div class="ntc">'+msg+'</div></div></div>');
					$.blockUI({message:$('#frmWindow'),fadeIn:700,fadeOut:700,css:{width:'600px',top:($(window).height() - 400) /2 + 'px'}}); 
					$('.pwClose').click(function() { 
						$.unblockUI(); 
					}); 
				}
			
		 });
	});
});


////会员注册表单提交
//$(document).ready(function(){
//	
//	$('#memberReg').submit(function(){ 
//		$('#memberReg').ajaxSubmit({
//			target: 'div#notice',
//			url: 'post.php',
//			success: function(msg) {
//				
//				switch(msg){
//					
//					case "OK":
//						$('div#notice').hide();
//						if($("#nextstep")[0].value=="enter"){
//							window.location='index.php';
//						}else{
//							window.location='reg.php?step='+$("#nextstep")[0].value;
//						}
//
//					break;
//
//					case "CHECK":
//						$('div#notice')[0].className='okdiv';
//						$('div#notice').html("会员注册成功！您注册的会员类型需要审核后才能登录，感谢您的注册");
//						$('div#notice').show();
//						$().setBg();
//					break;
//
//					default :
//						$('div#notice')[0].className='noticediv';
//						$('div#notice').show();
//						$().setBg();
//					break;
//				}
//				
//			}
//		}); 
//       return false; 
//
//   }); 
//});
//
////会员注册分步提交
//$(document).ready(function(){
//	
//	$('#RegStep').submit(function(){ 
//		
//		$('#RegStep').ajaxSubmit({
//			target: 'div#notice',
//			url: 'post.php',
//			success: function(msg) {
//				if(msg=="OK"){
//					$('div#notice').hide();
//					
//					if($("#nextstep")[0].value=="enter"){
//						window.location='index.php';
//					}else{
//						window.location='reg.php?step='+$("#nextstep")[0].value;
//					}
//					
//				}else{
//					$('div#notice')[0].className='noticediv';
//					$('div#notice').show();
//					$().setBg();
//					
//				}
//			}
//		}); 
//		
//       return false; 
//
//   }); 
//});

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
		$("#ImgCode").val("");
		$("#codepng").remove();
		$("#ImgCode").focus();
	});
	$("#codeimg").click(function(){
		$("#ImgCode").val("");
		$("#codepng").remove();
		$("#ImgCode").focus();
	});
});
