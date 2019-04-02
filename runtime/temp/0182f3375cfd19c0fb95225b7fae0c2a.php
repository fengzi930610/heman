<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:73:"C:\phpStudy\PHPTutorial\WWW\heman/application/admin\view\index\index.html";i:1554191137;s:68:"C:\phpStudy\PHPTutorial\WWW\heman/application/admin\view\layout.html";i:1554109666;}*/ ?>
<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<link rel="Bookmark" href="favicon.ico" >
		<link rel="Shortcut Icon" href="favicon.ico" />
		<link rel="stylesheet" type="text/css" href="__PUBLIC__static/h-ui/css/H-ui.min.css" />
		<link rel="stylesheet" type="text/css" href="__PUBLIC__static/h-ui.admin/css/H-ui.admin.css" />
		<link rel="stylesheet" type="text/css" href="__PUBLIC__lib/Hui-iconfont/1.0.8/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="__PUBLIC__static/h-ui.admin/skin/default/skin.css" id="skin" />
		<link rel="stylesheet" type="text/css" href="__PUBLIC__static/h-ui.admin/css/style.css" />
		<title><?php echo $title; ?></title>
	</head>
<body>
<!--_header 作为公共模版分离出去-->
<header class="navbar-wrapper">
	<div class="navbar navbar-fixed-top">
		<div class="container-fluid cl"> <a class="logo navbar-logo f-l mr-10 hidden-xs" href="/aboutHui.shtml">欢迎来到后台系统</a> <a class="logo navbar-logo-m f-l mr-10 visible-xs" href="/aboutHui.shtml">H-ui</a>
			<a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
			
			<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
				<ul class="cl">
					<li>超级管理员</li>
					<li class="dropDown dropDown_hover"> <a href="#" class="dropDown_A"><?php echo \think\Session::get('username'); ?><i class="Hui-iconfont">&#xe6d5;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="javascript:;" onClick="myselfinfo()">个人信息</a></li>
							<li><a href="#">切换账户</a></li>
							<li><a href="<?php echo url('admin/Admin/logout'); ?>">退出</a></li>
						</ul>
					</li>
					<li id="Hui-skin" class="dropDown right dropDown_hover"> <a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
							<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
							<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
							<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
							<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
							<li><a href="javascript:;" data-val="orange" title="橙色">橙色</a></li>
						</ul>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</header>
<!--/_header 作为公共模版分离出去-->

<!--_menu 作为公共模版分离出去-->
<aside class="Hui-aside">
	<div class="menu_dropdown bk_2">
		<dl id="menu-admin">
			<dt><i class="Hui-iconfont">&#xe62d;</i> 管理员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="<?php echo url('admin/role/index'); ?>" title="角色管理">角色管理</a></li>
					<li><a href="admin-permission.html" title="权限管理">权限管理</a></li>
					<li><a href="admin-list.html" title="管理员列表">管理员列表</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-brand">
			<dt><i class="Hui-iconfont">&#xe620;</i> 品牌管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="<?php echo url('admin/brand/index'); ?>" title="品牌列表">品牌列表</a></li>
					<li><a href="<?php echo url('admin/brand/brandAdd'); ?>" title="品牌添加">品牌添加</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-category">
			<dt><i class="Hui-iconfont">&#xe622;</i> 分类管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="<?php echo url('admin/category/categoryList'); ?>" title="分类列表">分类列表</a></li>
					<li><a href="<?php echo url('admin/category/categoryAdd'); ?>" title="分类添加">分类添加</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-level">
			<dt><i class="Hui-iconfont">&#xe60d;</i> 权限管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="<?php echo url('admin/level/levelList'); ?>" title="权限列表">权限列表</a></li>
					<li><a href="<?php echo url('admin/level/levelAdd'); ?>" title="权限添加">权限添加</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-level">
			<dt><i class="Hui-iconfont">&#xe60d;</i> 商品管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="<?php echo url('admin/product/productList'); ?>" title="权限列表">商品列表</a></li>
					<li><a href="<?php echo url('admin/product/productAdd'); ?>" title="权限添加">商品添加</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-level">
			<dt><i class="Hui-iconfont">&#xe60d;</i> 角色管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="<?php echo url('admin/role/roleList'); ?>" title="权限列表">角色列表</a></li>
					<li><a href="<?php echo url('admin/role/roleAdd'); ?>" title="权限添加">角色添加</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-nav">
			<dt><i class="Hui-iconfont">&#xe62d;</i> 导航管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="<?php echo url('admin/Nav/navList'); ?>" title="导航列表">导航列表</a></li>
					<li><a href="<?php echo url('admin/Nav/navAdd'); ?>" title="导航添加">导航添加</a></li>
				</ul>
			</dd>
		</dl>										
		<dl id="menu-system">
			<dt><i class="Hui-iconfont">&#xe62e;</i> 系统管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="system-base.html" title="系统设置">系统设置</a></li>
					<li><a href="system-category.html" title="栏目管理">栏目管理</a></li>
					<li><a href="system-data.html" title="数据字典">数据字典</a></li>
					<li><a href="system-shielding.html" title="屏蔽词">屏蔽词</a></li>
					<li><a href="system-log.html" title="系统日志">系统日志</a></li>
				</ul>
			</dd>
		</dl>
	</div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<!--/_menu 作为公共模版分离出去-->
