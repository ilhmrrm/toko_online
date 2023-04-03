<?php 

class Kategori extends CI_Controller {
    public function kusen() {
        $data['kusen'] = $this->model_kategori->data_kusen()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('kusen',$data);
        $this->load->view('templates/footer');
    }
    
    public function pintu() {
        $data['pintu'] = $this->model_kategori->data_pintu()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('pintu',$data);
        $this->load->view('templates/footer');
    }
    
    public function jendela() {
        $data['jendela'] = $this->model_kategori->data_jendela()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('jendela',$data);
        $this->load->view('templates/footer');
    }

}