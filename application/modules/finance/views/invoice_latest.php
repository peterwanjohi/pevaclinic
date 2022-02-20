<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- invoice start-->
        <section class="col-md-6">
            <div class="panel panel-primary" id="invoice">
                <!--<div class="panel-heading navyblue"> INVOICE</div>-->
                <div class="panel-body" style="font-size: 10px;">
                    <div class="row invoice-list">

                        <div class="col-md-12 invoice_head clearfix">

<!--
                            <div class="col-md-6 text-left invoice_head_left">
                                <h3>
                                    <?php echo $settings->title ?>
                                </h3>
                                <h4>
                                    <?php echo $settings->address ?>
                                </h4>
                                <h4>
                                    Tel: <?php echo $settings->phone ?>
                                </h4>
                            </div>
                            -->
                            <div class="col-md-12 text-right invoice_head_right">
                                <img alt="" src="<?php echo $this->settings_model->getSettings()->logo; ?>" width="528" height="144">
                            </div>



                        </div>

                        <div class="col-md-12 hr_border">
                            <hr>
                        </div>


                        <div class="col-md-12">
                            <h4 class="text-center" style="font-weight: bold; margin: -8px 0px -10px 0px; text-transform: uppercase;">
                                <?php echo lang('payment') ?> <?php echo lang('invoice') ?>
                            </h4>
                        </div>

                        <div class="col-md-12 hr_border">
                            <hr>
                        </div>


                        <div class="col-md-12">
                            <div class="col-md-6 pull-left row" style="text-align: left;">
                                <div class="col-md-12 row details" style="">
                                    <p>
                                        <?php $patient_info = $this->db->get_where('patient', array('id' => $payment->patient))->row(); ?>
                                        <label class="control-label"><?php echo lang('patient'); ?> <?php echo lang('name'); ?> </label>
                                        <span style="text-transform: uppercase;"> : 
                                            <?php
                                            if (!empty($patient_info)) {
                                                echo $patient_info->name . ' <br>';
                                            }
                                            ?>
                                        </span>
                                    </p>
                                </div>
                                <div class="col-md-12 row details" style="">
                                    <p>
                                        <label class="control-label"><?php echo lang('patient_id'); ?>  </label>
                                        <span style="text-transform: uppercase;"> : 
                                            <?php
                                            if (!empty($patient_info)) {
                                                echo $patient_info->id . ' <br>';
                                            }
                                            ?>
                                        </span>
                                    </p>
                                </div>
                                
                                <div class="col-md-12 row details" style="">
                                    <p>
                                        <label class="control-label"><?php echo lang('phone'); ?>  </label>
                                        <span style="text-transform: uppercase;"> : 
                                            <?php
                                            if (!empty($patient_info)) {
                                                echo $patient_info->phone . ' <br>';
                                            }
                                            ?>
                                        </span>
                                    </p>
                                </div>
                                
                                
                                
                                <div class="col-md-12 row details" style="">
                                    <p>
                                        <label class="control-label"><?php echo lang('doctor'); ?>  </label>
                                        <span style="text-transform: uppercase;"> : 
                                            <?php
                                            if (!empty($payment->doctor)) {
                                                $doc_details = $this->doctor_model->getDoctorById($payment->doctor);
                                                if (!empty($doc_details)) {
                                                    echo $doc_details->name . ' <br>';
                                                } else {
                                                    echo $payment->doctor_name . ' <br>';
                                                }
                                            }
                                            ?>
                                        </span>
                                    </p>
                                </div>


                            </div>

                            <div class="col-md-6 pull-right" style="text-align: left;">

                                <div class="col-md-12 row details" style="">
                                    <p>
                                        <label class="control-label"><?php echo lang('invoice'); ?>  </label>
                                        <span style="text-transform: uppercase;"> : 
                                            <?php
                                            if (!empty($payment->id)) {
                                                echo $payment->id;
                                            }
                                            ?>
                                        </span>
                                    </p>
                                </div>


                                <div class="col-md-12 row details">
                                    <p>
                                        <label class="control-label"><?php echo lang('date'); ?>  </label>
                                        <span style="text-transform: uppercase;"> : 
                                            <?php
                                            if (!empty($payment->date)) {
                                                echo date('d-m-Y', $payment->date) . ' <br>';
                                            }
                                            ?>
                                        </span>
                                    </p>
                                </div>
                                
                                 <div class="col-md-12 row details">
                                    <p>
                                        <label class="control-label"><?php echo lang('gender'); ?>  </label>
                                        <span style="text-transform: uppercase;"> : 
                                            <?php
                                            if (!empty($patient_info->sex)) {
                                                echo  $patient_info->sex . ' <br>';
                                            }
                                            ?>
                                        </span>
                                    </p>
                                </div>
                                
                                
                                 <div class="col-md-12 row details">
                                    <p>
                                        <label class="control-label"><?php echo lang('age'); ?>  </label>
                                        <span style="text-transform: uppercase;"> : 
                                            <?php
                            if (!empty($patient_info->age)) {
                                echo $patient_info->age. ' Year(s)';
                            }elseif(!empty($patient_info->birthdate)){
                                $birthDate = strtotime($patient_info->birthdate);
                                $birthDate = date('m/d/Y', $birthDate);
                                $birthDate = explode("/", $birthDate);
                                $age = (date("md", date("U", mktime(0, 0, 0, $birthDate[0], $birthDate[1], $birthDate[2]))) > date("md") ? ((date("Y") - $birthDate[2]) - 1) : (date("Y") - $birthDate[2]));
                                echo $age . ' Year(s)';
                            }
                            ?>
                                        </span>
                                    </p>
                                </div>

                               



                            </div>
                            
                            <br>
                            
                            
                            <!--
                             <div class="" style="text-align: left;">
                             <div class="col-md-6 row details doctor_div" style=width: 70%, float: left;>
                                    <p>
                                        <label class="control-label"><?php echo lang('doctor'); ?>  </label>
                                        <span style="text-transform: uppercase;"> : 
                                            <?php
                                            if (!empty($payment->doctor)) {
                                                $doc_details = $this->doctor_model->getDoctorById($payment->doctor);
                                                if (!empty($doc_details)) {
                                                    echo $doc_details->name . ' <br>';
                                                } else {
                                                    echo $payment->doctor_name . ' <br>';
                                                }
                                            }
                                            ?>
                                        </span>
                                    </p>
                                </div>
                                
                                <div class="col-md-6 row details doctor_div" style=width: 70%, float: right;>
                                    <p>
                                        <label class="control-label"><?php echo lang('doctor'); ?>  </label>
                                        <span style="text-transform: uppercase;"> : 
                                            <?php
                                            if (!empty($payment->doctor)) {
                                                $doc_details = $this->doctor_model->getDoctorById($payment->doctor);
                                                if (!empty($doc_details)) {
                                                    echo $doc_details->name . ' <br>';
                                                } else {
                                                    echo $payment->doctor_name . ' <br>';
                                                }
                                            }
                                            ?>
                                        </span>
                                    </p>
                                </div>
                                
                                </div>
                                
                                -->

                        </div>






                    </div> 

                    <div class="col-md-12 hr_border">
                        <hr>
                    </div>




                    <table class="table table-striped table-hover">

                        <thead class="theadd">
                            <tr>
                                <th>#</th>
                                <th><?php echo lang('description'); ?></th>
                                <th><?php echo lang('unit_price'); ?></th>
                                <th><?php echo lang('qty'); ?></th>
                                <th><?php echo lang('amount'); ?></th>
                            </tr>
                        </thead>

                        <tbody>
                            <?php
                            if (!empty($payment->category_name)) {
                                $category_name = $payment->category_name;
                                $category_name1 = explode(',', $category_name);
                                $i = 0;
                                foreach ($category_name1 as $category_name2) {
                                    $i = $i + 1;
                                    $category_name3 = explode('*', $category_name2);
                                    if ($category_name3[3] > 0) {
                                        ?>  

                                        <tr>
                                            <td><?php echo $i; ?> </td>
                                            <td><?php echo $this->finance_model->getPaymentcategoryById($category_name3[0])->category; ?> </td>
                                            <td class=""><?php echo $settings->currency; ?> <?php echo $category_name3[1]; ?> </td>
                                            <td class=""> <?php echo $category_name3[3]; ?> </td>
                                            <td class=""><?php echo $settings->currency; ?> <?php echo $category_name3[1] * $category_name3[3]; ?> </td>
                                        </tr> 
                                        <?php
                                    }
                                }
                            }
                            ?>

                        </tbody>
                    </table>

                    <div class="col-md-12 hr_border">
                        <hr>
                    </div>

                    <div class="">
                        <div class="col-lg-4 invoice-block pull-left">
                            <h4></h4>
                        </div>
                    </div>

                    <div class="">
                        <div class="col-lg-4 invoice-block pull-right">
                            <ul class="unstyled amounts">
                                <li><strong><?php echo lang('sub_total'); ?> : <?php echo $settings->currency; ?> <?php echo $payment->amount; ?></strong></li>
                                <?php if (!empty($payment->discount)) { ?>
                                    <li><strong><?php echo lang('discount'); ?> <?php
                                        if ($discount_type == 'percentage') {
                                            echo '(%) : ';
                                        } else {
                                            echo ': ' . $settings->currency;
                                        }
                                        ?> <?php
                                        $discount = explode('*', $payment->discount);
                                        if (!empty($discount[1])) {
                                            echo $discount[0] . ' %  =  ' . $settings->currency . ' ' . $discount[1];
                                        } else {
                                            echo $discount[0];
                                        }
                                        ?></strong></li>
                                    <?php } ?>
                                    <?php if (!empty($payment->vat)) { ?>
                                    <li><strong>VAT :</strong>   <?php
                                        if (!empty($payment->vat)) {
                                            echo $payment->vat;
                                        } else {
                                            echo '0';
                                        }
                                        ?> % = <?php echo $settings->currency . ' ' . $payment->flat_vat; ?></li>
                                <?php } ?>
                                <li><strong><?php echo lang('grand_total'); ?> : <?php echo $settings->currency; ?> <?php echo $g = $payment->gross_total; ?></strong></li>
                                <li><strong><?php echo lang('amount_received'); ?> : <?php echo $settings->currency; ?> <?php echo $r = $this->finance_model->getDepositAmountByPaymentId($payment->id); ?></strong></li>
                                <li><strong><?php echo lang('amount_to_be_paid'); ?> : <?php echo $settings->currency; ?> <?php echo $g - $r; ?></strong></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-12 hr_border no-print">
                        <hr>
                    </div>

                    <div class="col-md-12 invoice_footer">
                        <div class="col-md-4 row pull-left" style="">
                            <?php echo lang('user'); ?> : <?php echo $this->ion_auth->user($payment->user)->row()->username; ?>
                            <div class="col-md-4 row pull-right" style="">
                            </div>
                        </div>
                    </div>
                </div>
        </section>


        <section class="col-md-6">
            <div class="col-md-5 no-print" style="margin-top: 0px;">
                <a href="finance/payment" class="btn btn-info btn-sm info pull-left"><i class="fa fa-arrow-circle-left"></i>  <?php echo lang('back_to_payment_modules'); ?> </a>
                <div class="text-center col-md-12 row">
                    <a class="btn btn-info btn-sm invoice_button pull-left" onclick="javascript:window.print();"><i class="fa fa-print"></i> <?php echo lang('print'); ?> </a>
                    <?php if ($this->ion_auth->in_group(array('admin'))) { ?>
                        <a href="finance/editPayment?id=<?php echo $payment->id; ?>" class="btn btn-info btn-sm editbutton pull-left"><i class="fa fa-edit"></i> <?php echo lang('edit'); ?> <?php echo lang('invoice'); ?> </a>
                    <?php } ?>
                    <a class="btn btn-info btn-sm detailsbutton pull-left download" id="download"><i class="fa fa-download"></i> <?php echo lang('download'); ?> </a>
                </div>

