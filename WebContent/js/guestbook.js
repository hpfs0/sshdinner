//企业留言表单提交
$(document).ready(function() {

	// 标题
	var $title = $('#title');
	$title.poshytip({
		className : "tip-yellow",
		showOn : 'focus',
		alignTo : 'target',
		alignX : 'right',
		alignY : 'center',
		offsetX : 10,
		showTimeout : 200,
		content : '<span class="msgdiv">必填项</span>'
	});

	$title.blur(function() {
		$title.poshytip('hide');
	});

	// 用户名
	var $name = $('#name');
	$name.poshytip({
		className : "tip-yellow",
		showOn : 'focus',
		alignTo : 'target',
		alignX : 'right',
		alignY : 'center',
		offsetX : 10,
		showTimeout : 200,
		content : '<span class="msgdiv">必填项</span>'
	});
	
	$name.blur(function(){
		$name.poshytip('hide');
	});
	
	// 留言内容
	var $body = $('#body');
	$body.poshytip({
		className : "tip-yellow",
		showOn : 'focus',
		alignTo : 'target',
		alignX : 'right',
		alignY : 'center',
		offsetX : 10,
		showTimeout : 200,
		content : '<span class="msgdiv">必填项</span>'
	});
	
	$body.blur(function(){
		$body.poshytip('hide');
	});

	$("#Submit").click(function(){
		var title=$("#title").val();
		var name=$("#name").val();
		var body=$("#body").val();
		if(title==""){
			
		}else if(name==""){
		
		}else if(body==""){
			
		}else{
			$title.poshytip('hide');
			$name.poshytip('hide');
			$body.poshytip('hide');
			// 调用NoteAction
			$.ajax({
				type:"POST",
				url:"note.action",
				data:"title="+title+"&name="+name+"&body="+body,
				success:function(msg){
					if(msg=="OK"){
						
					}else{
						
					}
				}
			});
		}
	});
	
});