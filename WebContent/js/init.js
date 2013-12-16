
  //记住用户名和密码
  function GetCookieVal(offset)
  //get cookie value
  {
   var endstr = document.cookie.indexOf (";", offset);
   if (endstr == -1)
   endstr = document.cookie.length;
   return unescape(document.cookie.substring(offset, endstr));
  }
  function SetCookie(name, value) {
   var today = new Date();
   var expires = new Date();
   expires.setTime(today.getTime() + 1000*60*60*24*365);
   document.cookie = name + "=" + escape(value) + "; expires=" + expires.toGMTString();
  }
  function DelCookie(name)
  //delete Cookie
  {
   var exp = new Date();
   exp.setTime (exp.getTime() - 1);
   var cval = GetCookie (name);
   document.cookie = name + "=" + cval + "; expires="+ exp.toGMTString();
  }
  function GetCookie(name)
  //get cookie initialize value
  {
   var arg = name + "=";
   var alen = arg.length;
   var clen = document.cookie.length;
   var i = 0;
   while (i < clen)
   {
   var j = i + alen;
   if (document.cookie.substring(i, j) == arg)
   return GetCookieVal (j);
   i = document.cookie.indexOf(" ", i) + 1;
   if (i == 0) break;
   }
   return null;
  }
  
  $(document).ready(function(){
	  $('#login').click(function showcookie(){    
	   if(document.getElementById("isRememberMsg").checked){
	    SetCookie("memberLoginId",$muser[0].value); // 把页面上的登陆ID存入cookie中
	    SetCookie("memberLoginPw",$mpass[0].value); // 把页面上的登陆密码存入cookie中
	    SetCookie("isRememberMsg","1");
	   }else{
	    DelCookie("memberLoginId");
	    DelCookie("memberLoginPw");
	    SetCookie("isRememberMsg","0");
	   }
	
	  });
  });
 
	  
  window.onload= initValue;
	function initValue(){
	   var isRMsg;
	   var memberLoginId;
	   var memberLoginPw;
	   isRMsg = GetCookie("isRememberMsg");
	   alert("isRMsg= " + isRMsg);
	   if(isRMsg==1){
		   memberLoginId = GetCookie("memberLoginId");
		   memberLoginPw = GetCookie("memberLoginPw");
		   document.all.isRememberMsg.checked = true;
		   memberLoginIdInput = top.document.getElementById("muser");
		   memberLoginPwInput = top.document.getElementById("mpass");
		   memberLoginIdInput.value = memberLoginId;
		   memberLoginPwInput.value = memberLoginPw;
	   }
	  };



  
