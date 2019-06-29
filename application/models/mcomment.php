<?php
class Mcomment extends CI_Model{

	function simpan_comment($pesan,$wisataId,$createdBy){
		$hsl=$this->db->query("INSERT INTO comment(pesan,wisata_id,created_by,date_created) VALUES ('$pesan','$wisataId','$createdBy',now())");
		return $hsl;
	}

	function get_all_by_wisata_id($wisataId){
		$hsl=$this->db->query("SELECT * FROM comment WHERE wisata_id=$wisataId ORDER BY date_created asc");
		return $hsl;
	}
}