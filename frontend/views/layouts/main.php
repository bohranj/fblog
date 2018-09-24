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
    <?php $this->beginBody() ?>

    <header class="margin-bottom">
        <div class="line">
            <nav>
                <div class="top-nav">
                    <p class="nav-text"></p>
                    <a class="logo" href="index.html">
                    Fashion<span>Blog</span>
                    </a>
                    <h1>free fashion blog template</h1>
                    <ul class="top-ul right">
                       <li>
                          <a href="/fblog/www">Blog</a>
                       </li>
                       <li>
                          <a href="<?php echo Yii::$app->urlManager->createUrl('/site/about') ?>">About</a>
                       </li>
                       <li>
                          <a href="archive.html">Archive</a>
                       </li>
                       <li>
                          <a href="contact.html">Contact</a>
                       </li>
                       <div class="social right">
                          <a target="_blank" href="https://www.facebook.com/myresponsee">
                          <i class="icon-facebook_circle icon2x"></i>
                          </a>
                          <a target="_blank" href="https://twitter.com/MyResponsee">
                          <i class="icon-twitter_circle icon2x"></i>
                          </a>
                       </div>
                    </ul>
                    <?php
                    // NavBar::begin([
                    //     'brandLabel' => Yii::$app->name,
                    //     'brandUrl' => Yii::$app->homeUrl,
                    //     'options' => [
                    //         'class' => 'navbar-inverse navbar-fixed-top',
                    //     ],
                    // ]);
                    // $menuItems = [
                    //     ['label' => 'Home', 'url' => ['/site/index']],
                    //     ['label' => 'About', 'url' => ['/site/about']],
                    //     ['label' => 'Contact', 'url' => ['/site/contact']],
                    // ];
                    // echo Nav::widget([
                    //     'options' => ['class' => 'navbar-nav navbar-right'],
                    //     'items' => $menuItems,
                    // ]);
                    // NavBar::end();
                    ?>

                </div>
            </nav>
        </div>
    </header>

        <div class="container">
            <?= Breadcrumbs::widget([
                'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
            ]) ?>
            <?= Alert::widget() ?>
            <?= $content ?>
        </div>


    <footer class="footer">
        <div class="container">
            <p class="pull-left">&copy; <?= Html::encode(Yii::$app->name) ?> <?= date('Y') ?></p>

            <p class="pull-right"><?= Yii::powered() ?></p>
        </div>
    </footer>

    <?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
