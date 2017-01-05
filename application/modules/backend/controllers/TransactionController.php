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
	}
	/**
	 * history
	 */
	public function confrimAction(){
		$this->view->title = 'Transaction- Confirm';
		$this->_helper->layout->setLayout('backend-layout');


	}
	/**
	 * history
	 */
	public function phAction(){
		$this->view->title = 'Bussiness PH';
		$this->_helper->layout->setLayout('backend-layout');


	}
	/**
	 * history
	 */
	public function historyAction(){
		$this->view->title = 'History';
		$this->_helper->layout->setLayout('backend-layout');


	}

}
