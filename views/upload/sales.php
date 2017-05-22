<?php
use yii\helpers\Url;

/* @var $this yii\web\View */

$this->title = 'Best Inventory';
?>


<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      
      <div class="modal-body">
      <center>
      <img src="image/balls.svg">
        <p>Data anda sedang diproses, silahkan tunggu . . .</p>  
      </center>
      
      </div>
      
    </div>

  </div>
</div>
<!-- general form elements -->
<div class="box box-primary">
  <div class="box-header with-border">
    <h3 class="box-title">Upload Data Sales</h3>
  </div>
  <!-- /.box-header -->
  <!-- flash message -->
  <?php if (Yii::$app->session->hasFlash('success-upload')): ?>

        <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-check"></i> Success!</h4>
                Data berhasil diupload.
              </div>
    <?php endif; ?>    
    <!-- flash message-end -->
  <!-- form start -->
  <form id="formupload" role="form" action="<?= Url::to(['upload/process-data']); ?>" method="post" enctype="multipart/form-data">
    <input type="hidden" name="_csrf" value="<?=Yii::$app->request->getCsrfToken()?>" />
    <div class="box-body">
      <div class="row">
        <div class="col-xs-3">
          <div class="form-group">
            <label>Bulan</label>
            <select name="bulan" class="form-control">
              <option value="Januari">Januari</option>
              <option value="Februari">Februari</option>
              <option value="Maret">Maret</option>
              <option value="April">April</option>
              <option value="Mei">Mei</option>
              <option value="Juni">Juni</option>
              <option value="Juli">Juli</option>
              <option value="Agustus">Agustus</option>
              <option value="September">September</option>
              <option value="Oktober">Oktober</option>
              <option value="November">November</option>
              <option value="Desember">Desember</option>
            </select>
          </div>
        </div>
        <div class="col-xs-4">
          <div class="form-group">
            <label>Tahun</label>
            <select name="tahun" class="form-control">
              <option value="2017">2017</option>
              <option value="2018">2018</option>
              <option value="2019">2019</option>
              <option value="2020">2020</option>
              <option value="2021">2021</option>
            </select>
          </div>
        </div>
        <div class="col-xs-5">

        </div>
      </div>

      <div class="row">
        <div class="col-xs-7">
          <div class="form-group">
            <label>Distributor/Principal</label>
            <select name="prin" class="form-control">
              <option value="IN">IN</option>
              <option value="OUT - ALIDA">OUT - ALIDA</option>
              <option value="OUT - KP">OUT - KP</option>
              <option value="OUT - MAP">OUT - MAP</option>
              <option value="OUT - MHF BOGOR">OUT - MHF BOGOR</option>
              <option value="OUT - MHF PUSAT">OUT - MHF PUSAT</option>
              <option value="OUT - NSI">OUT - NSI</option>
              <option value="OUT - SURYATARA">OUT - SURYATARA</option>

            </select>
          </div>
        </div>
      </div>

      <div class="form-group">
        <label for="exampleInputFile">Upload File Laporan</label>
        <input type="file" id="exampleInputFile" name="datareport">

        <p class="help-block">File yang diperbolehkan hanya .xls maks 2 MB</p>
      </div>


    </div>
    <!-- /.box-body -->

    <div class="box-footer">
      <button id="tombolsubmit" type="submit" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Upload Data</button>
    </div>
  </form>
</div>
          <!-- /.box -->