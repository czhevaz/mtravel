<?php
class Mlogin extends CI_Model{
    function cekadmin($u,$p){
        $hasil=$this->db->query("select*from user where username='$u'");
        return $hasil;
    }
  
}
