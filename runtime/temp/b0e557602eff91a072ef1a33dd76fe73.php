<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:73:"C:\phpStudy\PHPTutorial\WWW\heman/application/admin\view\admin\login.html";i:1531221042;}*/ ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="__PUBLIC__bootstrap/css/bootstrap.min.css">
     <!--<link rel="stylesheet" type="text/css" href="__PUBLIC__public/css/base.css">-->  
    <link rel="stylesheet" type="text/css" href="__PUBLIC__css/b_login.css">
	<title>后台登录页面</title>
</head>
<body>
<div class="login">
	<div class="loginmain">
		<h2>登录管理系统</h2>
			<form action="" class="form-horizontal" method="post">
		            <!--让表单在一行中显示form-horizontal--> 
		          <div class="form-group">
		              <div class="col-lg-4">
		                <input type="text" name="username" id="username" class="form-control" placeholder="请输入用户名">
		              </div>              
		          </div>
				  <div class="form-group"></div>
				  <!--<div class="form-group"></div>-->

		          <div class="form-group">
		              <div class="col-lg-4">
		                <input type="password" name="password" id="password" class="form-control" placeholder="请输入密码">
		              </div>              
		          </div>
                   <div class="form-group">
                   		<div class="col-lg-4">
		                	<input type="text" name="code" class="form-control" placeholder="请输入验证码" style="width: 150px; display: inline-block;">
		                	<img src="<?php echo captcha_src(); ?>" alt="验证码" style="margin-left: 20px;" id="code" />
		              </div>
                   </div>
                   
                   <div class="form-group"></div> 
		          <div class="form-group">
		            <div class="col-lg-11 col-lg-offset-1" style="margin-left: 40px;">              
		                <span class="checkbox " style="display: inline-block;">
		                    <label><input type="checkbox" name="check" class="checkbox-inline">记住密码</label> 
		                </span>
		                <input type="submit" value="登录" id="btn" class="btn btn-danger btn-lg" style="margin-left: 100px;">   
		                <!--<input type="button" />-->
		            </div>
		          </div>
		    </form>
	</div>
	<div class="rightpic">
		<div id="container">
			 <img src="__PUBLIC__picture/1.jpg" alt="" width="500px" height="330px"> 
		</div>
	</div>
</div>

<script src="__PUBLIC__public/js/jquery-3.1.1.min.js"></script>
<script src="__PUBLIC__bootstrap/js/bootstrap.min.js"></script>
<script src="__PUBLIC__public/js/delaunay.js"></script>
<script src="__PUBLIC__public/js/TweenMax.js"></script>
<script src="__PUBLIC__js/effect.js"></script>

<script src="__PUBLIC__js/b_login.js"></script>	
</body>
</html>
<script>
	$(function(){
		
		$('#btn').click(function(){
			var username = $('input[name="username"]').val()
			var password = $('input[name="password"]').val()
			var code = $('input[name="code"]').val()
			
			if(code=='' || code==null || code==undefined){
				alert('验证码有误')
				$('#code').attr('src',"<?php echo captcha_src(); ?>"+'?'+Math.random())
				return false;
			}
			if(username=='' || username==null || username==undefined){
				alert('用户名不能为空')
				$('#code').attr('src',"<?php echo captcha_src(); ?>"+'?'+Math.random())
				return false;
			}
			if(password=='' || password==null || password==undefined){
				alert('账号或密码有误')
				$('#code').attr('src',"<?php echo captcha_src(); ?>"+'?'+Math.random())
				return false;
			}
			$.post("<?php echo url('Admin/login'); ?>",{code:code,username:username,password:password},function(data){
				if(data.error){
					alert(data.msg)
					location="<?php echo url('admin/index/index'); ?>"
						
				}else{
					alert(data.msg)
					$('#code').attr('src',"<?php echo captcha_src(); ?>"+'?'+Math.random())
				}
			},'json');
//			$.ajax({
//				type:"post",
//				url:"<?php echo url('Admin/login'); ?>",
//				async:true,
//				data:{
//					code:code,
//					username:username,
//					password:password,
//				},
//				success:function(data){
////					alert(data)
//					if(data.error){
//						alert(data.error)
//						
//					}else{
//						alert(data.error)
//					}
//				}
//				
//			});
			return false;
		})
		
//		$('#code').click(function(){
////			alert(123)
////			return false;
//			$(this).attr('src',"<?php echo captcha_src(); ?>"+'?'+Math.random())
//			
//			
//		})
		
	})
</script>