
//浏览器关闭的时候，更新用户登陆状态为未登录
window.onunload = function unLoad( e ) {
	if (window.event) {
		// IE浏览器关闭时
        e = window.event;  
        if (e.clientY < 0 || e.ctrlKey) {
        	$.ajax({
        		type: "POST",
				url: "logout.action"
        	});
        } else if (window.event) {
        	if (document.documentElement.scrollWidth == 0) { 
            	$.ajax({
            		type: "POST",
    				url: "logout.action"
            	});
        	}
        }else { 
        	if (document.documentElement.scrollWidth == 0) {
        		$.ajax({
            		type: "POST",
    				url: "logout.action"
            	});
        	}
        }
	}
};

// 当用户使用浏览器不是IE时，提醒用户正常退出系统
// TODO 待改善
//if ((navigator.userAgent.indexOf('MSIE') >= 0) 
//		&& (navigator.userAgent.indexOf('Opera') < 0))
//{
//	//alert("您使用的是IE系统");
//}else{
//	var t=setTimeout("alert('您使用的不是IE浏览器，请注意正常退出系统，以方便您下次能正常登陆,谢谢!')",3000);
//	
//};


  
