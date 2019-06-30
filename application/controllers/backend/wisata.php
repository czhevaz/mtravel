<?php
class Wisata extends CI_Controller{
	function __construct(){
        parent::__construct();
        if($this->session->userdata('masuk') !=TRUE){
            $url=base_url();
            redirect($url);
        };
        $this->load->model('mwisata');
        $this->load->model('mcomment');
        $this->load->model('mmakanan');
        $this->load->model('mlike');
        $this->load->library('upload');
    }
    function index(){
	    /*if($this->session->userdata('akses')=='1'){*/
	    	$x['data']=$this->mwisata->tampil_wisata();
	        $this->load->view('backend/v_wisata',$x);
	    /*}else{
	        echo "Halaman tidak ditemukan";
	    }*/
    }

    function simpan_wisata(){
    	$config['upload_path'] = './assets/gambars/'; //path folder
	    $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	    $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	    $this->upload->initialize($config);
	    if(!empty($_FILES['filefoto']['name'])){
	        if ($this->upload->do_upload('filefoto')){
	        	$gbr = $this->upload->data();
	            //Compress Image
	            $config['image_library']='gd2';
	            $config['source_image']='./assets/gambars/'.$gbr['file_name'];
	            $config['create_thumb']= FALSE;
	            $config['maintain_ratio']= FALSE;
	            $config['quality']= '60%';
	            $config['width']= 756;
	            $config['height']= 434;
	            $config['new_image']= './assets/gambars/'.$gbr['file_name'];
	            $this->load->library('image_lib', $config);
	            $this->image_lib->resize();

	            $gambar=$gbr['file_name'];
                $nama_wisata=$this->input->post('nama_wisata');
                $deskripsi=$this->input->post('deskripsi');
                $user=$this->session->userdata('user');

				$this->mwisata->SimpanWisata($nama_wisata,$deskripsi,$gambar,$user);
				echo $this->session->set_flashdata('msg','success');
				redirect('backend/wisata');
		}else{
	        echo $this->session->set_flashdata('msg','warning');
	        redirect('backend/wisata');
	    }
	                 
	    }else{
			redirect('backend/wisata');
		}
    }

    function update_wisata(){
	    $config['upload_path'] = './assets/gambars/'; //path folder
	    $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	    $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	    $this->upload->initialize($config);
	    if(!empty($_FILES['filefoto']['name'])){
	        if ($this->upload->do_upload('filefoto')){
	            $gbr = $this->upload->data();
	            //Compress Image
	            $config['image_library']='gd2';
	            $config['source_image']='./assets/gambars/'.$gbr['file_name'];
	            $config['create_thumb']= FALSE;
	            $config['maintain_ratio']= FALSE;
	            $config['quality']= '60%';
	            $config['width']= 756;
	            $config['height']= 434;
	            $config['new_image']= './assets/gambars/'.$gbr['file_name'];
	            $this->load->library('image_lib', $config);
	            $this->image_lib->resize();

	            $gambar=$gbr['file_name'];
	            $kode=$this->input->post('kode');
                $nama_wisata=$this->input->post('nama_wisata');
                $deskripsi=$this->input->post('deskripsi');

				$this->mwisata->update_wisata_with_img($kode,$nama_wisata,$deskripsi,$gambar);
				echo $this->session->set_flashdata('msg','info');
				redirect('backend/wisata');
	                    
	    	}else{
	        	echo $this->session->set_flashdata('msg','warning');
	        	redirect('backend/wisata'); 
	        }       
	    }else{
			$kode=$this->input->post('kode');
            $nama_wisata=$this->input->post('nama_wisata');
            $deskripsi=$this->input->post('deskripsi');
			$this->mwisata->update_wisata_no_img($kode,$nama_wisata,$deskripsi);
			echo $this->session->set_flashdata('msg','info');
			redirect('backend/wisata');
	    } 

	}

    function hapus_wisata(){
	    if($this->session->userdata('akses')=='1'){
	        $id=$this->input->post('kode');
	        $this->mwisata->hapus_wisata($id);
	        echo $this->session->set_flashdata('msg','success-hapus');
	        redirect('backend/wisata');
	    }else{
	        echo "Halaman tidak ditemukan";
	    }
    }


    public function simpan_comment(){

      $pesan = $this->input->post('pesan');;
      $wisataId = $this->input->post('wisataId');
      $user=$this->session->userdata('user');
      $this->mcomment->simpan_comment($pesan,$wisataId,$user);

      $wisataList = $this->mcomment->get_all_by_wisata_id($wisataId)->result();	
      $response = array(
        'success' => true,
        'data'=>$wisataList,
        'info' => 'Data Tersimpan');

      $this->output
        ->set_status_header(201)
        ->set_content_type('application/json', 'utf-8')
        ->set_output(json_encode($response, JSON_PRETTY_PRINT))
        ->_display();
        exit;
  	}


  	public function simpan_like(){

      $status = $this->input->post('status');;
      $wisataId = $this->input->post('wisataId');
      $user=$this->session->userdata('user');
      
      $s=$this->mlike->simpan_like($status,$wisataId,$user);


      //$wisataList = $this->mlike->get_all_by_wisata_id($wisataId)->result();	
      $response = array(
        'success' => true,
        'data'=>$wisataId,
        'info' => 'Data Tersimpan');

      $this->output
        ->set_status_header(201)
        ->set_content_type('application/json', 'utf-8')
        ->set_output(json_encode($response, JSON_PRETTY_PRINT))
        ->_display();
        exit;
  	}


  	function simpan_makanan(){
    	$config['upload_path'] = './assets/gambars/'; //path folder
	    $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	    $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	    $this->upload->initialize($config);
	    if(!empty($_FILES['filefoto']['name'])){
	        if ($this->upload->do_upload('filefoto')){
	        	$gbr = $this->upload->data();
	            //Compress Image
	            $config['image_library']='gd2';
	            $config['source_image']='./assets/gambars/'.$gbr['file_name'];
	            $config['create_thumb']= FALSE;
	            $config['maintain_ratio']= FALSE;
	            $config['quality']= '60%';
	            $config['width']= 756;
	            $config['height']= 434;
	            $config['new_image']= './assets/gambars/'.$gbr['file_name'];
	            $this->load->library('image_lib', $config);
	            $this->image_lib->resize();

	            $gambar=$gbr['file_name'];
                $nama=$this->input->post('nama_makanan');
                $deskripsi=$this->input->post('deskripsi');
                $wisataId=$this->input->post('wisataId');
                $user=$this->session->userdata('user');

				$this->mmakanan->simpan_makanan($nama,$wisataId,$user, $gambar, $deskripsi);
				echo $this->session->set_flashdata('msg','success-makanan');
				redirect('backend/wisata');
		}else{
	        echo $this->session->set_flashdata('msg','warning');
	        redirect('backend/wisata');
	    }
	                 
	    }else{
			redirect('backend/wisata');
		}
    }

}