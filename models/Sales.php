<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "sales".
 *
 * @property string $kode_barang
 * @property integer $kuantitas
 * @property string $periode
 * @property string $principal
 */
class Sales extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sales';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['kode_barang', 'periode', 'principal'], 'required'],
            [['kuantitas'], 'integer'],
            [['kode_barang'], 'string', 'max' => 20],
            [['periode', 'principal'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'kode_barang' => 'Kode Barang',
            'kuantitas' => 'Kuantitas',
            'periode' => 'Periode',
            'principal' => 'Principal',
        ];
    }

    public function getMstBarang()
    {
        return $this->hasOne(MstBarang::className(), ['kode_barang' => 'kode_barang']);

    } 
}
