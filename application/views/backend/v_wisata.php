<!--Counter Inbox-->
<?php 
    $query=$this->db->query("SELECT * FROM tbl_inbox WHERE inbox_status='1'");
    $query2=$this->db->query("SELECT * FROM orders WHERE status <> 'LUNAS'");
    $query3=$this->db->query("SELECT * FROM testimoni WHERE status ='0'");
    $query4=$this->db->query("SELECT * FROM pembayaran");
    $jum_pesan=$query->num_rows();
    $jum_order=$query2->num_rows();
    $jum_testimoni=$query3->num_rows();
    $jum_konfirmasi=$query4->num_rows();
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>M-Travel | Wisata List</title>
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
  <!-- Left side column. contains the logo and sidebar -->


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <a class="btn btn-primary btn-sm pull-right" data-toggle="modal" data-target="#largeModal"><span class="fa fa-upload"></span> Post New</a>
        
        Wisata
        <small></small>
      </h1>
      <!-- <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Wisata</li>
      </ol> -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <?php
          function get_day_name($timestamp) {

              $date = date('yyyy-mm-dd', $timestamp);

              if($date == date('yyyy-mm-dd')) {
                $date = 'Today';
              } 
              
              return $date;
          }

          $username=$this->session->userdata('user');  
          $no=0;
            foreach($data->result_array() as $a):
                $no++;
                $id=$a['idwisata'];
                $gambar=$a['gambar'];
                $nama_wisata=$a['nama_wisata'];
                $deskripsi=$a['deskripsi'];
                $post_by=$a['created_by'];
                $date_created=$a['date_created'];
                $isi=limit_words($a['deskripsi'],25);
                $query=$this->db->query("SELECT * FROM user where username ='$post_by'");
                $user = $query->row();
                $comments=$this->db->query("SELECT * FROM comment WHERE wisata_id=$id ORDER BY date_created asc");  
                $likes=$this->db->query("SELECT * FROM mlike WHERE wisata_id=$id ORDER BY date_created asc");
                
                $likesStatus=$this->db->query("SELECT * FROM mlike WHERE wisata_id=$id AND created_by='$username'");

               
        ?>
        <div class="col-md-6">
          <!-- Box Comment -->
          <div class="box box-widget">
            <div class="box-header with-border">
              <div class="user-block">
                <img class="img-circle" src="<?php echo base_url().'assets/images/'.$user->photo;?>" alt="User Image">
                <span class="username"><a href="#"><?php echo $user->nama; $date_created;?>.</a></span>
                <span class="description">Shared publicly - <?php echo $date_created;?></span>
              </div>
              <!-- /.user-block -->
              <div class="box-tools">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <?php if($user->username == $this->session->userdata('user') || $this->session->userdata('akses')=='1'){ ?>
                <a class="btn btn-box-tool" data-toggle="modal" data-target="#ModalUpdate<?php echo $id;?>"><i class="fa fa-pencil"></i></a>
                <a class="btn btn-box-tool" data-toggle="modal" data-target="#ModalHapus<?php echo $id;?>"><i class="fa fa-times"></i></a>
                <?php } ?>  
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <img class="img-responsive pad" src="<?php echo base_url().'assets/gambars/'.$gambar;?>" alt="Photo">

              <p><h4><b><?php  echo $nama_wisata;?></b></h4></p>
              <p><article><?php echo $deskripsi;?></article></p>
              <!-- button type="button" class="btn btn-default btn-xs"><i class="fa fa-share"></i> Share</button> -->
              <?php if($likesStatus->row()->status==1){?>
                  <button  type="button" class="btn btn-primary btn-xs"><i class="fa fa-thumbs-up" ></i> like</button>  
              <?php }else{?>
                  <button  type="button" class="btn btn-default btn-xs" onclick="insertLike(<?php echo $id;?>,1)"><i class="fa fa-thumbs-o-up" ></i> Like</button>  
              <?php } ?>  
              
              <span class="pull-right text-muted"><?php echo $likes->num_rows(); ?> likes - <?php echo $comments->num_rows(); ?> comments</span>
            </div>
            <!-- /.box-body -->
            <div class="box-footer box-comments">
              <?php
                
                  foreach($comments->result_array() as $c):
                      $commentBy=  $c["created_by"];
                      $userComment=$this->db->query("SELECT * FROM user where username ='$commentBy'")->row();  
              ?>
              <div class="box-comment">
                <!-- User image -->
                <img class="img-circle img-sm" src="<?php echo base_url().'assets/images/'.$userComment->photo;?>" alt="User Image">

                <div class="comment-text">
                      <span class="username">
                        <?php echo $userComment->nama;?>
                        <span class="text-muted pull-right"><?php echo $c["date_created"];?></span>
                      </span><!-- /.username -->
                  <?php echo $c["pesan"];?>
                </div>
                <!-- /.comment-text -->
              </div>
              <!-- /.box-comment -->
              <?php endforeach;?>
              
            </div>
            <!-- /.box-footer -->
            <div class="box-footer">
              
                <!-- <img class="img-responsive img-circle img-sm" src="../dist/img/user4-128x128.jpg" alt="Alt Text"> -->
                <!-- .img-push is used to add margin to elements next to floating images -->
                <div class="img-push">
                  <input id="comment_<?php echo $id;?>" type="text" class="form-control input-sm" placeholder="Press enter to post comment" onkeypress="if(event.keyCode == 13) insertComment(<?php echo $id;?>)">
                </div>
              
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <?php endforeach;?>
        
        <!-- /.col -->
      </div>
      
      
    </section>
    <!-- /.content -->
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
<!-- ./wrapper -->


