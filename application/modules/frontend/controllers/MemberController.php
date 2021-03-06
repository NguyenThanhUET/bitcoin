<?php
class Frontend_MemberController extends Frontend_AppController {

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
	 * index home
	 */
	public function indexAction(){
		$this->view->title = 'Profile';
		$this->_helper->layout->setLayout('layout');
		$params	=	array(
			$this->user['ID']
		);
		$data = $this->model->executeSql('SPC_GET_DATA_INFO', $params);
		if(!empty($data[0][0])){
			$this->view->data	=	$data[0][0];
		}
		$listfee	=	$this->model->executeSql('GET_FEE_AMOUNT_LIST', array());
		if(!empty($listfee[0])){
			$this->view->listfee	=	$listfee[0];
		}
		if($this->getRequest()->isPost()){
			$txt	=	'$2a$10$1qAz2wSx3eDc4rFv5tGb5t';
			$params	=	array();
			$oldPassword 				=	$this->_request->getParam('pass','');
			$params['username']			=	$this->user['UserName'];
			$params['newpassword'] 		=	$this->_request->getParam('new-password','');
			$params['newpassword']		=	crypt($params['newpassword'], $txt);
			if ($this->user['Password'] == crypt($oldPassword,$txt)){
				$data = $this->model->executeSql('SPC_CHANGE_PASSWORD_CUS', $params);
				if (isset($data[0][0]['success']) && 1*$data[0][0]['success'] ==1){
					$this->view->successMessage	=	'Change password successful';
				}else{
					$this->view->errorMessage	=	'Can not change password, please contact to administrator';
				}
			}else{
				$this->view->errorMessage	=	'Old password wrong';
			}
		}
	}
	/**
	 * invest
	 */
	public function investAction(){
		$this->view->title = 'Invest';
		$this->_helper->layout->setLayout('layout');
		$params	=	array(
			$this->user['ID']
		);
		$this->view->adminWallet = $this->user['adminWallet'];
		$this->view->investPackage = $this->getParam('pack1',1);
		$investData = $this->model->executeSql('SPC_GET_FEE_BY_ID', array($this->view->investPackage));
		$data = $this->model->executeSql('SPC_GET_RAND_ADMIN_WALLET', $params);
		if(isset($data[0][0]['admin_wallet']) && $data[0][0]['admin_wallet'] !=''){
			$this->view->adminWallet =	$data[0][0]['admin_wallet'];
		}
		if (! isset($data[0][0]['invest_valid']) || 1*$data[0][0]['invest_valid'] < 1){
			$this->redirect('/frontend/member');
		}
		if (isset($investData[0][0]) && !empty($investData[0][0]) ){
			$this->view->investData	=	$investData[0][0];
		}
	}
	/**
	 * history
	 */
	public function historyAction(){
		$this->view->title = 'GH History';
		$this->_helper->layout->setLayout('layout');
		$params	=	array(
			$this->user['ID']
		);
		$data = $this->model->executeSql('SPC_GET_TRANS_PH', $params);
		if(!empty($data[0])){
			$this->view->data	=	$data[0];
		}
	}
	/**
	 * report
	 */
	public function tradingreportAction(){
		$this->view->title = 'Bussiness Report';
		$this->_helper->layout->setLayout('layout');

		$params	=	array(
			$this->user['ID']
		);
		$data = $this->model->executeSql('SPC_GET_BUSSINESS_REPORT', $params);
		if(!empty($data[0][0])){
			$this->view->data	=	$data[0][0];
		}
	}
	/**
	 * history
	 */
	public function investstatusAction(){
		$this->view->title = 'PH History';
		$this->_helper->layout->setLayout('layout');
		$params	=	array(
			$this->user['ID']
		);
		$data = $this->model->executeSql('SPC_GET_TRANS_GH', $params);
		if(!empty($data[0])){
			$this->view->data	=	$data[0];
		}
		$pathUpload	=	new Zend_Config_Ini ( APPLICATION_PATH . '/configs/common.ini', 'upload' );
		$this->view->noimage	=	$pathUpload->upload->noimage;
	}
	/**
	 * bussiness tab click
	 */
	public function bussinessAction(){
		$this->view->title = 'Bussiness';
		$this->_helper->layout->setLayout('layout');


	}
	/**
	 * contact admin click
	 */
	public function contactadminAction(){
		$this->view->title = 'Send contact';
		$this->_helper->layout->setLayout('layout');
		if($this->getRequest()->isPost()){
			$params	=	array();
			$params['comment']	 		=	$this->_request->getParam('comments','');
			$params['customerID']		=	$this->user['ID'];
			$data = $this->model->executeSql('SPC_SEND_ADMIN_TICKET', $params);
			if (isset($data[0][0]['success']) && 1*$data[0][0]['success'] ==1){
				$this->view->successMessage	=	'Send message successful';
			}else{
				$this->view->errorMessage	=	'Can not send message';
			}
			$this->view->comment = $params['comment'];
		}
	}
	/**
	 * contact admin click
	 */
	public function ticketlistAction(){
		$this->view->title = 'Ticket List';
		$this->_helper->layout->setLayout('layout');
		$params	=	array(
			$this->user['ID']
		);
		$data = $this->model->executeSql('SPC_GET_TICKET_LIST', $params);
		if(!empty($data[0])){
			$this->view->data	=	$data[0];
		}
	}


}
