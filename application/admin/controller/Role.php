<?php
namespace app\admin\controller;

use app\admin\controller\Commond;
use think\Loader;
use think\Db;

class Role extends Commond{
	public function index(){
		// 查询role数据表的所有数据  并且每页显示10条数据
		$list =  Db::name('role')->order('Id desc')->paginate(10);
// 		foreach($list as $k=>$v){
// 			$str = explode(',',$v['permission']);
// 			$result = Db::name('level')->field('name')->whereIn('Id',$str)->select();
// 			$levelList = array();
// 			foreach($result as $kk=>$vv){
// 				$name = $vv['name'];
// 				$levelList[] = $name;
// 			}
// 			
// 		}
		// print_r($list);die;
		$this->assign('items', $list);
		$this->assign('title','角色列表');
		return $this->fetch();
	}
	
	public function add(){
		
//		print_r($levelList);die;
		if(request()->isPost()){
			$data = input('post.');
//			print_r($data);die;
			$validate = Loader::validate('Role');
			if(!$validate->check($data)){
				$this->error($validate->getError());die;
			}
			$data['permission'] = implode(',', $data['Id']);
			unset($data['Id']);
//			print_r($data);die;
			$result = Db::name('role')->insert($data);
//			print_r($result);die;
			if($result){
				$this->success('添加成功','Role/roleList');die;
			}else{
				$this->error('添加失败');die;
			}
			
		}else{
			$levelList = Db::name('level')->select();
			$this->assign('levelList',$levelList);
	//		echo "string";
			$this->assign('title','角色添加');
			return $this->fetch();
		}
		
	}
	public function edit(){
		if(request()->isAjax()){
			$refer = $_POST['data'];
			
			$result = Db::name('role')->update($data);
//			print_r($result);die;
			if($result==1){
				$this->success('修改成功','Brand/index');die;
			}else if($result==0){
				$this->success('数据未修改','Brand/index');die;
			}else{
				$this->error('修改失败');die;
			}
			
		}
		$Id = input('Id');
		if(empty($Id) || $Id != (int) $Id ){
			$this->error('请输入正确的url');
		}
		$detail = Db::name('role')->where("Id=$Id")->find();
		$this->assign('level',$this->level());
		$this->assign('detail',$detail);
		$this->assign('title','角色编辑');
		return $this->fetch();
	}
	public function amputate(){
		$Id = input('Id');
//		print_r($Id);die;
		$result = Db::name('role')->where("Id=$Id")->delete();
		if($result){
			$this->success('删除成功','Brand/roleList');die;
		}else{
			$this->error('删除失败');die;
		}
	}
}
?>