<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use app\models\MstBarang;
use app\models\Inventory;


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

    public function actionShowData()
    {
        $request = Yii::$app->request;
        $periode = $request->post('bulan')." ".$request->post('tahun');
        $principal = $request->post('prin');

        $q = Inventory::find()
        ->with('mstBarang')
        ->where(['periode'=> $periode])
        ->andWhere(['principal'=> $principal])
        ->all();

        return $this->render('index',['data' => $q,'periode'=>$periode, 'disti'=>$principal]);
    }

    



}
