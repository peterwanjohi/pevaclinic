<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Inventory_model extends CI_model {

    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    function getAllInventoryItems() {
        // $this->db->select('*');
        // $this->db->from('inventory');
        // $this->db->order_by('id', 'desc');
        $query = $this->db->get('inventory');
        return $query->result();
    }

    function getInventoryItemById($id) {
        $this->db->select('*');
        $this->db->from('inventory');
        $this->db->where('id', $id);
        $query = $this->db->get();
        return $query->row_array();
    }

    function insertInventoryItem($data) {
        $this->db->insert('inventory', $data);
        $id = $this->db->insert_id();
        return $id;
    }

    function updateInventoryItem($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('inventory', $data);
    }

    function deleteInventoryItem($id) {
        $this->db->where('id', $id);
        $this->db->delete('inventory');
    }

    function getInventoryItemByInvoiceNumber($invoice_number) {
        $this->db->select('*');
        $this->db->from('inventory');
        $this->db->where('invoice_number', $invoice_number);
        $query = $this->db->get();
        return $query->row_array();
    }

    function getInventoryItemByName($name) {
        $this->db->select('*');
        $this->db->from('inventory');
        $this->db->where('name', $name);
        $query = $this->db->get();
        return $query->row_array();
    }

    function getInventoryItemByQuantity($quantity) {
        $this->db->select('*');
        $this->db->from('inventory');
        $this->db->where('quantity', $quantity);
        $query = $this->db->get();
        return $query->row_array();
    }
}