<?php
class Mlike extends CI_Model{

	function simpan_like($status,$wisataId,$createdBy){
		$hsl=$this->db->query("INSERT INTO mlike(status,wisata_id,created_by,date_created) VALUES ($status,'$wisataId','$createdBy',now())");
		return $hsl;
	}

	function get_all_by_wisata_id($wisataId){
		$hsl=$this->db->query("SELECT * FROM mlike WHERE wisata_id=$wisataId ORDER BY date_created asc");
		return $hsl;
	}

}