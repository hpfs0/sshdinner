		$(document).ready(function(){
			var movetime=500;	
			var maxw=230;
			var avgw= parseInt((1030-maxw-2)/11);	
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
					_this.animate({"width":maxw+"px"},{duration:movetime,easing:"easeOutQuart",complete:function(){cur(_this);}}).siblings("li").animate({"width":avgw+"px"},{duration:movetime});
				};
				t=setTimeout(act,30);			
				return false;			
			}).mouseout(function(){
				if(t){
					clearTimeout(t);
				}
			});
		
		});
		
		// 自动获取当前日期，并进行标注底色
		$(document).ready(function(){
			var now = new Date();
			var arrayObj = new Array([7]);
			//获取当前日(1-31)
			var day = now.getDate();
			if(day<10){
				day = "0" + day;
			}
			//获取当前星期X(0-6,0代表星期天)
			var week = now.getDay();
			switch (week) {
			case 0:
				arrayObj[0]=getDay(-6);
				arrayObj[1]=getDay(-5);
				arrayObj[2]=getDay(-4);
				arrayObj[3]=getDay(-3);
				arrayObj[4]=getDay(-2);
				arrayObj[5]=getDay(-1);
				arrayObj[6]=getDay(0);
				break;
            case 1:
            	arrayObj[0]=getDay(0);
				arrayObj[1]=getDay(1);
				arrayObj[2]=getDay(2);
				arrayObj[3]=getDay(3);
				arrayObj[4]=getDay(4);
				arrayObj[5]=getDay(5);
				arrayObj[6]=getDay(6);
				break;
            case 2:
            	arrayObj[0]=getDay(-1);
				arrayObj[1]=getDay(0);
				arrayObj[2]=getDay(1);
				arrayObj[3]=getDay(2);
				arrayObj[4]=getDay(3);
				arrayObj[5]=getDay(4);
				arrayObj[6]=getDay(5);
				break;
            case 3:
            	arrayObj[0]=getDay(-2);
				arrayObj[1]=getDay(-1);
				arrayObj[2]=getDay(0);
				arrayObj[3]=getDay(1);
				arrayObj[4]=getDay(2);
				arrayObj[5]=getDay(3);
				arrayObj[6]=getDay(4);
				break;
            case 4:
            	arrayObj[0]=getDay(-3);
				arrayObj[1]=getDay(-2);
				arrayObj[2]=getDay(-1);
				arrayObj[3]=getDay(0);
				arrayObj[4]=getDay(1);
				arrayObj[5]=getDay(2);
				arrayObj[6]=getDay(3);
				break;
            case 5:
            	arrayObj[0]=getDay(-4);
				arrayObj[1]=getDay(-3);
				arrayObj[2]=getDay(-2);
				arrayObj[3]=getDay(-1);
				arrayObj[4]=getDay(0);
				arrayObj[5]=getDay(1);
				arrayObj[6]=getDay(2);
				break;
            case 6:
            	arrayObj[0]=getDay(-5);
				arrayObj[1]=getDay(-4);
				arrayObj[2]=getDay(-3);
				arrayObj[3]=getDay(-2);
				arrayObj[4]=getDay(-1);
				arrayObj[5]=getDay(0);
				arrayObj[6]=getDay(1);
				break;
			}
			
			var $selectors = $("[class='puriqiclass']");
			
			for(var i=0;i<$selectors.size();i++){
				if(day == arrayObj[i]){
					$selectors[i].innerHTML = "<span style='background:#f99d20;color:#ffffff;'>" + arrayObj[i] + "</span>";
				}else{
					$selectors[i].innerHTML = arrayObj[i];
				}
			}
		});
		
		// 获取指定一天的日期
		function getDay(a){
			var today=new Date();   
		    var yesterday_milliseconds=today.getTime() + a*1000*60*60*24;   
		    var yesterday=new Date();   
		    yesterday.setTime(yesterday_milliseconds);   
		    
		    var strDay=yesterday.getDate();
		    if(strDay<10){
		    	strDay = "0" + strDay;
		    }

		    return strDay;
		}