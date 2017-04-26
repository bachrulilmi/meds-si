<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use app\models\MstBarang;
use app\models\Inventory;


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
        return $this->render('index');
    }

    public function actionProcessData()
    {
        $request = Yii::$app->request;
        $periode = $request->post('bulan')." ".$request->post('tahun');
        $principal = $request->post('prin');

        $file = UploadedFile::getInstanceByName('datareport');
        if(!empty($file)){
            $newname = Yii::$app->getSecurity()->generateRandomString(10).$file->baseName.'.'.$file->extension;
            $file->saveAs('file-ori/' . $newname);

            //proses extraksi file excel
            $tmpfname = "file-ori/".$newname;
            $excelReader = \PHPExcel_IOFactory::createReaderForFile($tmpfname);
            $excelObj = $excelReader->load($tmpfname);
            $worksheet = $excelObj->getSheet(0);
            $lastRow = $worksheet->getHighestRow();

            
            for ($row = 1; $row <= $lastRow; $row++) {
               
               $datacell = $worksheet->getCell('G'.$row)->getValue();
               $query = MstBarang::find()->where(['alias' => $datacell]);
               if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('L'.$row)->getValue());
                    $this->SimpanInventory($data->kode_barang,$qty,$periode,$principal);
                    //echo $data->nama_barang." ".intval($worksheet->getCell('L'.$row)->getValue())."</br>";
               }
           }
           
           for ($row = 1; $row <= $lastRow; $row++) {
               
               $datacell = $worksheet->getCell('H'.$row)->getValue();
               $query = MstBarang::find()->where(['alias' => $datacell]);
               if($query->count() > 0){
                    $data = $query->one();
                    $qty = intval($worksheet->getCell('L'.$row)->getValue());
                    $this->SimpanInventory($data->kode_barang,$qty,$periode,$principal);
                    //echo $data->nama_barang." ".intval($worksheet->getCell('L'.$row)->getValue())."</br>";
               }
           }
           //proses extraksi file excel

            return $this->redirect(['upload/index']);

       }
       else{
        $request = Yii::$app->request;
        $name = $request->post('bulan');
        echo $name;
    }

    

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
            }
        }

        return true;
    }


}
