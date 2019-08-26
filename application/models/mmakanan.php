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

	function get_makanan_front(){
		$hsl=$this->db->query("SELECT * FROM makanan   ORDER BY date_created desc limit 4");
		return $hsl;
	}

	function tampil_makanan(){
		$hasil=$this->db->query("select * from makanan order by date_created DESC");
		return $hasil;
	}

	function getMakanan($kode){
		$hasil=$this->db->query("select * from makanan where id='$kode'");
		return $hasil;
	}
	function get_makanan($offset,$limit){
		$hasil=$this->db->query("select * from makanan order by date_created DESC limit $offset,$limit");
		return $hasil;
	}

	function count_makanan(){
		$hasil=$this->db->query("select * from makanan");
		return $hasil;
	}

}