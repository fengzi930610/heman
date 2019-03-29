<?php
namespace app\admin\controller;
use app\admin\controller\Commond;
	
	class Index extends Commond{
		public function index(){
			// print_r($_SERVER);die;
			if( (boolean) session('username')){
				$where = array('username'=>session('username'));
				$items = db("manager")->where($where)->find();
				$items['last_time'] = date('Y-m-d  H:i:s', $items['last_time']);
				// print_r($items);die;
			}
			// $items = db->
			$_SERVER['REQUEST_TIME_FLOAT'] = date('Y-m-d  H:i:s', $_SERVER['REQUEST_TIME_FLOAT']);
			$this->assign('title','赫曼商城后台首页');
			$this->assign('items',$items);
			$this->assign('server',$_SERVER);
			return $this->fetch();
		}
	}
	
?>