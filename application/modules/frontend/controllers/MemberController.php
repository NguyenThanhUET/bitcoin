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
		$data = $this->model->executeSql('SPC_GET_TRANS_PH', $params);
		if(!empty($data[0])){
			$this->view->data	=	$data[0];
		}
	}
	/**
	 * history
	 */
	public function historyAction(){
		$this->view->title = 'History';
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
	 * history
	 */
	public function tradingreportAction(){
		$this->view->title = 'Bussiness Report';
		$this->_helper->layout->setLayout('layout');

		$params	=	array(
			$this->user['ID']
		);
		/*$data = $this->model->executeSql('SPC_GET_DATA_INVEST', $params);
		if(!empty($data[0][0])){
			$this->view->data	=	$data[0][0];
		}*/
	}
	/**
	 * history
	 */
	public function investstatusAction(){
		$this->view->title = 'Invest Status';
		$this->_helper->layout->setLayout('layout');
		$params	=	array(
			$this->user['ID']
		);
		$data = $this->model->executeSql('SPC_GET_TRANS_GH', $params);
		if(!empty($data[0])){
			$this->view->data	=	$data[0];
		}
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
		$this->view->title = 'Bussiness';
		$this->_helper->layout->setLayout('layout');


	}

}
