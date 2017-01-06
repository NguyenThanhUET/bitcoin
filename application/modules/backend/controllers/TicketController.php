<?php
class Backend_TicketController extends Backend_AppController {

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
		$this->view->title = 'Ticket Management';
		$this->_helper->layout->setLayout('backend-layout');
		$params	=	array();
		$data = $this->model->executeSql('SPC_GET_ADMIN_TICKET_LIST', $params);
		if(!empty($data[0])){
			$this->view->data	=	$data[0];
		}
	}

}
