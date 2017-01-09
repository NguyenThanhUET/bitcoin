<?php
class Backend_TransactionController extends Frontend_AppController {

	protected $model;
	protected $user;
	protected $auth;

	/**
	 * @author
	 * @package   Base
	 * @return    user, model
	 */
	public function init() {
		parent::init();
	}
	/**
	 * invest
	 */
	public function waitingAction(){
		$this->view->title = 'Transaction- Waiting';
		$this->_helper->layout->setLayout('backend-layout');
		$params	=	array();
		$data = $this->model->executeSql('SPC_GET_TRANS_WAITING', $params);
		if(!empty($data[0])){
			$this->view->data	=	$data[0];
		}
		$pathUpload	=	new Zend_Config_Ini ( APPLICATION_PATH . '/configs/common.ini', 'upload' );
		$this->view->noimage	=	$pathUpload->upload->noimage;
	}
	/**
	 * history
	 */
	public function confirmedAction(){
		$this->view->title = 'Transaction- Confirm';
		$this->_helper->layout->setLayout('backend-layout');
		$params	=	array();
		$data = $this->model->executeSql('SPC_GET_TRANS_CONFIRMED', $params);
		if(!empty($data[0])){
			$this->view->data	=	$data[0];
		}
		$pathUpload	=	new Zend_Config_Ini ( APPLICATION_PATH . '/configs/common.ini', 'upload' );
		$this->view->noimage	=	$pathUpload->upload->noimage;

	}
	/**
	 * history
	 */
	public function phAction(){
		$this->view->title = 'Bussiness PH';
		$this->_helper->layout->setLayout('backend-layout');
		$params	=	array();
		$data = $this->model->executeSql('SPC_GET_TRANS_SUCCESS', $params);
		if(!empty($data[0])){
			$this->view->data	=	$data[0];
		}
		$pathUpload	=	new Zend_Config_Ini ( APPLICATION_PATH . '/configs/common.ini', 'upload' );
		$this->view->noimage	=	$pathUpload->upload->noimage;

	}
	/**
	 * history
	 */
	public function policyAction(){
		$this->view->title = 'Policy';
		$this->_helper->layout->setLayout('backend-layout');
		$listfee	=	$this->model->executeSql('GET_FEE_AMOUNT_LIST',array());
		if(!empty($listfee[0])){
			$this->view->listfee	=	$listfee[0];
		}

	}
	public function waitingapprovedAction(){
		$this->_helper->layout->disablelayout();
		$this->_helper->viewRenderer->setNoRender();
		if($this->getRequest()->isPost()){
			try {
				$params 					= array_slice($this->getAllParams(), 3);
				//execute store procedure
				$data = $this->model->executeSql('SPC_TRANSACTION_APPROVED_ACT1',$params);
				//result
				if(isset($data[0][0]['success']) && 1*$data[0][0]['success']==1) {
					$this->respon['status'] = 1;
					$this->respon['error']  = 'Update Successfull';
				}else{
					$this->respon['status'] = 0;
					$this->respon['error']  = 'Update Error';
				}
			} catch (Exception $e){
				$this->respon['status'] 	= 0;
				$this->respon['error']  = 'Exception Error';
			}
			//
			$this->getHelper('json')->sendJson($this->respon);
		}
	}