<section class="Hui-article-box" style="height: auto;">
	<div class="Hui-article">
<div class="Hui-article">
	<!-- 页面位置 -->
	<nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="/" class="maincolor">首页</a> 
		<span class="c-999 en">&gt;</span>
		<span class="c-666">我的桌面</span> 
		<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<!-- 网站相关信息 -->
	<article class="cl pd-20">
		<p class="f-20 text-success">欢迎登录赫曼商城后台</p>
		<p>登录次数：<?php echo $items['login_count']; ?> </p>
		<p>上次登录IP：<?php echo $items['last_ip']; ?> &nbsp; 上次登录时间：<?php echo $items['last_time']; ?></p>
		<table class="table table-border table-bordered table-bg">
			<thead>
				<tr>
					<th colspan="7" scope="col">信息统计</th>
				</tr>
				<tr class="text-c">
					<th>统计</th>
					<th>资讯库</th>
					<th>图片库</th>
					<th>产品库</th>
					<th>用户</th>
					<th>管理员</th>
				</tr>
			</thead>
			<tbody>
				<tr class="text-c">
					<td>总数</td>
					<td>92</td>
					<td>9</td>
					<td>0</td>
					<td>8</td>
					<td>20</td>
				</tr>
				<tr class="text-c">
					<td>今日</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
				</tr>
				<tr class="text-c">
					<td>昨日</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
				</tr>
				<tr class="text-c">
					<td>本周</td>
					<td>2</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
				</tr>
				<tr class="text-c">
					<td>本月</td>
					<td>2</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
				</tr>
			</tbody>
		</table>
		<table class="table table-border table-bordered table-bg mt-20">
			<thead>
				<tr>
					<th colspan="2" scope="col">服务器信息</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th width="30%">服务器计算机名</th>
					<td><span id="lbServerName"></span></td>
				</tr>
				<tr>
					<td>服务器IP地址</td>
					<td><?php echo $server['SERVER_ADDR']; ?></td>
				</tr>
				<tr>
					<td>服务器域名</td>
					<td><?php echo $server['SERVER_NAME']; ?></td>
				</tr>
				<tr>
					<td>服务器端口 </td>
					<td><?php echo $server['SERVER_PORT']; ?></td>
				</tr>
				<tr>
					<td>Web服务器版本 </td>
					<td><?php echo $server['SERVER_SOFTWARE']; ?></td>
				</tr>
				<tr>
					<td>服务器操作系统 </td>
					<td><?php echo $server['SERVER_SIGNATURE']; ?></td>
				</tr>
				<tr>
					<td>系统所在文件夹 </td>
					<td><?php echo $server['SystemRoot']; ?></td>
				</tr>
				<tr>
					<td>服务器脚本超时时间 </td>
					<td><?php echo $server['PHP_FCGI_MAX_REQUESTS']; ?></td>
				</tr>
				<tr>
					<td>服务器的语言种类 </td>
					<td><?php echo $server['HTTP_ACCEPT_LANGUAGE']; ?></td>
				</tr>
				<tr>
					<td>.NET Framework 版本 </td>
					<td>2.050727.3655</td>
				</tr>
				<tr>
					<td>服务器当前时间 </td>
					<td>{date('Y-m-d  H:i:s',$server.REQUEST_TIME_FLOAT)}</td>
				</tr>
				<tr>
					<td>服务器IE版本 </td>
					<td>6.0000</td>
				</tr>
				<tr>
					<td>服务器上次启动到现在已运行 </td>
					<td>7210分钟</td>
				</tr>
				<tr>
					<td>逻辑驱动器 </td>
					<td>C:\D:\</td>
				</tr>
				<tr>
					<td>CPU 总数 </td>
					<td>4</td>
				</tr>
				<tr>
					<td>CPU 类型 </td>
					<td>x86 Family 6 Model 42 Stepping 1, GenuineIntel</td>
				</tr>
				<tr>
					<td>虚拟内存 </td>
					<td>52480M</td>
				</tr>
				<tr>
					<td>当前程序占用内存 </td>
					<td>3.29M</td>
				</tr>
				<tr>
					<td>Asp.net所占内存 </td>
					<td>51.46M</td>
				</tr>
				<tr>
					<td>当前Session数量 </td>
					<td>8</td>
				</tr>
				<tr>
					<td>当前SessionID </td>
					<td>gznhpwmp34004345jz2q3l45</td>
				</tr>
				<tr>
					<td>当前系统用户名 </td>
					<td>NETWORK SERVICE</td>
				</tr>
			</tbody>
		</table>
	</article>
