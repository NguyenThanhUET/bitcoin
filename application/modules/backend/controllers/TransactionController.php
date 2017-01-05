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
	public function historyAction(){
		$this->view->title = 'History';
		$this->_helper->layout->setLayout('backend-layout');


	}

}
