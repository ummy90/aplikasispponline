<?php 
class Login extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('M_Login');
	}

	public function index(){
		$this->load->view('login');
	}
}
