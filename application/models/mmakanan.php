<?php
class Mmakanan extends CI_Model{

	function simpan_makanan($nama, $wisataId,$createdBy, $photo, $deskripsi){
		$hsl=$this->db->query("INSERT INTO makanan(nama, deskripsi, wisata_id, photo, created_by, date_created) VALUES ('$nama','$deskripsi', $wisataId, '$photo','$createdBy',now())");
		return $hsl;
	}

	function get_all_by_wisata_id($wisataId){
		$hsl=$this->db->query("SELECT * FROM makanan WHERE wisata_id=$wisataId ORDER BY date_created asc");
		return $hsl;
	}

}