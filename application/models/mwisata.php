<?php
class Mwisata extends CI_Model{

	function count_wisata(){
		$hasil=$this->db->query("select * from wisata");
		return $hasil;
	}

	function get_wisata($offset,$limit){
		$hasil=$this->db->query("select * from wisata order by idwisata DESC limit $offset,$limit");
		return $hasil;
	}
	function SimpanWisata($nama_wisata,$deskripsi,$gambar, $user){
		$hasil=$this->db->query("INSERT INTO wisata(nama_wisata,deskripsi,gambar,created_by,date_created) VALUES ('$nama_wisata','$deskripsi','$gambar','$user',NOW())");
		return $hasil;
	}
	function tampil_wisata(){
		$hasil=$this->db->query("select * from wisata order by idwisata DESC");
		return $hasil;
	}
	function getwisata($kode){
		$hasil=$this->db->query("select * from wisata where idwisata='$kode'");
		return $hasil;
	}

	function get_wisata_front(){
		$hasil=$this->db->query("select * from wisata order by idwisata desc limit 6");
		return $hasil;
	}

	function update_wisata_with_img($kode,$nama_wisata,$deskripsi,$gambar){
		$hasil=$this->db->query("UPDATE wisata SET nama_wisata='$nama_wisata',deskripsi='$deskripsi',gambar='$gambar' WHERE idwisata='$kode'");
		return $hasil;
	}
	function update_wisata_no_img($kode,$nama_wisata,$deskripsi){
		$hasil=$this->db->query("UPDATE wisata SET nama_wisata='$nama_wisata',deskripsi='$deskripsi' WHERE idwisata='$kode'");
		return $hasil;
	}
	function hapus_wisata($id){
		$hasil=$this->db->query("delete from wisata where idwisata='$id'");
		return $hasil;
	}

	function getAllPromoByDate(){
    	$query=$this->db->query("select * from wisata  w LEFT JOIN promo_schedule_detail ps ON ps.wisata_id=w.idwisata LEFT JOIN promo_schedule p on p.id=ps.promo_schedule_id where p.date_start <= now() AND p.date_end >=now()");
    	return $query;
    }
	
}