	//登陆画面表单校验
$(document).ready(function(){

	//初始提示
	//登录帐号
	var $muser = $('#muser');
	$muser.poshytip({
		className: 'tip-yellow',
		showOn: 'focus',
		alignTo: 'target',
		alignX: 'left',
		alignY: 'center',
		offsetX: 75,
		showTimeout: 200,
		content: '<span class="msgdiv">登录账号由5-20个英文字母或数字组成</span>'
//		content: function(updateCallback) {
//			window.setTimeout(function() {
//				if(5<=$muser[0].value.length && $muser[0].value.length <= 20){
//					updateCallback('<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />该登录账号可以登陆</span>');
//				}else{
//					updateCallback('<span class="msgdiv">登录账号由5-20个英文字母或数字组成</span>');
//				}			 
//			},1);
//			return '亲，正在验证中...';
//		}
	});
	
	$muser.blur(function(){ 
		var p=$muser[0].value;
		var patrn=/^(\w){5,20}$/;
		if(p.length){
		    if(!patrn.exec(p)){
		    	$muser.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />登录账号必须由5-20个英文字母或数字组成</span>',true);
		    	$muser.poshytip('hideDelayed',2500);
		    }else{
			    $.ajax({
					    type: "POST",
					    url: "checkuser.action",
					    data: "username="+p,
					    success: function(msg){
						    if(msg=="3"){
							  $muser.poshytip('update','<span class="errdiv"><image src="images/54097.gif" width="17px" style="padding-right:5px" />尊敬的会员您好，该会员账号已在其他地方登陆，请您注意账号安全</span>',true);
							  $muser.poshytip('hideDelayed', 2500);
						    } else{
						    	if(msg=="2"){
							    	$muser.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />该登录账号可以登陆</span>',true);
							    	$muser.poshytip('hideDelayed', 2500);

							    }else{
							    	$muser.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />该登录账号不存在，请重新输入</span>',true);
							    	$muser.poshytip('hideDelayed', 2500);
								}
						    }
	
						}
			    });
			}
		}else{
			$muser.poshytip('hide');
		}
	}); 

	//密码
	var $mpass = $('#mpass');
	$mpass.poshytip({
		className: 'tip-yellow',
		showOn: 'focus',
		alignTo: 'target',
		alignX: 'left',
		alignY: 'center',
		offsetX: 75,
		showTimeout: 200,
		content: '<span class="msgdiv">登录密码由5-20个英文字母或数字组成</span>'
	});

	$mpass.blur(function(){ 
		var p=$mpass[0].value;
		var patrn=/^(\w){5,20}$/;
		if(p.length){
			if(!patrn.exec(p)){
				$mpass.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />登录密码必须由5-20个英文字母或数字组成</span>',true);
				$mpass.poshytip('hideDelayed', 2500);
			}else{
				$mpass.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />该登录密码可以使用</span>',true);
				$mpass.poshytip('hideDelayed', 2500);
			}
		}else{
			$mpass.poshytip('hide');
		}
	}); 
	
	//验证码
	var $imgCode = $("#ImgCode");
	var $codeimg = $("#codeimg");
	$codeimg.click(function(){
		$("#ImgCode").val("");
		$("#codepng").remove();
		$("#ImgCode").focus();
	});
	
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
});

//会员登录
$(document).ready(function(){
	
	$('#login').click(function(){ 
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
			var memberLoginId = $("#muser").val();
			var memberLoginPw = $("#mpass").val();
			if(memberLoginId == ""){
				showinfo = "请输入您的登录帐号！";
				showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
			}else if(memberLoginPw == ""){
				showinfo = "请输入您的密码！";
				showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
			}
			else{
				
				$.ajax({
					type: "POST",
					url: "login.action",
					data: "memberLoginId="+memberLoginId + "&memberLoginPw="+memberLoginPw,
					success: function(msg){
						if(msg == "NG"){
							showinfo = "您的密码不正确，请重新输入";
							showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
						} else if(msg=="LG"){
							showinfo = "您的账号已在其他地方登陆，请您注意账号安全";
							showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
						}else if(msg=="OK"){
							window.location.href = "index.jsp";
						}
					}
				});
			}
		}
		return false; 

   }); 
});

