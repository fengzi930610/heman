<?php
namespace app\admin\controller;

//use think\Config;
use think\Controller;
use think\Request;
use think\Db;
use app\admin\model\Login;

class Admin extends Controller{
	
	public function login(){
		if(request()->isAjax()){
			$info = ['error'=>false,'msg'=>''];
			// 验证码处理
			if(!captcha_check(input('post.code'))){
				$info['msg'] = '验证码有误';
				return $info;
			}
			//账号密码处理
			$username = input('post.username');
			$password = input('post.password');
			$where = array('username'=>$username);
			$result = db('manager')->where($where)->find();
			if(!$result){
				$info['msg'] = '用户名不存在';
				return $info;
			}
			if($result['password'] != $password){
				$info['msg'] = '账号或密码错误';
				return $info;
			}
			//数据处理
			session('username',$username);
			session('Id',$result['Id']);
			$result['login_count'] = $result['login_count']+1;
			$result['last_time'] = time();
			$admin = new Login();
			// $result['last_entry'] = $admin->get_ip_info($_SERVER['SERVER_ADDR']);
			$admin->save($result,['Id' => $result['Id']]);
			
			//记住密码处理
			$remember = input('post.remember');
			if($remember == 'true'){
				cookie('username',$result['username']);
				cookie('password',$result['password']);
				cookie('remember',$remember);
			}else{
				cookie('username',null);
				cookie('password',null);
				cookie('remember',$remember);
			}
			
			$info = ['error'=>true,'msg'=>'登陆成功'];
			return $info;
		}
		return $this->fetch();
		
//		echo Config();
	}
	
	public function logout(){
		session(null);
		$this->success('退出成功','admin/login');
	}
	
	
	
}





?>