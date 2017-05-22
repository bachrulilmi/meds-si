<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use yii\helpers\Url;
use app\models\MstBarang;
use app\models\Inventory;
use app\models\Sales;


class UploadController extends Controller
{
    /**
     * @inheritdoc
     */
    
    public function behaviors()
    {
        return [
        'verbs' => [
        'class' => VerbFilter::className(),
        'actions' => [
        'delete' => ['post'],
        ],
        ],
        'access' => [
        'class' => \yii\filters\AccessControl::className(),
        'only' => ['index','create','update','view','process-data'],
        'rules' => [
                            // allow authenticated users
        [
        'allow' => true,
        'roles' => ['@'],
        ],
                            // everything else is denied
        ],
        ],            
        ];
    } 

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        Url::remember();
        return $this->render('index');
    }

    public function actionSales()
    {
        Url::remember();
        return $this->render('sales');
    }

    public function actionManualInput(){
        $query = MstBarang::find()->select(['kode_barang', 'nama_barang'])->distinct()->all();

        return $this->render('manual-input',['data'=>$query]);
    }

    public function actionProcessData()
    {
        set_time_limit(500);
        $request = Yii::$app->request;
        $periode = $request->post('bulan')." ".$request->post('tahun');
        $principal = $request->post('prin');

        $file = UploadedFile::getInstanceByName('datareport');
        if(!empty($file)){
            $newname = Yii::$app->getSecurity()->generateRandomString(10).$file->baseName.'.'.$file->extension;
            $file->saveAs('file-ori/' . $newname);

            $this->ReadReport($newname,$principal,$periode);

            Yii::$app->session->setFlash('success-upload');

            $url = Url::previous();
            return $this->redirect($url);

        }
        else{
            $request = Yii::$app->request;
            $name = $request->post('bulan');
            echo $name;
        }



    }

    private function ReadReport($newname,$principal,$periode){

        //proses extraksi file excel
        $tmpfname = "file-ori/".$newname;
        $excelReader = \PHPExcel_IOFactory::createReaderForFile($tmpfname);
        $excelObj = $excelReader->load($tmpfname);
        $worksheet = $excelObj->getSheet(0);
        $lastRow = $worksheet->getHighestRow();
        
        //proses extraksi file excel
        switch ($principal) {
        case "BEST":
                for ($row = 1; $row <= $lastRow; $row++) {

                   $datacell = $worksheet->getCell('G'.$row)->getValue();
                   $query = MstBarang::find()->where(['alias' => $datacell]);
                   if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('L'.$row)->getValue());
                    $this->SimpanInventory($data->kode_barang,$qty,$periode,$principal);
                       
                    }
                }

                for ($row = 1; $row <= $lastRow; $row++) {

                   $datacell = $worksheet->getCell('H'.$row)->getValue();
                   $query = MstBarang::find()->where(['alias' => $datacell]);
                   if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('L'.$row)->getValue());
                    $this->SimpanInventory($data->kode_barang,$qty,$periode,$principal);
                            
                    }
                }
        break;

        case "PII":
                for ($row = 1; $row <= $lastRow; $row++) {

                   $datacell = $worksheet->getCell('G'.$row)->getValue();
                   $query = MstBarang::find()->where(['alias' => $datacell]);
                   if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('L'.$row)->getValue());
                    $this->SimpanInventory($data->kode_barang,$qty,$periode,$principal);
                       
                    }
                }

                for ($row = 1; $row <= $lastRow; $row++) {

                   $datacell = $worksheet->getCell('H'.$row)->getValue();
                   $query = MstBarang::find()->where(['alias' => $datacell]);
                   if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('L'.$row)->getValue());
                    $this->SimpanInventory($data->kode_barang,$qty,$periode,$principal);
                            
                    }
                }

        break;

        case "ALIDA":
               for ($row = 1; $row <= $lastRow; $row++) {

                   $datacell = $worksheet->getCell('B'.$row)->getValue();
                   $query = MstBarang::find()->where(['alias' => $datacell]);
                   if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('M'.$row)->getValue())+intval($worksheet->getCell('O'.$row)->getValue());
                    $this->SimpanInventory($data->kode_barang,$qty,$periode,$principal);
                            
                    }
                } 
        break;

        case "KP":
               for ($row = 1; $row <= $lastRow; $row++) {

                   $datacell = $worksheet->getCell('C'.$row)->getValue();
                   $query = MstBarang::find()->where(['alias' => $datacell]);
                   if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('E'.$row)->getValue());
                    $this->SimpanInventory($data->kode_barang,$qty,$periode,$principal);
                            
                    }
                } 
        break;

        case "MHF BOGOR":
               for ($row = 1; $row <= $lastRow; $row++) {

                   $datacell = $worksheet->getCell('C'.$row)->getValue();
                   $query = MstBarang::find()->where(['alias' => $datacell]);
                   if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('D'.$row)->getValue());
                    $this->SimpanInventory($data->kode_barang,$qty,$periode,$principal);
                            
                    }
                } 
        break;

        case "MHF PUSAT":
               for ($row = 1; $row <= $lastRow; $row++) {

                   $datacell = $worksheet->getCell('C'.$row)->getValue();
                   $query = MstBarang::find()->where(['alias' => $datacell]);
                   if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('W'.$row)->getValue());
                    $this->SimpanInventory($data->kode_barang,$qty,$periode,$principal);
                            
                    }
                } 
        break;

        case "IN":
               for ($row = 1; $row <= $lastRow; $row++) {

                   $datacell = $worksheet->getCell('B'.$row)->getValue();
                   $query = MstBarang::find()->where(['alias' => $datacell]);
                   if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('J'.$row)->getValue());
                    $this->SimpanSales($data->kode_barang,$qty,$periode,$principal);
                            
                    }
                } 
        break;

        case "OUT - ALIDA":
               for ($row = 1; $row <= $lastRow; $row++) {

                   $datacell = $worksheet->getCell('A'.$row)->getValue();
                   $query = MstBarang::find()->where(['alias' => $datacell]);
                   if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('E'.$row)->getValue());
                    $this->SimpanSales($data->kode_barang,$qty,$periode,$principal);
                            
                    }
                } 
        break;

        case "OUT - KP":
               for ($row = 1; $row <= $lastRow; $row++) {

                   $datacell = $worksheet->getCell('L'.$row)->getValue();
                   $query = MstBarang::find()->where(['alias' => $datacell]);
                   if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('M'.$row)->getValue());
                    $this->SimpanSales($data->kode_barang,$qty,$periode,$principal);
                            
                    }
                } 
        break;

        case "OUT - MAP":
               for ($row = 1; $row <= $lastRow; $row++) {

                   $datacell = $worksheet->getCell('D'.$row)->getValue();
                   $query = MstBarang::find()->where(['alias' => $datacell]);
                   if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('F'.$row)->getValue());
                    $this->SimpanSales($data->kode_barang,$qty,$periode,$principal);
                            
                    }
                } 
        break;

        case "OUT - MHF BOGOR":
               for ($row = 1; $row <= $lastRow; $row++) {

                   $datacell = $worksheet->getCell('H'.$row)->getValue();
                   $query = MstBarang::find()->where(['alias' => $datacell]);
                   if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('K'.$row)->getValue());
                    $this->SimpanSales($data->kode_barang,$qty,$periode,$principal);
                            
                    }
                } 
        break;

        case "OUT - MHF PUSAT":
               for ($row = 1; $row <= $lastRow; $row++) {

                   $datacell = $worksheet->getCell('G'.$row)->getValue();
                   $query = MstBarang::find()->where(['alias' => $datacell]);
                   if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('J'.$row)->getValue());
                    $this->SimpanSales($data->kode_barang,$qty,$periode,$principal);
                            
                    }
                } 
        break;

        case "OUT - NSI":
               for ($row = 1; $row <= $lastRow; $row++) {

                   $datacell = $worksheet->getCell('J'.$row)->getValue();
                   $query = MstBarang::find()->where(['alias' => $datacell]);
                   if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('K'.$row)->getValue());
                    $this->SimpanSales($data->kode_barang,$qty,$periode,$principal);
                            
                    }
                } 
        break;

        case "OUT - SURYATARA":
               for ($row = 1; $row <= $lastRow; $row++) {

                   $datacell = $worksheet->getCell('E'.$row)->getValue();
                   $query = MstBarang::find()->where(['alias' => $datacell]);
                   if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('F'.$row)->getValue());
                    $this->SimpanSales($data->kode_barang,$qty,$periode,$principal);
                            
                    }
                } 
        break;
        default:
        echo "Your favorite color is neither red, blue, nor green!";
        }

    }

    public function actionSimpanManual(){
        $request = Yii::$app->request;
        $periode = $request->post('bulan')." ".$request->post('tahun');
        $principal = $request->post('prin');
        $kdbarang = $request->post('barang');
        $qty = $request->post('qty');
        if($this->SimpanInventory($kdbarang,$qty,$periode,$principal)){
            Yii::$app->session->setFlash('success-input');
            return $this->redirect(['upload/manual-input']);
        }else{

        }
    }

