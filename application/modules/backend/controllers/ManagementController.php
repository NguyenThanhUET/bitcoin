<?php
class Backend_ManagementController extends Frontend_AppController {

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
		$this->view->title = 'Dashboard';
		$this->_helper->layout->setLayout('backend-layout');
		$params	=	array();
		$data = $this->model->executeSql('SPC_GET_DASHBOARD_DATA_INFO', $params);
		$listfee	=	$this->model->executeSql('GET_FEE_AMOUNT_LIST', array());
		if(!empty($data[0][0])){
			$this->view->data	=	$data[0][0];
		}
		if(!empty($listfee[0])){
			$this->view->listfee	=	$listfee[0];
		}
	}

}
