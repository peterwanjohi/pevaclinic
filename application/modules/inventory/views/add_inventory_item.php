<!--sidebar end-->
<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height row">
        <!-- page start-->
        <section class="col-md-12">
            <header class="panel-heading">
                <?php  
                    if(!empty($inventory->id)){
                        echo 'Edit Instrument';
                    }else{
                        echo 'Add Instrument';
                    } 
                ?>


                <div class="col-md-4 no-print pull-right">
                    <a href="inventory/InventoryList">
                        <div class="btn-group pull-right">
                            <button id="" class="btn green btn-xs">
                                <i class="fa fa-plus-circle"></i> Back
                            </button>
                        </div>
                    </a>
                </div>
            </header>
            <div class="panel-body">
                <div class="adv-table editable-table ">
                    <div class="clearfix">

                        <?php echo validation_errors(); ?>
                        <?php echo $this->session->flashdata('feedback'); ?>

                        <form role="form" action="inventory/addInventoryItem" class="clearfix row" method="post"
                            enctype="multipart/form-data">

                            <div class="form-group col-md-12">
                                <label for="invoice_number">Invoice number</label>
                                <input type="text" class="form-control" name="invoice_number" id="invoice_number" value="<?php
                                    if(!empty($setval)){
                                        echo set_value('invoice_number');
                                    }
                                    if (!empty($inventory->invoice_number)) {
                                        echo $inventory->invoice_number;
                                    }
                                ?>">
                            </div>
                            <div class="row col-md-12">
                                <div class="form-group col-md-6">
                                    <label for="exampleInputEmail1">Name</label>
                                    <input type="text" class="form-control" name="name" id="name"
                                        placeholder="name of item" value="<?php
                                            if(!empty($setval)){
                                                echo set_value('name');
                                            }
                                            if (!empty($inventory->name)) {
                                                echo $inventory->name;
                                            }
                                        ?>">
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="exampleInputEmail1">Quantity</label>
                                    <input type="number" class="form-control" name="quantity" id="quantity"
                                        placeholder="quantity purchased" value="<?php
                                            if(!empty($setval)){
                                                echo set_value('quantity');
                                            }
                                            if (!empty($inventory->quantity)) {
                                                echo $inventory->quantity;
                                            }
                                        ?>" required>
                                </div>
                            </div>

                            <div class="row col-md-12">
                                <div class="form-group col-md-6">
                                    <label for="exampleInputEmail1">Purchase date <small style="color: blue;">*the
                                            purchase date cannot be greater than today</small> </label>
                                    <input type="text" class="form-control pay_in default-date-picker"
                                        name="purchase_date" id="purchase_date" value="<?php
                                            if(!empty($setval)){
                                                echo set_value('purchase_date');
                                            }
                                            if (!empty($inventory->purchase_date)) {
                                                echo date('d-m-Y', $inventory->purchase_date);
                                            }
                                        ?>" placeholder="mm-dd-yyyy" required>
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="exampleInputEmail1">Expiry date</label>
                                    <input type="text" class="form-control pay_in default-date-picker"
                                        name="expiry_date" id="expiry_date" value="<?php
                                            if(!empty($setval)){
                                                echo set_value('expiry_date');
                                            }
                                            if (!empty($inventory->expiry_date)) {
                                                echo date('d-m-Y', $inventory->expiry_date) ;
                                            }
                                        ?>" placeholder="mm-dd-yyyy">
                                </div>

                            </div>

                            <div class="form-group col-md-12">
                                <img src="
                                <?php
                                if(!empty($inventory->image_url)){
                                    echo base_url().$inventory->image_url;
                                }
                                ?>
                                " alt="" id="img_preview" style="width: 200px; height:200px; border:2px solid gray;"
                                    width="500px">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="exampleInputEmail1">Image * <small>(400px * 400px for better
                                        optimization)</small></label>
                                <input type="file" class="form-control" id="image" name="image_url">
                            </div>


                            <input type="hidden" name="id" value='<?php
                            if (!empty($inventory->id)) {
                                echo $inventory->id;
                            }
                            ?>'>
                            <div class="form-group col-md-12">
                                <button type="submit" name="submit"
                                    class="btn btn-info pull-right"><?php echo lang('submit'); ?>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- page end-->
    </section>
</section>
<!--main content end-->
<!--footer start-->

<script src="common/js/codearistos.min.js"></script>
<script>
    $(document).ready(function () {
        /* Toggle Header Edit ==== Add */
        console.log($('#id').val())

        if ($('#id').val() != '') {
            $('#add').hide();
            $('#edit').show();
        } else {
            $('#add').show();
            $('#edit').hide();
        }

        /* ===========Expiry date validation=============== */
        $('#expiry_date').change(function () {
            var purchase_date = $('#purchase_date').val();
            var expiry_date = $('#expiry_date').val();
            if (purchase_date != '' && expiry_date != '') {
                if (purchase_date > expiry_date) {
                    alert('Expiry date must be greater than purchase date');
                    $('#expiry_date').val('');
                }
            }
        });

        /*============== Preview Image before upload =========== */
        $('#image').on('change', function (e) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#img_preview').attr('src', e.target.result);
            }
            reader.readAsDataURL(this.files[0]);
        });

    })
</script>