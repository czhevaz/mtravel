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
        Promo Schedule
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
                <a class="btn btn-success btn-flat" data-toggle="modal" data-target="#largeModal"><span class="fa fa-plus"></span> Add New</a>
              </div>
              <div class="box-body">
                <table id="example1" class="table table-striped" style="font-size:13px;">
                  <thead>
                  <tr>
                      <th>No</th>
                      <th>Nama</th>
                      <th>Date Start</th>
                      <th>Date End</th>
                      
                      <th style="text-align:right;">Aksi</th>
                  </tr>
                  </thead>
                  <tbody>
                    <?php
                      $no=0;
                          foreach($data->result_array() as $a):
                              $no++;
                              $id=$a['id'];
                              $nama=$a['nama'];
                              $date_start=$a['date_start'];
                              $date_end=$a['date_end'];
                              
                      ?>
                  <tr>
                    
                    <td><?php echo $no;?></td>
                    <td><?php echo $nama;?></td>
                    <td><?php echo $date_start;?></td>
                    <td><?php echo $date_end;?></td>
                    <td style="text-align:right;">
                          <a href="<?php echo base_url().'backend/promo_schedule/view_schedule/'.$id?>" class="btn" ><span class="fa fa-eye"></span></a>

                          <a class="btn" data-toggle="modal" data-target="#ModalUpdate<?php echo $id;?>"><span class="fa fa-pencil"></span></a>
                          
                          <a class="btn" data-toggle="modal" data-target="#ModalHapus<?php echo $id;?>"><span class="fa fa-trash"></span></a>
                    </td>
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
        <h3 class="modal-title" id="myModalLabel">Add Promo Scheduled</h3>
    </div>
    <form class="form-horizontal" method="post" action="<?php echo base_url().'backend/promo_schedule/simpan_schedule'?>" enctype="multipart/form-data">
        <div class="modal-body">

            <div class="form-group">
                <label class="control-label col-xs-3" >Nama Promo</label>
                <div class="col-xs-8">
                    <input name="nama" class="form-control" type="text" placeholder="nama" required>
                    
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-xs-3" >Jadwal Promo</label>
                <div class="col-xs-8">
                    <input name="date_range" id="date_range" class="form-control" type="text" placeholder="Jadwal promo" required>
                    <input name="date_start" id="date_start" class="form-control" type="hidden" placeholder="Jadwal promo" required>
                    <input name="date_end" id="date_end" class="form-control" type="hidden" placeholder="Jadwal promo" required>
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

<?php
    $no=0;
    foreach($data->result_array() as $a):
        $no++;
        $id=$a['id'];
        $nama=$a['nama'];
        $date_start=$a['date_start'];
        $date_end=$a['date_end'];
        
?>
<div class="modal fade" id="ModalHapus<?php echo $id;?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span class="fa fa-close"></span></span></button>
                        <h4 class="modal-title" id="myModalLabel">Hapus Pengguna</h4>
                    </div>
                    <form class="form-horizontal" action="<?php echo base_url().'backend/promo_schedule/hapus_schedule'?>" method="post" enctype="multipart/form-data">
                    <div class="modal-body">       
                     <input type="hidden" name="kode" value="<?php echo $id;?>"/> 
                          <p>Apakah Anda yakin mau menghapus Pengguna <b><?php echo $nama;?></b> ?</p>
                               
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary btn-flat" id="simpan">Hapus</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
  <?php endforeach;?>


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
              text: "Promoo Schedule Berhasil disimpan ke database.",
              showHideTransition: 'slide',
              icon: 'success',
              hideAfter: false,
              position: 'bottom-right',
              bgColor: '#7EC857'
          });
  </script>
<?php endif;?>
<!-- page script -->