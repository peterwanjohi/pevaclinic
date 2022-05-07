<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class File_upload_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function upload_image($file_name, $field) {

        // get file name without extension
        $name = pathinfo($file_name, PATHINFO_FILENAME);
        // append timestamp
        $name = $name . '_' . time();
        // get file extension
        $file_extension = pathinfo($file_name, PATHINFO_EXTENSION);
        // set new file name
        $new_file_name = $name . '.'. $file_extension;

        $config['upload_path'] = './uploads/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['max_size'] = '2048';
        $config['max_width'] = '2000';
        $config['max_height'] = '2000';
        $config['file_name'] = $new_file_name;

        $this->load->library('upload', $config);
        $this->upload->initialize($config);

        if (!$this->upload->do_upload($field)) {
            $error = array('error' => $this->upload->display_errors());
            return $error;
        } else {
            $data = array('upload_data' => $this->upload->data());
            return $data;
        }
    }

}