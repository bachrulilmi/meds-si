<?php
use yii\helpers\Url;
use yii\helpers\Html;
use yii\widgets\MaskedInput;
/* @var $this yii\web\View */

$this->title = 'Best Inventory';
?>

<div class="callout callout-success">
                <h4>Dashboard Inventory Periode <?=$periode ?> </br> Principal/Distributor : <?=$disti ?></h4>

                
              </div>
<table id="example" class="table table-striped table-bordered" width="100%" cellspacing="0">
  <thead>
    <tr>
      <th>Nama Barang</th>
      <th>Kuantitas</th>

    </tr>
  </thead>
  <tfoot>
    <tr>
      <th>Nama Barang</th>
      <th>Kuantitas</th>
    </tr>
  </tfoot>
  <tbody>




    <?php foreach ($data as $d): ?>
      <tr>
        
          <td><?= Html::encode($d->mstBarang->nama_barang)?></td>
          <td><?= Html::encode(number_format($d->kuantitas, 0, ',', '.')) ?></td>

        </tr>
      <?php endforeach; ?>

    </tbody>
  </table>

  <button id="tombolsubmit" type="button" onclick="window.history.back()" class="btn btn-primary">Kembali <<</button>

