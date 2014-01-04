		$(document).ready(function(){
			var movetime=500;	
			var maxw=252;
			var avgw= parseInt((1130-maxw-2)/11);	
			var index;
			var t=false; //延时执行
			var _this;
		
			//标记当前
			function cur(ele){		
				ele=$(ele)? $(ele):ele;
				ele.addClass("cur").siblings().removeClass("cur");	
			};
			
			$("#picon li:eq(0)").addClass("cur").animate({"width":maxw+"px"});
			
			$("#picon").find("li").mouseover(function(){									  
				_this=$(this);		
				index=$( "#picon li" ).index( $(this)[0] );
				var act=function (){
					_this.siblings("li").removeClass("cur");
					_this.animate({"width":maxw+"px"},{duration:movetime,easing:"easeOutQuart",complete:function(){cur(_this)}}).siblings("li").animate({"width":avgw+"px"},{duration:movetime})
				}
				t=setTimeout(act,200);			
				return false;			
			}).mouseout(function(){
				if(t){
					clearTimeout(t);
				}
			});
		
		});