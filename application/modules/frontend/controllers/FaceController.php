<?php

class Frontend_FaceController extends Frontend_AppController {

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
		$this->view->amountGHInt = 11.3;
		$this->view->amountPHInt = 7.55;
		$this->view->visitorInit	=	rand(100,156);
		$dataInvest = $this->model->executeSql('SPC_GET_DASHBOARD_DATA_INFO', array());
		if(!empty($dataInvest[0][0])){
			$this->view->dataInvest	=	$dataInvest[0][0];
		}
	}
	/**
	 * index home
	 */
	public function indexAction(){

		$this->view->title = 'Home';
		$this->_helper->layout->setLayout('face_layout');
		$data = $this->model->executeSql('GET_LAST_TRAN_TMP', array());
		$listPolicy = $this->model->executeSql('GET_POLICY_HOME_LST1', array());

		if(!empty($data[0])){
			$this->view->data = $data[0];
		}
		if(!empty($listPolicy[0])){
			$this->view->listPolicy = $listPolicy[0];
		}
	}
	public function aboutusAction(){
		$this->view->title = 'About Us';
		$this->_helper->layout->setLayout('face_layout');
	}
	public function termsAction(){
		$this->view->title = 'Terms & Conditions';
		$this->_helper->layout->setLayout('face_layout');
	}
	public function faqAction(){
		$this->view->title = 'FQA';
		$this->_helper->layout->setLayout('face_layout');
	}
	public function supportcentreAction(){
		$this->view->title = 'Support Centre';
		$this->_helper->layout->setLayout('face_layout');
	}

}
