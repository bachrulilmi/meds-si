<?php
use yii\helpers\Url;
use yii\helpers\Html;
use yii\widgets\MaskedInput;
use app\models\TrnPo;
/* @var $this yii\web\View */

$this->title = 'Best Inventory';
?>

<div class="callout callout-success">
                <h4>Report Periode <?=$periode ?> </h4>

                
              </div >
<table style="font-size: 12px"  id="example" class="table table-striped table-bordered" width="100%" cellspacing="0">
  <thead>
    <tr>
    <?php
    $q = TrnPo::find()->select('no_po')->distinct()            
            ->where(['periode'=> $periode])
            ->all();
            $kolompo="";
        foreach ($q as $qval) {
          $kolompo .= "<th>".$qval->no_po."</th>";
        }


    ?>
      <th>Nama Barang</th>
      <th>Stock Disti</th>
      <th>Stock BEST</th>
      <th>Stock PII</th>
      <th>T. Stock</th>
      <th>Proses</th>
      <th>Stock OTW</th>
      <!--?= $kolompo; ?-->
      <th>T. PO + OTW</th>
      <th>T. Stock Ready</th>
      <th>T. Stock Global</th>
      <th>Sales IN</th>
      <th>Sales OUT</th>
      <th>Disti vs S. OUT</th>
      <th>Merch vs S. IN</th>
      <th>Stock vs S. IN</th>
      <th>P. Proses</th>
      <th>P. Order USA</th>



    </tr>
  </thead>
  <tfoot>
    <tr>
     <th>Nama Barang</th>
      <th>Stock Disti</th>
      <th>Stock BEST</th>
      <th>Stock PII</th>
      <th>T. Stock</th>
      <th>Proses</th>
      <th>Stock OTW</th>
      <!--?= $kolompo; ?-->
      <th>T. PO + OTW</th>
      <th>T. Stock Ready</th>
      <th>T. Stock Global</th>
      <th>Sales IN</th>
      <th>Sales OUT</th>
      <th>Disti vs S. OUT</th>
      <th>Merch vs S. IN</th>
      <th>Stock vs S. IN</th>
      <th>P. Proses</th>
      <th>P. Order USA</th>
    </tr>
  </tfoot>
  <tbody>




    <?php foreach ($data as $d): ?>
      <tr>
        
          <td><?= Html::encode($d->mstBarang->nama_barang)?></td>
          <td><?= Html::encode(number_format($d->stock_disti, 0, ',', '.')) ?></td>
          <td><?= Html::encode(number_format($d->stock_best, 0, ',', '.')) ?></td>
          <td><?= Html::encode(number_format($d->stock_pii, 0, ',', '.')) ?></td>
          <td><?= Html::encode(number_format($t_stock=$d->stock_pii+$d->stock_best, 0, ',', '.')) ?></td>
          <td><?= Html::encode(number_format($d->proses, 0, ',', '.')) ?></td>
          <td><?= Html::encode(number_format($d->stock_otw, 0, ',', '.')) ?></td>
          <?php
        $totalpo=0;
        foreach ($q as $qval) {
          $q2 = TrnPo::find()->select('kuantitas')->distinct()            
            ->where(['periode'=> $periode])
            ->andWhere(['no_po'=> $qval->no_po])
            ->andWhere(['kode_barang'=> $d->kode_barang]);
            
          if($q2->count()> 0){
              $po = $q2->one();
              $totalpo += $po->kuantitas;
              //echo  "<td>".$po->kuantitas ."</td>";
                
          }else{
              //echo  "<td></td>";    
          }
          
        }


        $mer_salesin=0;
        $st_salesin=0;
        ?>

          <td><?= Html::encode(number_format($po_pl_st=$d->stock_otw+$totalpo, 0, ',', '.')) ?></td>
          <td><?= Html::encode(number_format($t_ready=$t_stock+$d->stock_disti+$d->proses, 0, ',', '.')) ?></td>
          <td><?= Html::encode(number_format($po_pl_st+$t_ready, 0, ',', '.')) ?></td>
          <td><?= Html::encode(number_format($d->sales_in, 0, ',', '.')) ?></td>
          <td><?= Html::encode(number_format($d->sales_out, 0, ',', '.')) ?></td>
          <td><?= ($d->sales_out == 0) ? 'DIV/0' : Html::encode(number_format($d->stock_disti/$d->sales_out, 0, ',', '.')) ?></td>
          <td><?= ($d->sales_in == 0) ? 'DIV/0' : Html::encode(number_format($mer_salesin=($d->stock_best+$d->stock_pii)/$d->sales_in, 0, ',', '.')) ?></td>
          <td><?= ($d->sales_in == 0) ? 'DIV/0' : Html::encode(number_format($st_salesin=($po_pl_st+$t_ready)/$d->sales_in, 0, ',', '.')) ?></td>
          <td><?= Html::encode(number_format(($mer_salesin - 1)*$d->sales_in, 0, ',', '.')) ?></td>
          <td><?= Html::encode(number_format(($st_salesin - 6)*$d->sales_in, 0, ',', '.')) ?></td>

        </tr>
      <?php endforeach; ?>

    </tbody>
  </table>

  <button id="tombolsubmit" type="button" onclick="window.history.back()" class="btn btn-primary">Kembali <<</button>

