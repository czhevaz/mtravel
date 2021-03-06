<?php
class Administrator extends CI_Controller{
    function __construct(){
        parent:: __construct();
        $this->load->model('mlogin');
    }
    function index(){
        $this->load->view('backend/v_login');
    }

    function auth(){
        $username=strip_tags(str_replace("'", "", $this->input->post('username')));
        $password=strip_tags(str_replace("'", "", $this->input->post('password')));

        if(!$username){
            $username = $this->session->userdata('username');
            $password = $this->session->userdata('password');      
        }
        
        $u=$username;
        $p=$password;
        $cadmin=$this->mlogin->cekadmin($u,$p);
         /*ob_start();
       var_dump($cadmin->num_rows);
       $result = ob_get_contents(); //or ob_get_clean()
        die();*/
        if($cadmin->num_rows > 0){
         $this->session->set_userdata('masuk',true);
         $this->session->set_userdata('user',$u);
         $xcadmin=$cadmin->row_array();
         if($xcadmin['level']=='1')
            $this->session->set_userdata('akses','1');
            $idadmin=$xcadmin['idadmin'];
            $user_nama=$xcadmin['nama'];
            $this->session->set_userdata('idadmin',$idadmin);
            $this->session->set_userdata('nama',$user_nama);
         if($xcadmin['level']=='2'){
             $this->session->set_userdata('akses','2');
             $idadmin=$xcadmin['idadmin'];
             $user_nama=$xcadmin['nama'];
             $this->session->set_userdata('idadmin',$idadmin);
             $this->session->set_userdata('nama',$user_nama);
         } //Front Office
         if($xcadmin['level']=='3'){
             $this->session->set_userdata('akses','3');
             $idadmin=$xcadmin['idadmin'];
             $user_nama=$xcadmin['nama'];
             $this->session->set_userdata('idadmin',$idadmin);
             $this->session->set_userdata('nama',$user_nama);
         } //Front Office
           
         
         
        }
        
        if($this->session->userdata('masuk')==true){
            redirect('administrator/berhasillogin');
        }else{
            redirect('administrator/gagallogin');
        }
    }
        function berhasillogin(){
            if($this->session->userdata('akses')=='1'){   
                redirect('backend/dashboard');
            }else{
                redirect('backend/wisata');
            }
        }
        function gagallogin(){
            $url=base_url('administrator');
            echo $this->session->set_flashdata('msg','<div class="alert alert-danger" role="alert"><button type="button" class="close" data-dismiss="alert"><span class="fa fa-close"></span></button> Username Atau Password Salah</div>');
            redirect($url);
        }
        function logout(){
            $this->session->sess_destroy();
            $url=base_url('administrator');
            redirect($url);
        }

}