<!-- ============ MODAL ADD WISATA =============== -->
<div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
    <div class="modal-content">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
        <h3 class="modal-title" id="myModalLabel">Tambah Wisata</h3>
    </div>
    <form class="form-horizontal" method="post" action="<?php echo base_url().'backend/wisata/simpan_wisata'?>" enctype="multipart/form-data">
        <div class="modal-body">

            <div class="form-group">
                <label class="control-label col-xs-2" >Wisata</label>
                <div class="col-xs-8">
                    <input name="nama_wisata" class="form-control" type="text" placeholder="Objek Wisata..." required>
                </div>
            </div>
                   

            <div class="form-group">
                <label class="control-label col-xs-2" >Deskripsi</label>
                <div class="col-xs-8">
                    <textarea class="ckeditor" name="deskripsi" rows="10" cols="10"></textarea>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-xs-2" >Gambar</label>
                <div class="col-xs-8">
                    <input type="file" name="filefoto" required>
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
      $id=$a['idwisata'];
      $gambar=$a['gambar'];
      $deskripsi=$a['deskripsi'];
      $nama_wisata=$a['nama_wisata'];
?>
<!-- ============ MODAL EDIT WISATA =============== -->
<div class="modal fade" id="ModalUpdate<?php echo $id;?>" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
    <div class="modal-content">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
        <h3 class="modal-title" id="myModalLabel">Update Wisata</h3>
    </div>
    <form class="form-horizontal" method="post" action="<?php echo base_url().'backend/wisata/update_wisata'?>" enctype="multipart/form-data">
        <div class="modal-body">

            <div class="form-group">
                <label class="control-label col-xs-2" >Wisata</label>
                <div class="col-xs-8">
                    <input name="nama_wisata" value="<?php echo $nama_wisata;?>" class="form-control" type="text" placeholder="Objek Wisata..." required>
                </div>
            </div>
                   

            <div class="form-group">
                <label class="control-label col-xs-2" >Deskripsi</label>
                <div class="col-xs-8">
                    <textarea class="ckeditor" name="deskripsi" rows="10" cols="10"><?php echo $deskripsi;?></textarea>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-xs-2" >Gambar</label>
                <div class="col-xs-8">
                    <input type="file" name="filefoto">
                </div>
            </div>

        </div>

        <div class="modal-footer">
            <input type="hidden" name="kode" value="<?php echo $id;?>">
            <button class="btn btn-flat" data-dismiss="modal" aria-hidden="true">Tutup</button>
            <button class="btn btn-primary btn-flat">Update</button>
        </div>
    </form>
    </div>
    </div>
</div>

