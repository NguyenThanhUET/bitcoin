<?php

class Backend_HomeController extends Frontend_AppController {

	/*protected $model;
	protected $user;
	protected $auth;*/

	/**
	 * @author
	 * @package   Base
	 * @return    user, model
	 */
	public function init() {
		parent::init();
		$this->auth->clearIdentity();
	}
	/**
	 * index home
	 */
	public function indexAction(){
		$this->_helper->layout->disablelayout();
		$this->view->title = 'Administrator Sign In';

		if($this->getRequest()->isPost()) {

			$this->_helper->layout->disablelayout();
			$userName = $this->_getParam('username', '');
			$password = $this->_getParam('password', '');
			$isLogin	=	$this->login($userName,$password);
			if($isLogin == 1){
				$this->redirect('/backend/management/');
				die();
			}else{
				$this->view->errorMessage	=	'Username or password invalid';
			}
		}
	}
	/**
	 * loginAction
	 *
	 * @param       :   null
	 * @return      :   null
	 * @access      :   public
	 * @see         :
	 */
	public function login($userName,$password){
		if($this->getRequest()->isPost()){
			try {
				//$txt	=	'$2a$10$1qAz2wSx3eDc4rFv5tGb5t';
				$params = array(
					$userName
				,	$password
				//,   crypt($password, $txt)
				);
				$data = $this->model->executeSql('SPC_LOGIN_ADMIN_LST1', $params,true);
				if(isset($data[0][0]['islogin']) && 1*$data[0][0]['islogin']==1) {
					$this->respon['auth']['ID'] 					= $data[0][0]['ID'];
					$this->respon['auth']['FullName'] 				= $data[0][0]['Name'];
					$this->respon['auth']['UserName'] 				= $data[0][0]['UserName'];
					$this->respon['auth']['Email'] 					= $data[0][0]['Email'];
					$this->respon['auth']['Mobile'] 				= $data[0][0]['Mobile'];
					$this->respon['auth']['Password'] 				= $data[0][0]['Password'];

					$this->respon['auth']['permission'] 			= 2;

					$this->respon['auth']['acl'] 					= 1;
					$this->respon['auth']['AuthorityCD'] 			= 1;
					// save to strorage(session)
					$storage = $this->auth->getStorage();
					$storage->write($this->respon['auth']);
					return 1;
				} else {
					return 0;
				}
			} catch (Exception $e) {
				return 0;
			}
		}
	}

}