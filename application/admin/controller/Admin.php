<?php
namespace app\admin\controller;

//use think\Config;
use think\Controller;
use think\Request;
use think\Db;
use app\admin\model\Login;

class Admin extends Controller{
	
	public function login(){
		if(Request::instance()->isAjax()){
			$info = ['error'=>false,'msg'=>''];
			if(!captcha_check(input('post.code'))){
				$info['msg'] = '验证码有误';
				return $info;
			}
			$username = input('post.username');
			$password = input('post.password');
			$result = Db::name('manager')->where("username='$username'")->find();
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
			$result['login_count'] = $result['login_count']+1;
			$admin = new Login();
			// $result['last_entry'] = $admin->get_ip_info($_SERVER['SERVER_ADDR']);
			$admin->save(['last_ip'  => $_SERVER['REMOTE_ADDR'],'last_time' => time(),'login_count'=>$result['login_count']],['Id' => $result['Id']]);
			
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