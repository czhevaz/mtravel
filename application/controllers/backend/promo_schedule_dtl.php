<?php
class promo_schedule_dtl extends CI_Controller{
	function __construct(){
        parent::__construct();
        if($this->session->userdata('masuk') !=TRUE){
            $url=base_url();
            redirect($url);
        };
        $this->load->model('t_promo_schedule_dtl');
        $this->load->model('mwisata');
    }

    function simpan(){
    
        $user=$this->session->userdata('user'); 
        $promo_schedule_id =  $this->input->post('promo_schedule_id');
        $wisata_id =  $this->input->post('wisata_id');
        $wisata = $this->mwisata->getwisata($wisata_id)->row();
        $chekWisata = $this->t_promo_schedule_dtl->getByWisataId($wisata_id)->num_rows();

        if($chekWisata){
            echo $this->session->set_flashdata('msg','failed');
            redirect('backend/promo_schedule/view_schedule/'.$promo_schedule_id);         
        }else{
            $this->t_promo_schedule_dtl->simpan_promo($wisata_id, $wisata->created_by, $promo_schedule_id,$user);
            echo $this->session->set_flashdata('msg','success');
            redirect('backend/promo_schedule/view_schedule/'.$promo_schedule_id);         
        }
        
        
    }
}    