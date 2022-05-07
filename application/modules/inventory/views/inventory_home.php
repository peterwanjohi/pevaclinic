<!--sidebar end-->
<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->
        <section class="panel">
            <header class="panel-heading">
                <!-- <?php echo lang('expense_categories'); ?> -->
                Instruments
                <div class="col-md-4 no-print pull-right">
                    <a href="inventory/addInventoryItemView">
                        <div class="btn-group pull-right">
                            <button id="" class="btn green btn-xs">
                                <i class="fa fa-plus-circle"></i> Add Instrument
                            </button>
                        </div>
                    </a>
                </div>
            </header>
            <div class="panel-body">
                <div class="adv-table editable-table ">
                    <div class="space15"></div>
                    <table class="table table-striped table-hover table-bordered" id="editable-sample">
                        <thead>
                            <tr>
                                <th >image</th>
                                <th>Name</th>
                                <th>Invoice N.O</th>
                                <th>Items on hand</th>
                                <th>Purchase Date</th>
                                <th>Expiry Date</th>
                                <?php if ($this->ion_auth->in_group('admin')) { ?>
                                <th class="no-print"><?php echo lang('options'); ?></th>
                                <?php } ?>
                            </tr>
                        </thead>
                        <tbody>
                            <style>
                                .img_url {
                                    height: 20px;
                                    width: 20px;
                                    background-size: contain;
                                    max-height: 20px;
                                    border-radius: 100px;
                                    border: 1px solid blue;
                                }
                            </style>

                            <?php 
                        if ($inventory_items) {
                                # code...
                            foreach ($inventory_items as $item) { ?>
                                <tr class="">
                                    <td  style="width:10%;"><img style="width:95%;" src="<?php echo $item->image_url; ?>">
                                    </td>
                                    <td><?php echo $item->name; ?></td>
                                    <td><?php echo $item->invoice_number; ?></td>
                                    <td> <?php echo $item->quantity; ?></td>
                                    <td> <?php echo date('m/d/y', $item->purchase_date);  ?> </td>
                                    <td><?php echo date('m/d/y', $item->expiry_date); ?></td>
                                    <?php if ($this->ion_auth->in_group('admin')) { ?>
                                    <td class="no-print">
                                        <a class="btn btn-info btn-xs editbutton" title="<?php echo lang('edit'); ?>"
                                            href="inventory/editInventoryItemView?id=<?php echo $item->id; ?>"><i
                                                class="fa fa-edit"></i> </a>
                                        <a class="btn btn-info btn-xs delete_button" title="<?php echo lang('delete'); ?>"
                                            href="inventory/deleteItem?id=<?php echo $item->id; ?>"
                                            onclick="return confirm('Are you sure you want to delete this item?');"><i
                                                class="fa fa-trash"></i> </a>
                                    </td>
                                    <?php } ?>
                                </tr>
                                <?php }
                        } ?>


                        </tbody>
                    </table>
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
        var table = $('#editable-sample').DataTable({
            responsive: true,

            dom: "<'row'<'col-sm-3'l><'col-sm-5 text-center'B><'col-sm-4'f>>" +
                "<'row'<'col-sm-12'tr>>" +
                "<'row'<'col-sm-5'i><'col-sm-7'p>>",

            buttons: [{
                    extend: 'copyHtml5',
                    exportOptions: {
                        columns: [0, 1],
                    }
                },
                {
                    extend: 'excelHtml5',
                    exportOptions: {
                        columns: [0, 1],
                    }
                },
                {
                    extend: 'csvHtml5',
                    exportOptions: {
                        columns: [0, 1],
                    }
                },
                {
                    extend: 'pdfHtml5',
                    exportOptions: {
                        columns: [0, 1],
                    }
                },
                {
                    extend: 'print',
                    exportOptions: {
                        columns: [0, 1],
                    }
                },
            ],
            aLengthMenu: [
                [10, 25, 50, 100, -1],
                [10, 25, 50, 100, "All"]
            ],
            iDisplayLength: -1,
            "order": [
                [0, "desc"]
            ],

            "language": {
                "lengthMenu": "_MENU_",
                search: "_INPUT_",
                "url": "common/assets/DataTables/languages/<?php echo $this->language; ?>.json"
            }
        });
        table.buttons().container().appendTo('.custom_buttons');

    });
</script>