	public function sendmoneyAction(){
		$this->_helper->layout->disablelayout();
		$this->_helper->viewRenderer->setNoRender();
		if($this->getRequest()->isPost()){
			try {
				$params 					= array_slice($this->getAllParams(), 3);
				$params['issuccess']		=	0;

				$dataWallet = $this->model->executeSql('SPC_GET_WALLET_BY_TRAN_ID',array($params['id']));
				if(isset($dataWallet[0][0]['wallet_address']) && $dataWallet[0][0]['wallet_address'] !=''){
					$walletAddress	=	$dataWallet[0][0]['wallet_address'];
					$sendAmount	=	1*(isset($dataWallet[0][0]['recived'])?$dataWallet[0][0]['recived']:0);
					//$this->get_total_balance();
					//send_money_to_wallet("135x8NpvX8V4xVMS2Ky6mpyiXLZSmUVbpZ", 293556, 0);
					$params['issuccess'] = $this->send_money_to_wallet($walletAddress, $sendAmount, 0);
					//execute store procedure
					$data = $this->model->executeSql('SPC_TRANSACTION_SENDMONEY_ACT1',$params);
					//result
					if(isset($data[0][0]['success']) && 1*$data[0][0]['success']==1) {
						$this->respon['status'] = 1;
						$this->respon['error']  = 'Update Successfull';
					}else{
						$this->respon['status'] = 0;
						$this->respon['error']  = 'Update Error';
					}
				}else{
					$this->respon['status'] = 0;
					$this->respon['error']  = 'Can not send money';
				}


			} catch (Exception $e){
				$this->respon['status'] 	= 0;
				$this->respon['error']  = 'Exception Error';
			}
			//
			$this->getHelper('json')->sendJson($this->respon);
		}
	}
	public function savepolicyAction(){
		$this->_helper->layout->disablelayout();
		$this->_helper->viewRenderer->setNoRender();
		if($this->getRequest()->isPost()){
			try {
				$params 					= array_slice($this->getAllParams(), 3);
				//execute store procedure
				$data = $this->model->executeSql('SPC_SAVE_POLICY_ACT1',$params);
				//result
				if(isset($data[0][0]['success']) && 1*$data[0][0]['success']==1) {
					$this->respon['status'] = 1;
					$this->respon['error']  = 'Update Successfull';
				}else{
					$this->respon['status'] = 0;
					$this->respon['error']  = 'Update Error';
				}
			} catch (Exception $e){
				$this->respon['status'] 	= 0;
				$this->respon['error']  = 'Exception Error';
			}
			//
			$this->getHelper('json')->sendJson($this->respon);
		}
	}
	public function ghdeleteAction(){
		$this->_helper->layout->disablelayout();
		$this->_helper->viewRenderer->setNoRender();
		//if($this->getRequest()->isPost()){
		try {
			$params 					= array_slice($this->getAllParams(), 3);
			//execute store procedure
			$data = $this->model->executeSql('SPC_TRANSACTION_DELETE_GH_ACT1',$params);
			//result
			if(isset($data[0][0]['success']) && 1*$data[0][0]['success']==1) {
				$this->respon['status'] = 1;
				$this->respon['error']  = 'Update Successfull';
			}else{
				$this->respon['status'] = 0;
				$this->respon['error']  = 'Update Error';
			}
		} catch (Exception $e){
			$this->respon['status'] 	= 0;
			$this->respon['error']  = 'Exception Error';
		}
		//
		$this->getHelper('json')->sendJson($this->respon);
		//}
	}
	public function phdeleteAction(){
		$this->_helper->layout->disablelayout();
		$this->_helper->viewRenderer->setNoRender();
		//if($this->getRequest()->isPost()){
		try {
			$params 					= array_slice($this->getAllParams(), 3);
			//execute store procedure
			$data = $this->model->executeSql('SPC_TRANSACTION_DELETE_PH_ACT1',$params);
			//result
			if(isset($data[0][0]['success']) && 1*$data[0][0]['success']==1) {
				$this->respon['status'] = 1;
				$this->respon['error']  = 'Update Successfull';
			}else{
				$this->respon['status'] = 0;
				$this->respon['error']  = 'Update Error';
			}
		} catch (Exception $e){
			$this->respon['status'] 	= 0;
			$this->respon['error']  = 'Exception Error';
		}
		//
		$this->getHelper('json')->sendJson($this->respon);
		//}
	}
	function get_total_balance(){
		try {
			#$ch = curl_init("http://codular.com/curl-with-php");
			$ch = curl_init("http://localhost:3000/merchant/0f24de6a-9aa6-4b81-b606-84f0e92e20c1/balance?password=Itbuiductai_317");
			$result = curl_exec($ch);
			#$result = '{"balance": 18093556}';
			$result = json_decode(str($result), true);
			if(curl_error($ch)){
				echo 'error:' . curl_error($ch);
				return -1;
			}
			curl_close($ch);
			print $result["balance"];
			return $result["balance"];
		}
		catch(Exception $e){
			print "get_total_balance(): " . $e ;
			return -1;
		}
	}

	function send_money_to_wallet($account, $amount, $db){
		try {
			//extract data from the post
			//set POST variables
			$url = 'http://127.0.0.1:3000/merchant/0f24de6a-9aa6-4b81-b606-84f0e92e20c1/payment';
			$fields = array(
				'password' => "Itbuiductai_317",
				'to' => $account,
				'amount' => $amount,
				'from' => $db
			);

			//url-ify the data for the POST
			$fields_string = '';
			foreach($fields as $key=>$value) { $fields_string .= $key.'='.$value.'&'; }
			rtrim($fields_string, '&');

			//open connection
			$ch = curl_init();

			//set the url, number of POST vars, POST data
			curl_setopt($ch,CURLOPT_URL, $url);
			curl_setopt($ch,CURLOPT_POST, count($fields));
			curl_setopt($ch,CURLOPT_POSTFIELDS, $fields_string);

			//execute post
			$result = curl_exec($ch);

			//result:
			if(curl_error($ch)){
				//echo 'error:' . curl_error($ch);
				return false;
			}
			//close connection
			curl_close($ch);

			//print $result;
			return true;

		}catch(Exception $e){
			print "send_money_to_wallet(): " . $e ;
			return false;
		}
	}

}