<?php endforeach;?>
	
	<?php
        $no=0;
        foreach($data->result_array() as $a):
            $no++;
            $id=$a['idwisata'];
            $gambar=$a['gambar'];
            $nama_wisata=$a['nama_wisata'];
  ?>
	<!--Modal Hapus Post-->
        <div class="modal fade" id="ModalHapus<?php echo $id;?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span class="fa fa-close"></span></span></button>
                        <h4 class="modal-title" id="myModalLabel">Hapus Wisata</h4>
                    </div>
                    <form class="form-horizontal" action="<?php echo base_url().'backend/wisata/hapus_wisata'?>" method="post" enctype="multipart/form-data">
                    <div class="modal-body">       
							       <input type="hidden" name="kode" value="<?php echo $id;?>"/> 
                          <p>Apakah Anda yakin mau menghapus wisata <b><?php echo $nama_wisata;?></b> ?</p>
                               
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

<script src="<?php echo base_url().'assets/plugins/readmore/readmore.js'?>"></script>

<!-- AdminLTE App -->
<script src="<?php echo base_url().'assets/dist/js/app.min.js'?>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url().'assets/dist/js/demo.js'?>"></script>
<script src="<?php echo base_url().'assets/ckeditor/ckeditor.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'assets/plugins/toast/jquery.toast.min.js'?>"></script>
<!-- page script -->
<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
    CKEDITOR.replace('ckeditor');
  });
</script>
    
    <?php if($this->session->flashdata('msg')=='success'):?>
        <script type="text/javascript">
                $.toast({
                    heading: 'Success',
                    text: "Wisata Berhasil disimpan ke database.",
                    showHideTransition: 'slide',
                    icon: 'success',
                    hideAfter: false,
                    position: 'bottom-right',
                    bgColor: '#7EC857'
                });
        </script>
    <?php elseif($this->session->flashdata('msg')=='info'):?>
        <script type="text/javascript">
                $.toast({
                    heading: 'Info',
                    text: "Wisata berhasil di update",
                    showHideTransition: 'slide',
                    icon: 'info',
                    hideAfter: false,
                    position: 'bottom-right',
                    bgColor: '#00C9E6'
                });
        </script>
    <?php elseif($this->session->flashdata('msg')=='success-hapus'):?>
        <script type="text/javascript">
                $.toast({
                    heading: 'Success',
                    text: "Wisata Berhasil dihapus.",
                    showHideTransition: 'slide',
                    icon: 'success',
                    hideAfter: false,
                    position: 'bottom-right',
                    bgColor: '#7EC857'
                });
        </script>
    <?php else:?>

    <?php endif;?>
 <script type="text/javascript">
  //readmore less
   $('article').readmore({
    collapsedHeight: 80,
    speed: 200,
    lessLink: '<a href="#">Read less</a>'
  });

  function appendItem(){
    /*<div class="box-comment">
                <!-- User image -->
                <img class="img-circle img-sm" src="../dist/img/user3-128x128.jpg" alt="User Image">

                <div class="comment-text">
                      <span class="username">
                        Maria Gonzales
                        <span class="text-muted pull-right">8:03 PM Today</span>
                      </span><!-- /.username -->
                  It is a long established fact that a reader will be distracted
                  by the readable content of a page when looking at its layout.
                </div>
                <!-- /.comment-text -->
              </div>*/
  } 

  function insertComment(id) 
  {
        
    var pesan = $('#comment_'+id).val();    
       console.log(pesan);

        //code to execute here
      $.ajax({
        type: "POST",
        url: "<?php echo base_url().'backend/wisata/simpan_comment?id='?>"+id,
        dataType : 'json',
        data:{pesan:pesan,wisataId:id},
        success: function(d){
          var dInput = this.value;
         if(d.success){
          location.reload();
         }
          
        },
        error: function( req, status, err ) {
            alert( 'something went wrong', status, err );
        }
      });
        
    
    $('#comment_'+id).val('');            
  }  

  // like button 
   function insertLike(id,status) {
      alert(' Like This');
      $.ajax({
        type: "POST",
        url: "<?php echo base_url().'backend/wisata/simpan_like?id='?>"+id,
        dataType : 'json',
        data:{status:status,wisataId:id},
        success: function(d){
          var dInput = this.value;
           if(d.success){
            location.reload();
           }
        },
        error: function( req, status, err ) {
            alert( 'something went wrong', status, err );
        }
      });
  };
 </script>   
</body>
</html>
