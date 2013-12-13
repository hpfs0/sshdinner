
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
