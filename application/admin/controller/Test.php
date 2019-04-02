<?php 
namespace app\admin\controller;
use app\admin\controller\Commond;
class Test extends Commond{
	function index(){
		if(request()->isPost()){
			$file = request()->file('txt');
			// 移动到框架应用根目录/public/uploads/ 目录下
				$info = $file->move('./public/uploads');
				// print_r('./public/uploads/'.$info->getSaveName());die;
				if($info){
					$text = fopen('./public/uploads/'.$info->getSaveName(),"r");
					//循环读取文件
					$str = '';
					while(!feof($text))
					{
						$line = trim(fgets($text));
						$str .= $line."{*}";
					}
					fclose($text);
					$items = explode("{*}",$str);
					foreach($items as $k=>$v){
						if(!$v) unset( $items[$k] );
					}
					$user_id = 1;
					$data = [];
					foreach($items as $k=>$v){
						$data[]= array('user_id'=>$user_id,'url'=>$v);
					}
					$result = db('test')->insertAll($data);
					print_r($data);die;
				}else{
					// 上传失败获取错误信息
					echo $file->getError();
				}
		}

		return $this->fetch();
		
	}
}
?>