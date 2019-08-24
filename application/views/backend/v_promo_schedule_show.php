<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>M-Travel | Gallery</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="shorcut icon" type="text/css" href="<?php echo base_url().'assets/images/favicon.png'?>">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/bootstrap/css/bootstrap.min.css'?>">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/font-awesome/css/font-awesome.min.css'?>">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/plugins/datatables/dataTables.bootstrap.css'?>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/dist/css/AdminLTE.min.css'?>">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/dist/css/skins/_all-skins.min.css'?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/plugins/toast/jquery.toast.min.css'?>"/>

  <link rel="stylesheet" href="<?php echo base_url().'assets/plugins/daterangepicker/daterangepicker.css'?>">
  
	<?php 
            function limit_words($string, $word_limit){
                $words = explode(" ",$string);
                return implode(" ",array_splice($words,0,$word_limit));
            }
                
    ?>
	
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

   <?php 
    $this->load->view('backend/v_header');
    $this->load->view('backend/v_sidebar');
  ?>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
       <h1>
        Show Promo Schedule
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Promo Schedule</li>
      </ol>
    </section>
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
              <div class="box-header">
                <h4><?php echo $data->nama; ?><h4>
              </div>
              <div class="box-body">
                <table class="table table-striped" style="font-size:13px;">
                  <tbody>
                      <tr class="prop">
                        <td valign="top" class="name">Date Start</td>
                        
                        <td valign="top" class="value"><?php echo $data->date_start; ?></td>
                      </tr>  
                      <tr class="prop">
                        <td valign="top" class="name">Date End</td>
                        
                        <td valign="top" class="value"><?php echo $data->date_end; ?></td>
                      </tr>  
                      <tr class="prop">
                        <td valign="top" class="name">Created By</td>
                        
                        <td valign="top" class="value"><?php echo $data->created_by; ?></td>
                      </tr>  
                  </tbody>
                </table>
                <br/>
                <a class="btn btn-success btn-flat" data-toggle="modal" data-target="#largeModal"><span class="fa fa-plus"></span> Add Wisata</a>
                <table id="example1" class="table table-striped" style="font-size:13px;">
                  <thead>
                  <tr>
                      <th>No</th>
                      <th>Wisata</th>
                      <th>user</th>
                      <th>Date created</th>
                      <th style="text-align:right;">Aksi</th>
                  </tr>
                  </thead>
                  <tbody>
                    <?php
                      $no=0;
                          foreach($details as $a):
                              $no++;
                              $wisata=$this->mwisata->getwisata($a->wisata_id)->row();
                              $user = $this->muser->find_user_by_username($a->wisata_user)->row();
        
                      ?>
                      <tr>
                          <td><?php  echo $no?></td>
                          <td><?php echo  $wisata->nama_wisata?></td>
                          <td><?php echo  $user->nama?></td>
                          <td><?php echo  $a->date_created?></td>
                      </tr>
                      <?php endforeach;?>
                  </tbody>
                </table>  

              </div>
              <!-- /.box-body -->
          </div>    
        </div>
      </div>
    </section>    
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 1.0
    </div>
    <strong>Copyright &copy; 2017 <a href="http://mfikri.com">Rizqi A.W</a>.</strong> All rights reserved.
  </footer>

  
  <div class="control-sidebar-bg"></div>
</div>    
      
<!-- ============ MODAL ADD PENGGUNA =============== -->
<div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
    <div class="modal-dialog">
    <div class="modal-content">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
        <h3 class="modal-title" id="myModalLabel">Add Wisata</h3>
    </div>
    <form class="form-horizontal" method="post" action="<?php echo base_url().'backend/promo_schedule_dtl/simpan'?>" enctype="multipart/form-data">
        <div class="modal-body">

            <!-- <div class="form-group">
                <label class="control-label col-xs-3" >User</label>
                <div class="col-xs-8">
                    
                    
                </div>
            </div> -->

            <input name="promo_schedule_id" class="form-control" type="hidden" value="<?php echo $data->id;?>" required>
            <div class="form-group">
                <label class="control-label col-xs-3" >Wisata </label>
                <div class="col-xs-8">
                    <select required name="wisata_id">
                      <option value="" disabled diselected>-- Pilih wisata --</option>
                      <?php                                
                        foreach ($wisatas as $row) {  
                          print_r($row);
                          echo "<option value='".$row->idwisata."'>".$row->nama_wisata."</option>";
                        }
                      echo "</select>";
                      ?>
                </div>
            </div>

        </div>

        <div class="modal-footer">
            <button class="btn btn-flat" data-dismiss="modal" aria-hidden="true">Tutup</button>
            <button class="btn btn-primary btn-flat">Simpan</button>
        </div>
    </form>
    </div>
    </div>
</div>


<!-- jQuery 2.2.3 -->
<script src="<?php echo base_url().'assets/plugins/jQuery/jquery-2.2.3.min.js'?>"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<?php echo base_url().'assets/bootstrap/js/bootstrap.min.js'?>"></script>
<!-- DataTables -->
<script src="<?php echo base_url().'assets/plugins/datatables/jquery.dataTables.min.js'?>"></script>
<script src="<?php echo base_url().'assets/plugins/datatables/dataTables.bootstrap.min.js'?>"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url().'assets/plugins/slimScroll/jquery.slimscroll.min.js'?>"></script>
<!-- FastClick -->
<script src="<?php echo base_url().'assets/plugins/fastclick/fastclick.js'?>"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url().'assets/dist/js/app.min.js'?>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url().'assets/dist/js/demo.js'?>"></script>
<script src="<?php echo base_url().'assets/ckeditor/ckeditor.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'assets/plugins/toast/jquery.toast.min.js'?>"></script>
<script src="<?php echo base_url().'assets/plugins/daterangepicker/moment.js'?>"></script>
<script src="<?php echo base_url().'assets/plugins/daterangepicker/daterangepicker.js'?>"></script>


<script type="text/javascript">
  
  var now = moment().format('MM/DD/YYYY hh:mm:ss');
  $('#date_end').val(moment().format('YYYY-MM-DD hh:mm:ss'));
  $('#date_start').val(moment().format('YYYY-MM-DD hh:mm:ss'));
  $('#date_range').daterangepicker({
    "showWeekNumbers": true,
    "timePicker": true,
    "timePicker24Hour": true,
    "timePickerSeconds": true,
    "startDate": now,
    "endDate": now,
    "minDate": now,
    "locale": {
        format: 'MM/DD/YYYY hh:mm:ss'
    }
  }, function(start, end, label) {
    console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');

    
  }).on('apply.daterangepicker', function(ev, picker) {
      $('#date_start').val(picker.startDate.format('YYYY-MM-DD hh:mm:ss'));
      $('#date_end').val(picker.endDate.format('YYYY-MM-DD hh:mm:ss'));
  });

</script>

<?php if($this->session->flashdata('msg')=='success'):?>
  <script type="text/javascript">
          $.toast({
              heading: 'Success',
              text: "Promoo Wisata Berhasil disimpan ke database.",
              showHideTransition: 'slide',
              icon: 'success',
              hideAfter: false,
              position: 'bottom-right',
              bgColor: '#7EC857'
          });
  </script>
<?php endif;?>
<?php if($this->session->flashdata('msg')=='failed'):?>
  <script type="text/javascript">
          $.toast({
              heading: 'Failed',
              text: "Wisata sudah ada  di Promo",
              showHideTransition: 'slide',
              icon: 'error',
              hideAfter: false,
              position: 'bottom-right',
              bgColor: '#7BF3030'
          });
  </script>
<?php endif;?>
<!-- page script -->
</body>
</html>