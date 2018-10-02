<?php

use yii\helpers\Html;

$this->title = $one_article['title'];
$this->params['breadcrumbs'][] = $this->title;

?>

<!-- MAIN SECTION -->
<section id="article-section" class="line">
   <div class="margin">
      <!-- ARTICLES -->
      <div class="s-12 l-9">
         <!-- ARTICLE 1 -->
         <article class="margin-bottom">
            <div class="post-1 line">
               <!-- image -->
               <div class="s-12 l-11 post-image">
                   <img src="<?= $article['imageurl']; ?>" alt="<?= $article['title']; ?>">
               </div>
               <!-- date -->
               <div class="s-12 l-1 post-date">
                   <p class="date"><?= date('d',strtotime($article['published_date'])); ?></p>
                   <p class="month"><?= DateTime::createFromFormat('!m', date('m',strtotime($article['published_date'])))->format('M'); ?></p>
               </div>
            </div>
            <!-- text -->
            <div class="post-text">
               <h1><?= $article['title'] ?></h1>
               <p> <?= $article['body'] ?> </p>
               <!-- <p class="author">Responsee Team</p> -->
            </div>
         </article>
         <!-- AD REGION -->
         <!-- <div class="line">
            <div class="advertising horizontal">
               <img src="img/banner-horizontal.jpg" alt="ad banner">
            </div>
         </div> -->
      </div>
      <!-- SIDEBAR -->
      <div class="s-12 l-3">
         <aside>
            <!-- NEWS 1 -->
            <img src="<?= $one_article['imageurl']; ?>" alt="<?= $one_article['title']; ?>">
            <div class="aside-block margin-bottom">
                <a href="<?= Yii::$app->urlManager->createUrl('site/article?alias='. $one_article['alias']); ?>">
                    <h3><?= $one_article['title'] ?></h3>
                </a>
                <p><?= $one_article['subtitle'] ?></p>
            </div>
            <!-- AD REGION -->
            <!-- <div class="advertising margin-bottom">
               <img src="img/banner.jpg" alt="ad banner">
            </div> -->
            <!-- LATEST POSTS -->
            <div class="aside-block margin-bottom">
               <!-- <h3>Sonuncu xəbərlər</h3> -->
               <?php foreach ($sidebar_items as $value) { ?>
                   <a class="latest-posts" href="<?= Yii::$app->urlManager->createUrl('site/article?alias='. $value['alias']); ?>">
                      <h5><?= $value['title'] ?></h5>
                      <p>
                         <?php if(strlen($value['subtitle']) >= 60) {
                              echo substr($value['subtitle'], 0, 60).' ...';
                          } else {
                              echo substr($value['subtitle'], 0, 60);
                          } ?>
                      </p>
                   </a>
               <?php } ?>
            </div>
         </aside>
      </div>
   </div>
</section>
