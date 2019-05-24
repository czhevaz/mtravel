<?php
class Orders extends CI_Controller{
    function __construct(){
        parent::__construct();
        if($this->session->userdata('masuk') !=TRUE){
            $url=base_url();
            redirect($url);
        };
        $this->load->model('morders');
    }
    function index(){
        $x['data']=$this->morders->get_orders();
		$this->load->view('backend/v_orders',$x);
    }
    function pembayaran_selesai(){
        $id=$this->uri->segment(4);
        $this->morders->bayar_selesai($id);
        echo $this->session->set_flashdata('msg','success');
        redirect('backend/orders');
    }
    function edit_orders(){
        $kode=$this->input->post('kode');
        $dewasa=$this->input->post('dewasa');
        $anaks=$this->input->post('anaks');
        $this->morders->edit_orders($kode,$dewasa,$anaks);
        echo $this->session->set_flashdata('msg','info');
        redirect('backend/orders');
    }
    function hapus_order(){
        $kode=$this->input->post('kode');
        $this->morders->hapus_orders($kode);
        echo $this->session->set_flashdata('msg','success-hapus');
        redirect('backend/orders');
    }
}
