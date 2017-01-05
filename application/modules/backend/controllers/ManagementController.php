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
		if(!empty($data[0][0])){
			$this->view->data	=	$data[0][0];
		}
	}
	/**
	 * invest
	 */
	public function waitingAction(){
		$this->view->title = 'Transaction- Waiting';
		$this->_helper->layout->setLayout('layout');
	}
	/**
	 * history
	 */
	public function confrimAction(){
		$this->view->title = 'Transaction- Confirm';
		$this->_helper->layout->setLayout('layout');


	}
	/**
	 * history
	 */
	public function phAction(){
		$this->view->title = 'Bussiness PH';
		$this->_helper->layout->setLayout('layout');


	}
	/**
	 * history
	 */
	public function historyAction(){
		$this->view->title = 'History';
		$this->_helper->layout->setLayout('layout');


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
