//全站反馈表单提交
$(document).ready(function(){

	//标题
	$('#title').blur(function(){
		var inputTitle = $('#title').val();
		if(inputTitle.length > 0){
		    if(inputTitle.length > 50 ){
		    	showinfo = "标题长度不能超过50个汉字";
		    	showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
		    }
		}
	});
	
	//投诉建议
	$('#content1').blur(function(){
		var inputContent1 = $('#content1').val();
		if(inputContent1.length > 0){
		    if(inputContent1.length > 1000 ){
		    	showinfo = "投诉内容长度不能超过1000个汉字";
		    	showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
		    }
		}
	});
	
	//姓名
	$('#name').blur(function(){
		var inputName = $('#name').val();
		if(inputName.length > 0){
		    if(inputName.length < 2 ){
		    	showinfo = "姓名至少有2个汉字组成";
		    	showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
		    }
		    if(inputName.length > 20){
		    	showinfo = "姓名长度不能超过20个汉字";
		    	showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
		    }
		}
	});
	
	//登陆帐号
	$('#loginid').blur(function(){
		var inputLoginId = $('#loginid').val();
		var patrn=/^(\w){5,20}$/;
		if(inputLoginId.length > 0 && !patrn.exec(inputLoginId)){
			showinfo = "登录账号必须由5-20个英文字母或数字组成";
	    	showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
		}
	});
	
	//联系电话
	$('#tel').blur(function(){
		var inputTel = $('#tel').val();
		var patrn=/^[_.0-9a-z-]+-([0-9a-z][0-9a-z-])+[0-9]{4,8}$/;
		if(inputTel.length > 0 && !patrn.exec(inputTel)){
			showinfo = "请输入正确的固定电话号码，格式如：010-12345678";
	    	showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
		}
	});
	
	//联系地址
	$('#address').blur(function(){
		var inputAddress = $('#address').val();
		if(inputAddress.length > 0){
		    if(inputAddress.length > 100 ){
		    	showinfo = "标题长度不能超过100个汉字";
		    	showErrorToast("<font color='red'><b>" + showinfo + "</b><font>");
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


