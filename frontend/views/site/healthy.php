<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\widgets\LinkPager;


$this->title = 'Archive';
// $this->params['breadcrumbs'][] = $this->title;
?>
<!-- MAIN SECTION -->
<section id="article-section" class="line archive">
   <div class="margin">
      <!-- ARTICLES -->
      <div class="s-12 l-9">

          <?php foreach ($items as $key => $value) { ?>
              <article class="margin-bottom">
                 <div class="post-<?php echo $key+1; ?> line">
                    <!-- image -->
                    <div class="s-12 l-11 post-image">
                       <a href="<?= Yii::$app->urlManager->createUrl('site/article?alias='. $value['alias']); ?>">
                           <img src="<?= $value['imageurl']; ?>" alt="<?= $value['title']; ?>">
                       </a>
                    </div>
                    <!-- date -->
                    <div class="s-12 l-1 post-date">
                        <p class="date"><?= date('d',strtotime($value['published_date'])); ?></p>
                        <p class="month"><?= DateTime::createFromFormat('!m', date('m',strtotime($value['published_date'])))->format('M'); ?></p>
                    </div>
                 </div>
                 <!-- text -->
                 <div class="post-text">
                    <a href="<?= Yii::$app->urlManager->createUrl('site/article?alias='. $value['alias']); ?>">
                       <h2><?= $value['title']; ?></h2>
                    </a>
                    <p>
                       Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip
                       ex ea commodo consequat...
                    </p>
                    <a class="continue-reading" href="<?= Yii::$app->urlManager->createUrl('site/article?alias='. $value['alias']); ?>">Ətraflı bax</a>
                 </div>
              </article>

         <?php } ?>

         <?php

         echo LinkPager::widget([
            'pagination' => $pages,
        ]);
         ?>

      </div>
      <!-- SIDEBAR -->
      <div class="s-12 l-3">
         <aside>
             <?php foreach ($sidebar_items as $key => $value) { ?>
                 <img src="<?= $value['imageurl']; ?>" alt="<?= $value['title']; ?>">
                 <div class="aside-block margin-bottom">
                    <a href="<?= Yii::$app->urlManager->createUrl('site/article?alias='. $value['alias']); ?>">
                        <h3><?= $value['title'] ?></h3>
                    </a>
                    <p>Lorem ipsum dolor sit amet, conse ctetuer. Duis autem vemeu iriure dolor adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam</p>
                 </div>
             <?php } ?>

            <!-- AD REGION -->
            <!-- <div class="advertising margin-bottom">
               <img src="img/banner.jpg" alt="ad banner">
            </div> -->
         </aside>
      </div>
   </div>
</section>
