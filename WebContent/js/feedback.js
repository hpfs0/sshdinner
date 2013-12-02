//全站反馈表单提交
$(document).ready(function(){

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
	
	$("#Submit").click(function(){
		var title = $('#title').val();
		var content = $('#content1').val();
		var name = $('#name').val();
		var sex = $('#sex').val();
		var loginid = $('#loginid').val();
		var tel = $('#tel').val();
		var address = $('#address').val();
		var inputCode = $('#ImgCode').val();
		
		var errorMessage = "请输入";
		var endMessage = "!";
		var titleMessage = "标题";
		var contentMessage = "您的投诉建议";
		var nameMessage = "您的姓名";
		var loginidMessage = "您的登陆帐号";
		var telMessage = "您的联系电话";
		var addressMessage = "您的联系地址";
		
		var errCode = $('[src="images/error.png"]');
		
		var showinfo ="";
		
		//必须项目check
		if(title == ""){
			showinfo = errorMessage + titleMessage + endMessage;
			showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
		}else if (content == ""){
			showinfo = errorMessage + contentMessage + endMessage;
			showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
		}else if(name == ""){
			showinfo = errorMessage + nameMessage + endMessage;
			showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
		}else if(loginid == ""){
			showinfo = errorMessage + loginidMessage + endMessage;
			showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
		}else if(tel == ""){
			showinfo = errorMessage + telMessage + endMessage;
			showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
		}else if(address == ""){
			showinfo = errorMessage + addressMessage + endMessage;
			showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
		}else if(inputCode == ""){
			showinfo = errorMessage + "验证码" + endMessage;
			showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
		}
		else if(errCode.length > 0){
			showinfo = "验证码不正确!";
			showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
		}
		else{
				$.ajax({
					type: "POST",
					url: "advise.action",
					data: "title=" + title + "&content=" + content
					+ "&name=" + name + "&sex=" + sex + "&loginid=" + loginid
					+ "&tel=" + tel + "&address=" + address,
					success: function(msg){
						if(msg=="OK"){
							$('div#notice').hide();
							$().toastmessage('showToast', {
					            text     : "<b>" + "您的留言已提交，我们会尽快和您联系!" + "</b>",
					            sticky   : false,
					            position : 'middle-center',
					            closeText: '',
					            close    : function () {
					            	$('#title').val("");
					        		$('#content1').val("");
					        		$('#name').val("");
					        		$('#sex').val("");
					        		$('#loginid').val("");
					        		$('#tel').val("");
					        		$('#address').val("");
					        		$('#ImgCode').val("");
					            }
					        });
						}else{
							$('div#notice').hide();
							$().toastmessage('showToast', {
					            text     : "<b>" + "您的提交失败了！非常抱歉！" + "</b>",
					            sticky   : false,
					            position : 'middle-center',
					            type     : 'error',
					            closeText: '',
					            close    : function () {
					            	$('#title').val("");
					        		$('#content1').val("");
					        		$('#name').val("");
					        		$('#sex').val("");
					        		$('#loginid').val("");
					        		$('#tel').val("");
					        		$('#address').val("");
					        		$('#ImgCode').val("");
					            }
					        });
						}
					}
				});
		}
	});
});


