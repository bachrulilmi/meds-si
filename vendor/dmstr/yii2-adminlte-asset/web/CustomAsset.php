<?php
namespace dmstr\web;

use yii\web\AssetBundle;

class CustomAsset extends AssetBundle
{
    public $sourcePath = '@vendor/almasaeed2010/adminlte/plugins';
    public $js = [
        'datatables/jquery.dataTables.min.js',
        'datatables/dataTables.bootstrap.min.js',
        'datatables/test.js',

        // more plugin Js here
    ];
    public $css = [
        'datatables/dataTables.bootstrap.css',
        // more plugin CSS here
    ];
    public $depends = [
        'dmstr\web\AdminLteAsset',
    ];
}