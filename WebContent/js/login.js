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
		content: function(updateCallback) {
			window.setTimeout(function() {
				if(5<=$muser[0].value.length && $muser[0].value.length <= 20){
					updateCallback('<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />该登录账号可以登陆</span>');
				}else{
					updateCallback('<span class="msgdiv">登录账号由5-20个英文字母或数字组成</span>');
				}
			    
//				else if($muser[0].value.length == 0){
//					updateCallback('<span class="msgdiv">登录账号由5-20个英文字母或数字组成</span>');
//				}
			},300);
			return '亲，正在验证中...';
		}
	});
	
	$muser.blur(function(){ 
		var p=$muser[0].value;
		var patrn=/^(\w){5,20}$/;
		if(p.length){
		    if(!patrn.exec(p)){
		    	$muser.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />登录账号必须由5-20个英文字母或数字组成</span>',true);
		    }else{
			    $.ajax({
					    type: "POST",
					    url: "checkuser.action",
					    data: "username="+p,
					    success: function(msg){
						    if(msg=="2"){
						    	$muser.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />该登录账号可以登陆</span>',true);
						    	$muser.poshytip('hideDelayed', 3000);

						    }else{
						    	$muser.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />该登录账号不存在，请重新输入</span>',true);
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
			if(!patrn.exec(p) && msg=="2"){
				$mpass.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />登录密码必须由5-20个英文字母或数字组成</span>',true);
			}else if(msg=="2"){
				$mpass.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />该登录密码可以使用</span>',true);
			}else if(msg=="1"){
				$mpass.poshytip('hide');
			}
		}else{
			$mpass.poshytip('hide');
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
});

//会员登录
$(document).ready(function(){
	
	$('#memberLogin').submit(function(){ 
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
			var memberLoginId = $("#memberLoginId").val();
			var memberLoginPw = $("#memberLoginPw").val();
			if(memberLoginId == ""){
				showinfo = "请输入您的登录帐号！";
				showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
			}else if(memberLoginPw == ""){
				showinfo = "请输入您的密码！";
				showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
			}else{
				$('#memberLogin').ajaxSubmit({
					target: 'div#notice',
					url: 'index.jsp',
					success: function(msg) {
						if(msg=="OK"){
							$('div#notice').hide();
//							window.location='index.jsp';
						}else if(msg.substr(0,2)=="OK" && msg.substr(2,7)=="<script"){
							$('div#notice')[0].className="okdiv";
							$('div#notice').html(msg.substr(2)+"您已登录成功，稍候跳转到会员中心").show();
							$().setBg();
//							setTimeout("window.location='index.jsp';",2000);
						}else{
							$('div#notice').show();
							$().setBg();
						}
					}
				}); 
			}
		}
		return false; 

   }); 
});

