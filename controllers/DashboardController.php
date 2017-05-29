<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use app\models\MstBarang;
use app\models\Inventory;
use app\models\Sales;
use app\models\Reporting;
use app\models\TrnOthers;


class DashboardController extends Controller
{
    /**
     * @inheritdoc
     */
    

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('forminput');
    }

    public function actionStockvsales()
    {
        $q = Reporting::find()->select('periode')->distinct()
            ->all();
        return $this->render('form_stockvsales',['data' => $q]);
    }

    public function actionReport_stockvsales()
    {
        $request = Yii::$app->request;
        $periode = $request->post('bulan')." ".$request->post('tahun');

        //query ini melakukan insert semua kode barang dengan periode tertentu dari table inventory(stock)
        $q = Inventory::find()->select('kode_barang')->distinct()            
            ->where(['periode'=> $periode])
            ->all();

        foreach ($q as $qval) {
            $new = new Reporting();
            $new->periode = $periode;
            $new->kode_barang = (string)($qval->kode_barang);
            $new->save();
        }

        //query ini melakukan insert semua kode barang dengan periode tertentu dari table sales(sales) namun di cek terlebih dahulu apakah sudah ada sebelumnya kode tersebut pada table reporting
        $q2 = Sales::find()->select('kode_barang')->distinct()            
            ->where(['periode'=> $periode])
            ->all();

        foreach ($q2 as $qval) {
            $qcek = Reporting::find()
            ->where(['kode_barang' => $qval->kode_barang])
            ->andWhere(['periode'=> $periode]);
            if($qcek->count() == 0){
                $new = new Reporting();
                $new->periode = $periode;
                $new->kode_barang = (string)($qval->kode_barang);
                $new->save();
            }
        }

        //query ini melakukan insert semua kode barang dengan periode tertentu dari table sales(sales) namun di cek terlebih dahulu apakah sudah ada sebelumnya kode tersebut pada table reporting
        $q2plus = TrnOthers::find()->select('kode_barang')->distinct()            
            ->where(['periode'=> $periode])
            ->all();

        foreach ($q2plus as $qval) {
            $qcek = Reporting::find()
            ->where(['kode_barang' => $qval->kode_barang])
            ->andWhere(['periode'=> $periode]);
            if($qcek->count() == 0){
                $new = new Reporting();
                $new->periode = $periode;
                $new->kode_barang = (string)($qval->kode_barang);
                $new->save();
            }
        }

        //query untuk update semua data pii ke table reporting
        $q3 = Inventory::find()           
            ->where(['principal'=> 'PII'])
            ->andWhere(['periode'=> $periode])
            ->all();

        foreach ($q3 as $qval) {
            $qcek = Reporting::find()
            ->where(['kode_barang' => $qval->kode_barang])
            ->andWhere(['periode'=> $periode]);
            if($qcek->count() > 0){
                $hasil = $qcek->one();
                $hasil->stock_pii = $qval->kuantitas;
                $hasil->save();
            }
        } 

        //query untuk update semua data best ke table reporting
        $q4 = Inventory::find()           
            ->where(['principal'=> 'BEST'])
            ->andWhere(['periode'=> $periode])
            ->all();

        foreach ($q4 as $qval) {
            $qcek = Reporting::find()
            ->where(['kode_barang' => $qval->kode_barang])
            ->andWhere(['periode'=> $periode]);
            if($qcek->count() > 0){
                $hasil = $qcek->one();
                $hasil->stock_best = $qval->kuantitas;
                $hasil->save();
            }
        } 

        //query untuk update semua data stock disti ke table reporting
        $q5 = Inventory::find()
             ->select(['kode_barang', 'SUM(kuantitas) AS kuantitas' ])
            ->where(['not in','principal',(['PII','BEST'])])           
            ->andWhere(['periode'=> $periode])
            ->groupBy('kode_barang')
            ->all();

        foreach ($q5 as $qval) {
            $qcek = Reporting::find()
            ->where(['kode_barang' => $qval->kode_barang])
            ->andWhere(['periode'=> $periode]);
            if($qcek->count() > 0){
                $hasil = $qcek->one();
                $hasil->stock_disti = $qval->kuantitas;
                $hasil->save();
            }
        }  

        //query untuk update semua data sales in ke table reporting
        $q6 = Sales::find()           
            ->where(['principal'=> 'IN'])
            ->andWhere(['periode'=> $periode])
            ->all();

        foreach ($q6 as $qval) {
            $qcek = Reporting::find()
            ->where(['kode_barang' => $qval->kode_barang])
            ->andWhere(['periode'=> $periode]);
            if($qcek->count() > 0){
                $hasil = $qcek->one();
                $hasil->sales_in = $qval->kuantitas;
                $hasil->save();
            }
        } 

         //query untuk update semua data Sales Out ke table reporting
        $q7 = Sales::find()
             ->select(['kode_barang', 'SUM(kuantitas) AS kuantitas' ])
            ->where(['not',['Principal'=>'IN']])           
            ->andWhere(['periode'=> $periode])
            ->groupBy('kode_barang')
            ->all();

        foreach ($q7 as $qval) {
            $qcek = Reporting::find()
            ->where(['kode_barang' => $qval->kode_barang])
            ->andWhere(['periode'=> $periode]);
            if($qcek->count() > 0){
                $hasil = $qcek->one();
                $hasil->sales_out = $qval->kuantitas;
                $hasil->save();
            }
        }  

        //query untuk update semua data Proses ke table reporting
        $q8 = TrnOthers::find()
             ->select(['kode_barang', 'SUM(kuantitas) AS kuantitas' ])
            ->where(['type'=>'PROSES'])           
            ->andWhere(['periode'=> $periode])
            ->groupBy('kode_barang')
            ->all();

        foreach ($q8 as $qval) {
            $qcek = Reporting::find()
            ->where(['kode_barang' => $qval->kode_barang])
            ->andWhere(['periode'=> $periode]);
            if($qcek->count() > 0){
                $hasil = $qcek->one();
                $hasil->proses = $qval->kuantitas;
                $hasil->save();
            }
        }

        //query untuk update semua data Stock OTW ke table reporting
        $q9 = TrnOthers::find()
             ->select(['kode_barang', 'SUM(kuantitas) AS kuantitas' ])
            ->where(['type'=>'STOCK ON THE WAY'])           
            ->andWhere(['periode'=> $periode])
            ->groupBy('kode_barang')
            ->all();

        foreach ($q9 as $qval) {
            $qcek = Reporting::find()
            ->where(['kode_barang' => $qval->kode_barang])
            ->andWhere(['periode'=> $periode]);
            if($qcek->count() > 0){
                $hasil = $qcek->one();
                $hasil->stock_otw = $qval->kuantitas;
                $hasil->save();
            }
        }    

        Yii::$app->session->setFlash('success-generate');
        return $this->redirect(['dashboard/stockvsales']);
        //return $this->render('index',['data' => $q,'periode'=>$periode, 'disti'=>$principal]);
    }

    public function actionShowGreatReport($periode){


        $q = Reporting::find()
            ->with('mstBarang')
            ->where(['periode'=> $periode])
            ->all();

        return $this->render('greatreport',['data' => $q,'periode'=>$periode]);

    }

    public function actionShowData()
    {
        $request = Yii::$app->request;
        $periode = $request->post('bulan')." ".$request->post('tahun');
        $principal = $request->post('prin');

        if($principal == 'BEST' || $principal == 'PII' || $principal == 'ALIDA' || $principal == 'KP' || $principal == 'MAP' || $principal == 'MHF BOGOR' || $principal == 'MHF PUSAT' || $principal == 'NSI'){

            $q = Inventory::find()
            ->with('mstBarang')
            ->where(['periode'=> $periode])
            ->andWhere(['principal'=> $principal])
            ->all();

        }else{

            $q = Sales::find()
            ->with('mstBarang')
            ->where(['periode'=> $periode])
            ->andWhere(['principal'=> $principal])
            ->all();          

        }
        

        return $this->render('index',['data' => $q,'periode'=>$periode, 'disti'=>$principal]);
    }

    



}
