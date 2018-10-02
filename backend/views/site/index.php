<?php

/* @var $this yii\web\View */

$this->title = 'Fashion Blog';
?>
<div class="site-index">

    <div class="body-content">

        <div class="row">
            <div class="col-lg-4">
            </div>
            <div class="col-lg-4">
            </div>
            <!-- <div class="col-lg-4">
                <h2>Heading</h2>
            </div> -->
        </div>

    </div>
          <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="images/arts.jpg" style="height:150px;" class="img-responsive" alt="Generic placeholder thumbnail">
              <a href="<?= Yii::$app->urlManager->createUrl('articles/index'); ?>">
                  <h3>Articles</h3>
              </a>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="images/cats.jpg" style="height:150px;" class="img-responsive" alt="Generic placeholder thumbnail">
              <a href="<?= Yii::$app->urlManager->createUrl('categories/index'); ?>">
                  <h3>Categories</h3>
              </a>
            </div>
          </div>
</div>
