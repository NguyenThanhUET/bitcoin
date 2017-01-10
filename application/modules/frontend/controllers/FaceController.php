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
	}
	public function aboutusAction(){
		$this->view->title = 'About us';
		$this->_helper->layout->setLayout('face_layout');
	}
	public function termAction(){

	}
	public function faqAction(){

	}
	public function supportcentreAction(){

	}

}
