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
	}
	/**
	 * index home
	 */
	public function indexAction(){

		$this->view->title = 'Home';
		$this->_helper->layout->setLayout('face_layout');
		$data = $this->model->executeSql('GET_LAST_TRAN_TMP', array());
		if(!empty($data[0])){
			$this->view->data = $data[0];
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
