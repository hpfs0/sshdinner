function alertJbox(showinfo){
	$.jBox.error("<font color='red'><b>" + showinfo + "</b><font>", "警告",
			{
				draggable : false,
				top : '40%',
				buttons: {}
			});
}

//全站反馈表单提交
$(document).ready(function(){
	
	$("[name='Submit']").click(function(){
		var title = $('#title').val();
		var content = $('#content1').val();
		var name = $('#name').val();
		var sex = $('#sex').val();
		var loginid = $('#loginid').val();
		var tel = $('#tel').val();
		var address = $('#address').val();
		
		var errorMessage = "请输入";
		var endMessage = "!";
		var titleMessage = "标题";
		var contentMessage = "您的投诉建议";
		var nameMessage = "您的姓名";
		var loginidMessage = "您的登陆帐号";
		var telMessage = "您的联系电话";
		var addressMessage = "您的联系地址";
		
		var showinfo ="";
		
		//必须项目check
		if(title == ""){
			showinfo = errorMessage + titleMessage + endMessage;
			$.jBox.error("<font color='red'><b>" + showinfo + "</b><font>", "警告",
					{
						draggable : false,
						top : '40%',
						buttons: {}
					});
		}else if (content == ""){
			showinfo = errorMessage + contentMessage + endMessage;
			alertJbox(showinfo);
		}else if(name == ""){
			showinfo = errorMessage + nameMessage + endMessage;
			alertJbox(showinfo);
		}else if(loginid == ""){
			showinfo = errorMessage + loginidMessage + endMessage;
			alertJbox(showinfo);
		}else if(tel == ""){
			showinfo = errorMessage + telMessage + endMessage;
			alertJbox(showinfo);
		}else if(address == ""){
			showinfo = errorMessage + addressMessage + endMessage;
			alertJbox(showinfo);
		}else{
				$.ajax({
					type: "POST",
					url: "advise.action",
					data: "title=" + title + "&content=" + content
					+ "&name=" + name + "&sex=" + sex + "&loginid=" + loginid
					+ "&tel=" + tel + "&address=" + address,
					success: function(msg){
						if(msg=="OK"){
							$('div#notice').hide();
							$.jBox.info("<font color='blue'><b>" + "您的留言已提交，我们会尽快和您联系!3秒钟后自动关闭!" + "</b><font>", "警告",
									{
										draggable : false,
										top : '40%',
										timeout : 3000,
										buttons: {}
									});
						}else{
							$('div#notice').hide();
							alert(msg);
						}
					}
				});
		}
	});
});


