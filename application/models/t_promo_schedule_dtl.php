<?php
class t_promo_schedule_dtl extends CI_Model{
	function list_promo(){
		$hsl=$this->db->query("SELECT * FROM promo_schedule_detail");
		return $hsl;
	}

	function simpan_promo($wisata_id, $user_id, $promo_schedule_id, $createdBy){
		$query=$this->db->query("insert into promo_schedule_detail(wisata_id, wisata_user, promo_schedule_id, created_by, date_created) values('$wisata_id','$user_id', '$promo_schedule_id', '$createdBy',now())");
        return $query;
	}

	function hapus_schedule($id){
		 $query=$this->db->query("delete from promo_schedule_detail where id='$id'");
        return $query;
	}

	function getById($id){
        $query=$this->db->query("select * from promo_schedule_detail where id='$id'");
        return $query;
    }

    function getAllByScheduleId($scheduleId){
        $query=$this->db->query("select * from promo_schedule_detail where promo_schedule_id='$scheduleId'");
        return $query;
    }

    function getByWisataId($wisata_id){
    	$query=$this->db->query("select * from promo_schedule_detail where wisata_id='$wisata_id'");
        return $query;
    }

}
?>

</body>
</html>