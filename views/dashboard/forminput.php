<?php
use yii\helpers\Url;

/* @var $this yii\web\View */

$this->title = 'Best Inventory';
?>



<!-- general form elements -->
<div class="box box-primary">
  <div class="box-header with-border">
    <h3 class="box-title">Show Information</h3>
  </div>
  <!-- /.box-header -->
  <!-- form start -->
  <form id="formupload" role="form" action="<?= Url::to(['dashboard/show-data']); ?>" method="post" enctype="multipart/form-data">
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
              <option value="BEST">BEST</option>
              <option value="PIT">PII</option>

            </select>
          </div>
        </div>
      </div>


    </div>
    <!-- /.box-body -->

    <div class="box-footer">
      <button id="tombolsubmit" type="submit" class="btn btn-primary">Tampilkan</button>
    </div>
  </form>
</div>
          <!-- /.box -->