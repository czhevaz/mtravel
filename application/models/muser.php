<?php
class Muser extends CI_Model{
	function list_user(){
		$hsl=$this->db->query("SELECT * FROM user");
		return $hsl;
	}

	function show_user($userid){
		$hsl=$this->db->query("SELECT * FROM user where id ='$userid'");
		return $hsl;
	}

	function find_user_by_username($username){
		$hsl=$this->db->query("SELECT * FROM user where username ='$username'");
		return $hsl;
	}

	function delete_user($id){
		$hsl=$this->db->query("DELETE FROM user WHERE id='$id'");
		return $hsl;
	}

	function simpan_user($nama,$username,$password,$alamat,$gambar){
        $query=$this->db->query("insert into user(nama,username,password,alamat,photo)values('$nama','$username',md5('$password'),'$level','$gambar')");
        return $query;
    }

    
}