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
	function tableAction(){
		$this->_helper->_layout->disableLayout();
		$page		=	$this->_request->getParam('page',1);
		$pageLimit	=	ITEM_PER_PAGE;
		/* Get data from database */
		$fiedData	= array(
				'pro_id'
				,	'pro_name'
				,	'pro_price'
				,	'pro_image'
				,	'pro_quantity'
				,	'pro_discount'
				,	'status_id'
		);
		$strWhere		=	'tbl_product.del_flg = 1 ';
		$strOrder		=	array('pro_name asc');
		$product		=	$this->model->selectDB('tbl_product',$fiedData,$strWhere,$strOrder,false,$page,$pageLimit);
		$array_count	=	$this->model->selectDB('tbl_product',$fiedData, $strWhere);
		$recordCount	=	count($array_count);
		/* Display data */
		if(isset($product) && count($product) >0){
			$this->view->arrproduct = $product;
			if ($pageLimit!=0)
			{
				$this->view->paging	=	$this->paging->pagination('' , $page , $recordCount , $pageLimit, NUM_OF_PAGE);
			}
		}else{
			$this->view->arrproduct = array();
		}
	}
	public function detailAction(){
		$this->view->title = 'PHARBACO TW1';
		$this->_helper->layout->setLayout('layout');
		$pro_id		=	$this->_request->getParam('pro_id',0);
		/* Get data from database */
		$fiedData	= array(
					'pro_id'
				,	'pro_name'
				,	'pro_desc'
				,	'pro_image'
		);
		$strWhere		=	'tbl_product.pro_id = '.$pro_id;
		$strOrder		=	array('pro_name asc');
		$product		=	$this->model->selectDB('tbl_product',$fiedData,$strWhere);
		/* Display data */
		if(isset($product) && count($product) >0){
			$this->view->arrproduct = $product[0];
		}else{
			$this->view->arrproduct = array();
		}
	}
}
