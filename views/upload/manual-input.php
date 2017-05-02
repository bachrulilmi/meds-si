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
    <h3 class="box-title">Manual Input Data</h3>
  </div>
  <!-- /.box-header -->
  <!-- flash message -->
  <?php if (Yii::$app->session->hasFlash('success-input')): ?>

        <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-check"></i> Success!</h4>
                Data berhasil disimpan.
              </div>
    <?php endif; ?>    
    <!-- flash message-end -->
  <!-- form start -->
  <form id="formupload" role="form" action="<?= Url::to(['upload/simpan-manual']); ?>" method="post" enctype="multipart/form-data">
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
              <option value="MAP">MAP</option>
              <option value="NSI">NSI</option>
            </select>
          </div>

          <div class="form-group">
            <label>Nama Barang</label>
            <select name="barang" class="form-control">
            <?php foreach ($data as $d): ?>
              <option value="<?=$d->kode_barang?>"><?=$d->nama_barang?></option>
            <?php endforeach; ?>
              
            </select>
          </div>

          <div class="form-group">
            <label>QTY Barang</label>
            <input type="text" name="qty" class="form-control" placeholder="Kuantitas">
            </select>
          </div>

        </div>
      </div>

      


    </div>
    <!-- /.box-body -->

    <div class="box-footer">
      <button id="tombolsubmit" type="submit" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Simpan Data</button>
    </div>
  </form>
</div>
          <!-- /.box -->