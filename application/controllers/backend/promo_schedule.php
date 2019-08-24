<?php
class promo_schedule extends CI_Controller{
	function __construct(){
        parent::__construct();
        if($this->session->userdata('masuk') !=TRUE){
            $url=base_url();
            redirect($url);
        };
        $this->load->model('t_promo_schedule');
        $this->load->model('t_promo_schedule_dtl');
        $this->load->model('mwisata');
        $this->load->model('muser');
        
    }

    function index(){
        if($this->session->userdata('akses')=='1'){
            $x['data']=$this->t_promo_schedule->list_promo();
            $this->load->view('backend/v_promo_schedule',$x);
        }else{
            echo "Halaman tidak ditemukan";
        }
    }

    function simpan_schedule(){
        $nama=$this->input->post('nama');
        $date_start=$this->input->post('date_start');
        $date_end=$this->input->post('date_end');
        $user=$this->session->userdata('user');

        
        $this->t_promo_schedule->simpan_promo($nama,$date_start,$date_end, $user);
        echo $this->session->set_flashdata('msg','success');
        redirect('backend/promo_schedule'); 
    }

    function view_schedule($id){
        $row = $this->t_promo_schedule->getById($id)->row();
        $detail = $this->t_promo_schedule_dtl->getAllByScheduleId($id)->result();
        $wisatas = $this->mwisata->tampil_wisata()->result(); 
        //print_r($wisatas);
        $x['data'] = $row;
        $x['details'] = $detail;
        $x['wisatas'] = $wisatas;
        $this->load->view('backend/v_promo_schedule_show',$x);
    }

    function hapus_schedule(){
        if($this->session->userdata('akses')=='1'){
            $id=$this->input->post('kode');
            $this->t_promo_schedule->hapus_schedule($id);
            echo $this->session->set_flashdata('msg','success-hapus');
            redirect('backend/promo_schedule'); 
        }else{
            echo "Halaman tidak ditemukan";
        }
    }
}    
?>    
