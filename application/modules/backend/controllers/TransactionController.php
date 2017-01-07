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
		$data = $this->model->executeSql('SPC_GET_TRANS_WAITING', $params,true);
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
	public function policyAction(){
		$this->view->title = 'Policy';
		$this->_helper->layout->setLayout('backend-layout');
		$listfee	=	$this->model->executeSql('GET_FEE_AMOUNT_LIST',array());
		if(!empty($listfee[0])){
			$this->view->listfee	=	$listfee[0];
		}

	}
	public function waitingapprovedAction(){
		$this->_helper->layout->disablelayout();
		$this->_helper->viewRenderer->setNoRender();
		if($this->getRequest()->isPost()){
			try {
				$params 					= array_slice($this->getAllParams(), 3);
				//execute store procedure
				$data = $this->model->executeSql('SPC_TRANSACTION_APPROVED_ACT1',$params);
				//result
				if(isset($data[0][0]['success']) && 1*$data[0][0]['success']==1) {
					$this->respon['status'] = 1;
					$this->respon['error']  = 'Update Successfull';
				}else{
					$this->respon['status'] = 0;
					$this->respon['error']  = 'Update Error';
				}
			} catch (Exception $e){
				$this->respon['status'] 	= 0;
				$this->respon['error']  = 'Exception Error';
			}
			//
			$this->getHelper('json')->sendJson($this->respon);
		}
	}
	public function ghdeleteAction(){
		$this->_helper->layout->disablelayout();
		$this->_helper->viewRenderer->setNoRender();
		//if($this->getRequest()->isPost()){
		try {
			$params 					= array_slice($this->getAllParams(), 3);
			//execute store procedure
			$data = $this->model->executeSql('SPC_TRANSACTION_DELETE_GH_ACT1',$params);
			//result
			if(isset($data[0][0]['success']) && 1*$data[0][0]['success']==1) {
				$this->respon['status'] = 1;
				$this->respon['error']  = 'Update Successfull';
			}else{
				$this->respon['status'] = 0;
				$this->respon['error']  = 'Update Error';
			}
		} catch (Exception $e){
			$this->respon['status'] 	= 0;
			$this->respon['error']  = 'Exception Error';
		}
		//
		$this->getHelper('json')->sendJson($this->respon);
		//}
	}
}
