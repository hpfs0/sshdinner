//全站反馈表单提交
$(document).ready(function(){

	//标题
	var $title = $('#title');
	$title.poshytip({
		className: 'tip-yellow',
		showOn: 'focus',
		alignTo: 'target',
		alignX: 'right',
		alignY: 'center',
		offsetX: 10,
		showTimeout: 200,
		content: '<span class="msgdiv">请输入投诉或建议的标题</span>'
	});
	
	$title.blur(function(){
		var inputTitle = $title.val();
		if(inputTitle.length){
		    if(inputTitle.length > 50 ){
		    	$title.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />标题长度不能超过50个汉字</span>',true);
		    }else{
		    	$title.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />输入正确</span>',true);
		    }
		}else{
			$title.poshytip('hide');
		}
	});
	
	//投诉建议
	var $content1 = $('#content1');
	$content1.poshytip({
		className: 'tip-yellow',
		showOn: 'focus',
		alignTo: 'target',
		alignX: 'right',
		alignY: 'center',
		offsetX: 10,
		showTimeout: 200,
		content: '<span class="msgdiv">请输入投诉或建议的内容</span>'
	});
	
	$content1.blur(function(){
		var inputContent1 = $content1.val();
		if(inputContent1.length){
		    if(inputContent1.length > 1000 ){
		    	$content1.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />投诉内容长度不能超过1000个汉字</span>',true);
		    }else{
		    	$content1.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />输入正确</span>',true);
		    }
		}else{
			$content1.poshytip('hide');
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
		var inputName = $name.val();
		if(inputName.length){
		    if(inputName.length < 2 ){
		    	$name.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />姓名至少有2个汉字组成</span>',true);
		    }else if(inputName.length <= 20){
		    	$name.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />输入正确</span>',true);
		    }else{
		    	$name.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />姓名长度不能超过20个汉字</span>',true);
		    }
		}else{
			$name.poshytip('hide');
		}
	});
	
	//登陆帐号
	var $loginid = $('#loginid');
	$loginid.poshytip({
		className: 'tip-yellow',
		showOn: 'focus',
		alignTo: 'target',
		alignX: 'right',
		alignY: 'center',
		offsetX: 10,
		showTimeout: 200,
		content: '<span class="msgdiv">登录账号由5-20个英文字母或数字组成</span>'
	});
	
	$loginid.blur(function(){ 
		var p=$loginid[0].value;
		var patrn=/^(\w){5,20}$/;
		if(p.length){
		    if(!patrn.exec(p)){
		    	$loginid.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />登录账号必须由5-20个英文字母或数字组成</span>',true);
		    }else{
			    $.ajax({
					    type: "POST",
					    url: "checkuser.action",
					    data: "username="+p,
					    success: function(msg){
						    if(msg!="1"){
						    	$loginid.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />该登录账号可以使用</span>',true);
						    }else{
						    	$loginid.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />该登录账号未被注册，请填写正确的帐号</span>',true);
							}
						}
			    });
			}
		}else{
			$loginid.poshytip('hide');
		}
	});
	
	//联系电话
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
	
	//联系地址
	var $address = $('#address');
	$address.poshytip({
		className: 'tip-yellow',
		showOn: 'focus',
		alignTo: 'target',
		alignX: 'right',
		alignY: 'center',
		offsetX: 10,
		showTimeout: 200,
		content: '<span class="msgdiv">请输入您的联系地址</span>'
	});
	
	$address.blur(function(){
		var inputAddress = $address.val();
		if(inputAddress.length){
		    if(inputAddress.length > 100 ){
		    	$address.poshytip('update','<span class="errdiv"><image src="images/error.png" width="17px" style="padding-right:5px" />联系地址长度不能超过100个汉字</span>',true);
		    }else{
		    	$address.poshytip('update','<span class="rightdiv"><image src="images/right.png" width="17px" style="padding-right:5px" />输入正确</span>',true);
		    }
		}else{
			$address.poshytip('hide');
		}
	});
	
	//验证码
	$("#ImgCode").blur(function(){
		//获取用户输入的验证码
		var inputCode = $("#ImgCode").val();
		if(inputCode.length){
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
		}else{
			$('#codepng').remove();
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


