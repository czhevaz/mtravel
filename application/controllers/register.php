<?php
class Register extends CI_Controller{
	function __construct(){
		parent::__construct();	
		$this->load->model('morders');
        $this->load->library('upload');
        $this->load->model('mpengguna');
	}

	function index(){
		$this->load->view('front/v_register');
	}


	function simpan_pengguna(){
        $config['upload_path'] = './assets/images/'; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

        $this->upload->initialize($config);
        if(!empty($_FILES['filefoto']['name'])){
            if ($this->upload->do_upload('filefoto')){
                $gbr = $this->upload->data();
                //Compress Image
                $config['image_library']='gd2';
                $config['source_image']='./assets/images/'.$gbr['file_name'];
                $config['create_thumb']= FALSE;
                $config['maintain_ratio']= FALSE;
                $config['quality']= '60%';
                $config['width']= 300;
                $config['height']= 300;
                $config['new_image']= './assets/images/'.$gbr['file_name'];
                $this->load->library('image_lib', $config);
                $this->image_lib->resize();

                $gambar=$gbr['file_name'];
                $nama=$this->input->post('nama');
                $username=$this->input->post('username');
                $password=$this->input->post('password');
                $password2=$this->input->post('password2');
                $level=3;
                $alamat=$this->input->post('alamat');

                if($password <> $password2){
                    echo $this->session->set_flashdata('msg','Ulangi password tidak sama');
                    redirect('register');
                }elseif($this->mpengguna->getByUsername($username)){
                	echo $this->session->set_flashdata('msg','username '.$username.' sudah ada');
                    redirect('register');
            	}else{
                    $this->mpengguna->simpan_user($nama,$username,$password,$level,$gambar,$alamat);
                    echo $this->session->set_flashdata('msg','success');
                    redirect('register'); 
                }
                
        }else{
            echo $this->session->set_flashdata('msg','warning');
            redirect('register');
        }
                     
        }else{
            redirect('backend/pengguna');
        }
    }
	
}