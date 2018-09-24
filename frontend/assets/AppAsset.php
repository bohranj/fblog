<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/componend.css',
        'css/responsee.css',
        'css/template-style.css',
    ];
    public $js = [
        'js/jquery-1.8.3.min.js',
        'js/jquery-ui.min.js',
        'js/modernizr.js',
        'js/responsee.js',
    ];
    public $depends = [
        // 'yii\web\YiiAsset',
        // 'yii\bootstrap\BootstrapAsset',
    ];
}
