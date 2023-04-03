<?php

class Model_kategori extends CI_Model{

    public function data_kusen() {
       return $this->db->get_where("tb_barang",array('kategori' => 
            'kusen'));
    }

    public function data_pintu() {
       return $this->db->get_where("tb_barang",array('kategori' => 
            'pintu'));
    }

    public function data_jendela() {
       return $this->db->get_where("tb_barang",array('kategori' => 
            'jendela'));
    }
}