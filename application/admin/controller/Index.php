<?php
namespace app\admin\controller;
use app\admin\controller\Commond;
	
	class Index extends Commond{
		public function index(){
			// view('/admin/index/index.html');die;
			$where = array('username'=>session('username'));
			$items = db("manager")->where($where)->find();
			$items['last_time'] = date('Y-m-d  H:i:s', $items['last_time']);
			$_SERVER['REQUEST_TIME_FLOAT'] = date('Y-m-d  H:i:s', $_SERVER['REQUEST_TIME_FLOAT']);
			$this->assign('title','赫曼商城后台首页');
			$this->assign('items',$items);
			$this->assign('server',$_SERVER);
			return $this->fetch();
		}
	}
	
?>