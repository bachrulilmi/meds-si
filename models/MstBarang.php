<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "mst_barang".
 *
 * @property integer $kode_barang
 * @property string $nama_barang
 * @property string $alias
 */
class MstBarang extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'mst_barang';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['alias'], 'required'],
            [['nama_barang', 'alias'], 'string', 'max' => 200],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'kode_barang' => 'Kode Barang',
            'nama_barang' => 'Nama Barang',
            'alias' => 'Alias',
        ];
    }

    public function getInventory()
    {
        return $this->hasMany(Inventory::className(), ['kode_barang' => 'kode_barang']);
    }

    public function getSales()
    {
        return $this->hasMany(Sales::className(), ['kode_barang' => 'kode_barang']);
    }

    public function getReporting()
    {
        return $this->hasMany(Reporting::className(), ['kode_barang' => 'kode_barang']);
    }
}
