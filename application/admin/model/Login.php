<?php
namespace app\admin\model;
use think\Model;
class Login extends Model{
	protected $table = 'tp_manager';
	
	
	/**
	 * 根据IP获取地址详情
	 *
	 * @param string $ip
	 * @return bool|mixed
	 */
	public function get_ip_info($ip = '') {
	 
		$res = file_get_contents('http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js&ip=' . $ip);
		if (empty($res)) {
			return false;
		}
	 
		$jsonMatches = array();
		preg_match('#\{.+?\}#', $res, $jsonMatches);
		if (!isset($jsonMatches[0])) {
			return false;
		}
		 
		$json = json_decode($jsonMatches[0], true);
		if (isset($json['ret']) && $json['ret'] == 1) {
			$json['ip'] = $ip;
			unset($json['ret']);
		} else {
			return false;
		}
		 
		return $json;
	}
}
?>