private function SimpanSales($kd_brg,$qty,$periode,$principal){
    $q = Sales::find()
    ->where(['kode_barang' => $kd_brg])
    ->andWhere(['periode'=> $periode])
    ->andWhere(['principal'=> $principal]);

    if($q->count() > 0){
        $q2 = $q->one();
        $q2->kuantitas = $q2->kuantitas + $qty;
        $q2->save(false);

    }else{
        $new = new Sales();
        $new->kode_barang = (string)($kd_brg);
        $new->kuantitas = $qty;
        $new->periode = $periode;
        $new->principal = $principal;
        if($new->save()){

        }else{

            var_dump($new->getErrors());
            return false;
        }
    }

    return true;
}

private function SimpanInventory($kd_brg,$qty,$periode,$principal){
    $q = Inventory::find()
    ->where(['kode_barang' => $kd_brg])
    ->andWhere(['periode'=> $periode])
    ->andWhere(['principal'=> $principal]);

    if($q->count() > 0){
        $q2 = $q->one();
        $q2->kuantitas = $q2->kuantitas + $qty;
        $q2->save(false);

    }else{
        $new = new Inventory();
        $new->kode_barang = (string)($kd_brg);
        $new->kuantitas = $qty;
        $new->periode = $periode;
        $new->principal = $principal;
        if($new->save()){

        }else{

            var_dump($new->getErrors());
            return false;
        }
    }

    return true;
}


}
