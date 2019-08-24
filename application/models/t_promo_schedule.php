<?php
class t_promo_schedule extends CI_Model{
	function list_promo(){
		$hsl=$this->db->query("SELECT * FROM promo_schedule");
		return $hsl;
	}

	function simpan_promo($nama, $date_start, $date_end, $createdBy){
		$query=$this->db->query("insert into promo_schedule(nama,date_start,date_end,created_by,date_created) values('$nama','$date_start', '$date_end', '$createdBy',now())");
        return $query;
	}

	function hapus_schedule($id){
		 $query=$this->db->query("delete from promo_schedule where id='$id'");
        return $query;
	}

	function getById($id){
        $query=$this->db->query("select * from promo_schedule where id='$id'");
        return $query;
    }

    

}
?>