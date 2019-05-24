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
	function SimpanWisata($nama_wisata,$deskripsi,$gambar){
		$hasil=$this->db->query("INSERT INTO wisata(nama_wisata,deskripsi,gambar) VALUES ('$nama_wisata','$deskripsi','$gambar')");
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
	
}