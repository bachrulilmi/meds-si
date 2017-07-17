<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "trn_po".
 *
 * @property string $periode
 * @property string $no_po
 * @property string $kode_barang
 * @property integer $kuantitas
 */
class TrnPo extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'trn_po';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['periode', 'no_po', 'kode_barang'], 'required'],
            [['kuantitas'], 'integer'],
            [['periode', 'no_po', 'kode_barang'], 'string', 'max' => 20],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'periode' => 'Periode',
            'no_po' => 'No Po',
            'kode_barang' => 'Kode Barang',
            'kuantitas' => 'Kuantitas',
        ];
    }

    public function getMstBarang()
    {
        return $this->hasOne(MstBarang::className(), ['kode_barang' => 'kode_barang']);

    } 
}