<?php if ($this->ion_auth->in_group(array('admin'))) { ?>
                <div class="no-print">
                    <a href="finance/addPaymentView" class="pull-left">
                        <div class="btn-group">
                            <button id="" class="btn btn-info green btn-sm">
                                <i class="fa fa-plus-circle"></i> <?php echo lang('add_another_payment'); ?>
                            </button>
                        </div>
                    </a>

                </div>
                <?php } ?>

                <div class="panel_button">

                    <div class="text-center invoice-btn no-print pull-left ">
                        <a href="finance/previousInvoice?id=<?php echo $payment->id ?>"class="btn btn-info btn-lg green previousone1"><i class="glyphicon glyphicon-chevron-left"></i> </a>
                        <a href="finance/nextInvoice?id=<?php echo $payment->id ?>"class="btn btn-info btn-lg green nextone1 "><i class="glyphicon glyphicon-chevron-right"></i> </a>

                    </div>

                </div>

            </div>

        </section>


        <style>

            th{
                text-align: center;
            }

            td{
                text-align: center;
            }

            tr.total{
                color: green;
            }



            .control-label{
                width: 100px;
            }



            h1{
                margin-top: 5px;
            }


            .print_width{
                width: 50%;
                float: left;
            } 

            ul.amounts li {
                padding: 0px !important;
            }

            .invoice-list {
                margin-bottom: 10px;
            }




            .panel{
                border: 0px solid #5c5c47;
                background: #fff !important;
                height: 100%;
                margin: 20px 5px 5px 5px;
                border-radius: 0px !important;
                min-height: 500px;

            }



            .table.main{
                margin-top: -50px;
            }



            .control-label{
                margin-bottom: 0px;
            }

            tr.total td{
                color: green !important;
            }

            .theadd th{
                background: #edfafa !important;
                background: #fff!important;
                border: 1px solid #555 !important;
            }

            td{
                font-size: 12px;
                padding: 5px;
                font-weight: bold;
                border: 1px solid #555;
            }

            .details{
                font-weight: bold;
                margin-bottom: -10px;
            }

            hr{
                border-bottom: 0px solid #f1f1f1 !important;
            }

            .corporate-id {
                margin-bottom: 5px;
            }

            .adv-table table tr td {
                padding: 5px 10px;
            }



            .btn{
                margin: 10px 10px 10px 0px;
            }

            .invoice_head_left h3{
                color: #2f80bf !important;
            }


            .invoice_head_right{
                margin-top: 10px;
            }

            .invoice_footer{
                margin-bottom: 10px;
            }



            .invoice_head_left h4{
                 font-size: 12px !important;
            }
            
             .table thead > tr > th, .table tbody > tr > th, .table tfoot > tr > th, .table thead > tr > td, .table tbody > tr > td, .table tfoot > tr > td {
                padding: 3px;
            }
            
            
            .table>caption+thead>tr:first-child>th, .table>colgroup+thead>tr:first-child>th, .table>thead:first-child>tr:first-child>th, .table>caption+thead>tr:first-child>td, .table>colgroup+thead>tr:first-child>td, .table>thead:first-child>tr:first-child>td {
                text-align: center;
            }
            
            
            
        img{
            display: block;
            margin-left: auto;
            margin-right: auto;
            margin-top: -10px;
        }
          



            @media print {
                
                  #invoice{
                transform: rotate(-90deg);
    transform-origin: 50% 57%;
    width: 75%;
            }

                h1{
                    margin-top: 5px;
                }

                #main-content{
                    padding-top: 0px;
                }

                .print_width{
                    width: 50%;
                    float: left;
                } 

                ul.amounts li {
                    padding: 0px !important;
                }

                .invoice-list {
                    margin-bottom: 0px;
                }
                
                .invoice-list h4{
                    font-size: 12px !important;
                }
                


                .wrapper{
                    margin-top: -30px;
                    margin-left: 25px;
                    height: 550px;
                }

                .wrapper{
                    padding: 0px 0px !important;
                    background: #fff !important;

                }
                
               



                .wrapper{
                    border: 0px solid #777;
                }

                .panel{
                    border: 0px solid #5c5c47;
                    background: #fff !important;
                    padding: 0px 0px;
                    height: 50%;
                    margin: 5px 5px 5px 5px;
                    border-radius: 0px !important;

                }

                .site-min-height {
                    min-height: 510px;
                }



                .table.main{
                    margin-top: -50px;
                }



                .control-label{
                    margin-bottom: 0px;
                    width: auto;
                }

                tr.total td{
                    color: green !important;
                }

                .theadd th{
                    background: #777 !important;
                    border: 1px solid #555 !important;
                }

                td{
                    font-size: 10px !important;
                    padding: 5px;
                    font-weight: bold;
                    border: 1px solid #555;
                }

                .details{
                    font-weight: bold; 
                    font-size: 12px;
                }

                hr{
                    border-bottom: 0px solid #f1f1f1 !important;
                }

                .corporate-id {
                    margin-bottom: 5px;
                }

                .adv-table table tr td {
                    padding: 5px 10px;
                }

                .invoice_head{
                    width: 100%;
                }

                .invoice_head_left{
                    float: left;
                    width: 0%;
                    color: #2f80bf;
                }

                .invoice_head_right{
                    float: right;
                    width: 100%;
                    margin-top: 10px;
                }

                .hr_border{
                    width: 100%;
                    margin: -15px;
                }

                .invoice_footer{
                    margin-bottom: 10px;
                }
                
                
        img{
            display: block;
            margin-left: auto;
            margin-right: auto;
            margin-top: -10px;
        }
               
               
               .doctor_div{
                   width: 1200px;
                   float: left;
               }
               
               


            }

        </style>




        <script src="common/js/codearistos.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.0.272/jspdf.debug.js"></script>

        <script>


                        $('#download').click(function () {
                            var pdf = new jsPDF('p', 'pt', 'letter');
                            pdf.addHTML($('#invoice'), function () {
                                pdf.save('invoice_id_<?php echo $payment->id; ?>.pdf');
                            });
                        });

                        // This code is collected but useful, click below to jsfiddle link.
        </script>



    </section>
    <!-- invoice end-->
</section>
</section>
<!--main content end-->
<!--footer start-->


<script>
                        $(document).ready(function () {
                            $(".flashmessage").delay(3000).fadeOut(100);
                        });
</script>
