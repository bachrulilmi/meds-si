<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "trn_others".
 *
 * @property string $periode
 * @property string $kode_barang
 * @property integer $kuantitas
 * @property string $type
 */
class TrnOthers extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'trn_others';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['kuantitas'], 'integer'],
            [['periode', 'kode_barang', 'type'], 'string', 'max' => 20],
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
            'kuantitas' => 'Kuantitas',
            'type' => 'Type',
        ];
    }
}
