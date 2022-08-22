<div class="col-md-offset-1 col-md-10 col-md-offset-1 well">
  <div class="form-msg"></div>
  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <h3 style="display:block; text-align:center;">Update Surat</h3>

  <form id="form-update-surat" method="POST" enctype="multipart/form-data">
    <input type="hidden" name="id" value="<?php echo $dataSurat->id; ?>">
    <div class="input-group form-group">
      <span class="input-group-addon" id="sizing-addon2">
        <i class="glyphicon glyphicon-user"></i>
      </span>
      <input type="text" value="<?php echo $dataSurat->nama; ?>" class="form-control" placeholder="Nama Penerima" name="nama" aria-describedby="sizing-addon2">
    </div>
    <div class="input-group form-group">
      <span class="input-group-addon" id="sizing-addon2">
        <i class="glyphicon glyphicon-envelope"></i>
      </span>
      <input type="text" value="<?php echo $dataSurat->nomor_surat; ?>" class="form-control" placeholder="Nomor Surat" name="nomor_surat" aria-describedby="sizing-addon2">
    </div>
    
    <div class="input-group form-group">
      <span class="input-group-addon" id="sizing-addon2">
        <i class="glyphicon glyphicon-home"></i>
      </span>
      <input type="text" class="form-control" value="<?php echo $dataSurat->tujuan; ?>" placeholder="Tujuan" name="tujuan" aria-describedby="sizing-addon2">
    </div>
    <div class="input-group form-group">

      <span class="input-group-addon" id="sizing-addon2">
        <i class="glyphicon glyphicon-calendar"></i>
      </span>
       <p>Tanggal Surat</p>
     <input type="date" value="<?php echo $dataSurat->tanggal_surat; ?>" class="form-control" name="tanggal_surat">
    </div>

     <div class="input-group form-group">

      <span class="input-group-addon" id="sizing-addon2">
        <i class="glyphicon glyphicon-calendar"></i>
      </span>
       <p>Tanggal Pengambilan Surat</p>
     <input type="date" value="<?php echo $dataSurat->tanggal_pengembalian_surat; ?>" class="form-control" name="tanggal_pengembalian_surat">
    </div>

   
    
  
    <div class="form-group">

      <div class="col-md-12">

          <button type="submit" class="form-control btn btn-primary"> <i class="glyphicon glyphicon-ok"></i> Update Data</button>
      </div>
    </div>
  </form>
</div>


<script type="text/javascript">
$(function () {
    $(".select2").select2();

    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_flat-blue',
      radioClass: 'iradio_flat-blue'
    });
});
</script>