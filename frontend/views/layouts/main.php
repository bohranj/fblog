<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body class="size-1140">
    <header class="margin-bottom">
        <div class="line">
            <nav>
                <div class="top-nav">
                    <p class="nav-text"></p>
                    <a class="logo" href="<?php echo Yii::$app->urlManager->createUrl('/') ?>">
                    Fashion<span>Blog</span>
                    </a>
                    <h1>free fashion blog template</h1>
                    <ul class="top-ul right">
                       <li>
                          <a href="<?php echo Yii::$app->urlManager->createUrl('/') ?>">Ana Səhifə</a>
                       </li>
                       <li>
                          <a href="<?php echo Yii::$app->urlManager->createUrl('/site/healthy') ?>">Sağlamlıq</a>
                       </li>
                       <li>
                          <a href="<?php echo Yii::$app->urlManager->createUrl('/site/beauty') ?>">Gözəllik</a>
                       </li>
                       <li>
                          <a href="<?php echo Yii::$app->urlManager->createUrl('/site/style') ?>">Tərz</a>
                       </li>
                       <!-- <div class="social right">
                          <a target="_blank" href="https://www.facebook.com/myresponsee">
                          <i class="icon-facebook_circle icon2x"></i>
                          </a>
                          <a target="_blank" href="https://twitter.com/MyResponsee">
                          <i class="icon-twitter_circle icon2x"></i>
                          </a>
                       </div> -->
                    </ul>
                </div>
            </nav>
        </div>
    </header>

        <div class="container">
            <?= Alert::widget() ?>
            <?= $content ?>
        </div>

    <div class="line">
       <footer>
          <div class="s-12 l-8">
             <p>
                Copyright 2015, Vision Design - graphic zoo<br>
                All images is purchased from Bigstock. Do not use the image in your website.
             </p>
          </div>
          <div class="s-12 l-4">
             <a class="right" href="http://www.myresponsee.com" title="Responsive framework">Design and coding<br>
             by Responsee Team
             </a>
          </div>
       </footer>
    </div>

    <?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
