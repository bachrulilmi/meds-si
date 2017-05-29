<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "reporting".
 *
 * @property string $periode
 * @property string $kode_barang
 * @property integer $stock_disti
 * @property integer $stock_best
 * @property integer $stock_pii
 * @property integer $sales_in
 * @property integer $sales_out
 * @property integer $proses
 * @property integer $stock_otw
 */
class Reporting extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'reporting';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['periode', 'kode_barang'], 'required'],
            [['stock_disti', 'stock_best', 'stock_pii', 'sales_in', 'sales_out', 'proses', 'stock_otw'], 'integer'],
            [['periode'], 'string', 'max' => 100],
            [['kode_barang'], 'string', 'max' => 11],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'periode' => 'Periode',
            'kode_barang' => 'Kode Barang',
            'stock_disti' => 'Stock Disti',
            'stock_best' => 'Stock Best',
            'stock_pii' => 'Stock Pii',
            'sales_in' => 'Sales In',
            'sales_out' => 'Sales Out',
            'proses' => 'Proses',
            'stock_otw' => 'Stock Otw',
        ];
    }

    public function getMstBarang() 
           { 
               return $this->hasOne(MstBarang::className(), ['kode_barang' => 'kode_barang']); 
         
           } 
}
