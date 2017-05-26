<?php
use yii\helpers\Url;
use yii\helpers\Html;

/* @var $this yii\web\View */

$this->title = 'Best Inventory';
?>



<!-- general form elements -->
<div class="box box-primary">
  <div class="box-header with-border">
    <h3 class="box-title">Report Stock vs Sales</h3>
  </div>
  <!-- /.box-header -->
  <!-- form start -->
  <form id="formupload" role="form" action="<?= Url::to(['dashboard/report_stockvsales']); ?>" method="post" enctype="multipart/form-data">
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

      


    </div>
    <!-- /.box-body -->



    <div class="box-footer">
      <button id="tombolsubmit" type="submit" class="btn btn-primary">Generate Report</button>
    </div>
  </form>
</div>

<div class="box box-primary">
  <div class="box-header with-border">
    <table id="example" class="table table-striped table-bordered" width="100%" cellspacing="0">
      <thead>
        <tr>
          <th>Periode Report</th>

        </tr>
      </thead>
      <tbody>

<?php foreach ($data as $d): ?>
      <tr>
        
          <td><a href="<?= Url::to(['dashboard/show-great-report', 'periode' =>$d->periode ]) ?>"><?= Html::encode($d->periode)?></a></td>

        </tr>
      <?php endforeach; ?>

      </tbody>
    </table>
  </div>
</div>
          <!-- /.box -->