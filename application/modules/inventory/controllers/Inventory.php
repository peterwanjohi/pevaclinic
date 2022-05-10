<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
require_once APPPATH . '../vendor/autoload.php';

class Inventory extends MX_Controller {
    function __construct() {
        parent::__construct();
        $this->load->model('inventory_model');
        $this->load->model('file_upload_model');

        if (!$this->ion_auth->in_group(array('admin', 'Accountant', 'Receptionist', 'Nurse', 'Laboratorist', 'Doctor'))) {
            redirect('home/permission');
        }
    }

    public function index() {
        
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('inventory_home');
        $this->load->view('home/footer'); // just the header file
    }

    public function inventoryList() {
        $data['inventory_items'] = $this->inventory_model->getAllInventoryItems();

        // var_dump($data['inventory_items']);
        // die;
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('inventory_home', $data);
        $this->load->view('home/footer'); // just the header file

    }

    public function addInventoryItemView () {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('add_inventory_item');
        $this->load->view('home/footer'); // just the header file
    }

    public function addInventoryItem () {
        $id = $this->input->post('id');
        $invoice_number = $this->input->post('invoice_number');
        $name = $this->input->post('name');
        $quantity = $this->input->post('quantity');
        $purchase_date = $this->input->post('purchase_date');
        $expiry_date = $this->input->post('expiry_date');

        if (!empty($purchase_date)) {
            $purchase_date = strtotime($purchase_date);
        }

        if (!empty($expiry_date)) {
            $expiry_date = strtotime($expiry_date);
        }

        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        // Validating Name Field
        $this->form_validation->set_rules('name', 'Name', 'trim|required|min_length[5]|max_length[100]|xss_clean');
        // Validating Quantity Field
        $this->form_validation->set_rules('quantity', 'Quantity', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        // Validating Purchase Date Field
        $this->form_validation->set_rules('purchase_date', 'Purchase Date', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        // Validating Expiry Date Field
        $this->form_validation->set_rules('expiry_date', 'Expiry Date', 'trim|min_length[1]|max_length[100]|xss_clean');
        // validating invoice number
        $this->form_validation->set_rules('invoice_number', 'Invoice Number', 'trim|min_length[1]|max_length[100]|xss_clean');
        // Validating image type

        if ($this->form_validation->run() == FALSE) {
            if (!empty($id)) {                
                $data = array();
                $data['inventory'] = $this->inventory_model->getInventoryItemById($id);
                $this->load->view('home/dashboard'); // just the header file
                $this->load->view('inventory/add_inventory_item', $data);
                $this->load->view('home/footer'); // just the footer file
            } else {                
                $data = array();
                $data['setval'] = 'setval';
                $this->load->view('home/dashboard'); // just the header file
                $this->load->view('inventory/add_inventory_item', $data);
                $this->load->view('home/footer'); // just the header file
            }
        } else {
            $data = [];

            if (!empty($id)) {
                
                $data['invoice_number'] = $invoice_number;
                $data['name'] = $name;
                $data['quantity'] = $quantity;
                $data['purchase_date'] = $purchase_date;
                $data['expiry_date'] = $expiry_date;
                $data['created_at'] = time();

                if (!empty($_FILES['image_url']['name'])) {
                    
                    $upload_data = $this->file_upload_model->upload_image($_FILES['image_url']['name'], 'image_url');
    
                    $data['image_url'] = "uploads/" . $upload_data['upload_data']['file_name'];
                }

                $this->inventory_model->updateInventoryItem($id, $data);
                $this->session->set_flashdata('feedback', 'Updated');
            } else {
                $data['invoice_number'] = $invoice_number;
                $data['name'] = $name;
                $data['quantity'] = $quantity;
                $data['purchase_date'] = $purchase_date;
                $data['expiry_date'] = $expiry_date;
                $data['created_at'] = time();

                
                // upload image using helper                
                if (!empty($_FILES['image_url']['name'])) {
                $upload_data = $this->file_upload_model->upload_image($_FILES['image_url']['name'], 'image_url');

                $data['image_url'] = "uploads/" . $upload_data['upload_data']['file_name'];
                }

                $this->inventory_model->insertInventoryItem($data);
                $this->session->set_flashdata('feedback', 'Added');
            }
            
            redirect('inventory/inventoryList');
        }

    }

    public function editInventoryItemView () {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }
        
        $id = $this->input->get('id');
        $data = array();
        $data['inventory'] = $this->inventory_model->getInventoryItemById($id);

        // var_dump($data['inventory']['invoice_number']);
        // die();
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('inventory/add_inventory_item', $data);
        $this->load->view('home/footer'); // just the footer file
    }

    public function deleteItem() {
        $id = $this->input->get('id');
        $this->inventory_model->deleteInventoryItem($id);        
        $this->session->set_flashdata('feedback', 'Deleted');
        redirect('inventory/inventoryList');
    }
}

/* End of file inventory.php */
/* Location: ./application/modules/inventory/controllers/inventory.php */