</div>



	</div>
</section>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="__PUBLIC__lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="__PUBLIC__lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="__PUBLIC__static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="__PUBLIC__static/h-ui.admin/js/H-ui.admin.page.js"></script>
<!--<script type="text/javascript" src="__PUBLIC__js/jquery-3.1.1.js"></script>-->
<!--<script type="text/javascript" src="__PUBLIC__js/jquery-3.1.1.min.js"></script>-->
<script type="text/javascript" src="__PUBLIC__lib/webuploader/0.1.5/webuploader.min.js"></script>
<!--/请在上方写此页面业务相关的脚本-->

</body>
</html>
<!--富文本编辑器-->
<script type="text/javascript">
$(function(){
	$list = $("#fileList"),
	$btn = $("#btn-star"),
	state = "pending",
	uploader;

	var uploader = WebUploader.create({
		auto: true,
		swf: 'lib/webuploader/0.1.5/Uploader.swf',
	
		// 文件接收服务端。
		server: 'fileupload.php',
	
		// 选择文件的按钮。可选。
		// 内部根据当前运行是创建，可能是input元素，也可能是flash.
		pick: '#filePicker',
	
		// 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
		resize: false,
		// 只允许选择图片文件。
		accept: {
			title: 'Images',
			extensions: 'gif,jpg,jpeg,bmp,png',
			mimeTypes: 'image/*'
		}
	});
	uploader.on( 'fileQueued', function( file ) {
		var $li = $(
			'<div id="' + file.id + '" class="item">' +
				'<div class="pic-box"><img></div>'+
				'<div class="info">' + file.name + '</div>' +
				'<p class="state">等待上传...</p>'+
			'</div>'
		),
		$img = $li.find('img');
		$list.append( $li );
	
		// 创建缩略图
		// 如果为非图片文件，可以不用调用此方法。
		// thumbnailWidth x thumbnailHeight 为 100 x 100
		uploader.makeThumb( file, function( error, src ) {
			if ( error ) {
				$img.replaceWith('<span>不能预览</span>');
				return;
			}
	
			$img.attr( 'src', src );
		}, thumbnailWidth, thumbnailHeight );
	});
	// 文件上传过程中创建进度条实时显示。
	uploader.on( 'uploadProgress', function( file, percentage ) {
		var $li = $( '#'+file.id ),
			$percent = $li.find('.progress-box .sr-only');
	
		// 避免重复创建
		if ( !$percent.length ) {
			$percent = $('<div class="progress-box"><span class="progress-bar radius"><span class="sr-only" style="width:0%"></span></span></div>').appendTo( $li ).find('.sr-only');
		}
		$li.find(".state").text("上传中");
		$percent.css( 'width', percentage * 100 + '%' );
	});
	
	// 文件上传成功，给item添加成功class, 用样式标记上传成功。
	uploader.on( 'uploadSuccess', function( file ) {
		$( '#'+file.id ).addClass('upload-state-success').find(".state").text("已上传");
	});
	
	// 文件上传失败，显示上传出错。
	uploader.on( 'uploadError', function( file ) {
		$( '#'+file.id ).addClass('upload-state-error').find(".state").text("上传出错");
	});
	
	// 完成上传完了，成功或者失败，先删除进度条。
	uploader.on( 'uploadComplete', function( file ) {
		$( '#'+file.id ).find('.progress-box').fadeOut();
	});
	uploader.on('all', function (type) {
        if (type === 'startUpload') {
            state = 'uploading';
        } else if (type === 'stopUpload') {
            state = 'paused';
        } else if (type === 'uploadFinished') {
            state = 'done';
        }

        if (state === 'uploading') {
            $btn.text('暂停上传');
        } else {
            $btn.text('开始上传');
        }
    });

    $btn.on('click', function () {
        if (state === 'uploading') {
            uploader.stop();
        } else {
            uploader.upload();
        }
    });
	
	var ue = UE.getEditor('editor');
	
})
</script>


