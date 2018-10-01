<?php

$this->title = 'Fblog';
?>
<!-- MAIN SECTION -->
<section id="home-section" class="line">
   <div class="margin">
      <!-- ARTICLES -->
      <div class="s-12 l-9">

         <?php foreach ($items as $key => $value): ?>
             <article class="post-<?php echo $key+1; ?> line <?php if(($key+1)%2 == 0) { echo ' right-align'; }  ?> ">
                <!-- image -->
                <div class="s-12 l-6 post-image">
                   <a href="<?= Yii::$app->urlManager->createUrl('site/article?alias='. $value['alias']); ?>">
                       <img src="<?= $value['imageurl']; ?>" alt="<?= $value['title']; ?>">
                   </a>
                </div>
                <!-- text -->
                <div class="s-12 l-5 post-text">
                   <a href="<?= Yii::$app->urlManager->createUrl('site/article?alias='. $value['alias']); ?>">
                      <h2><?= $value['title']; ?></h2>
                   </a>
                   <p>Lorem ipsum dolor sit amet, conse ctetuer. Duis autem vemeu iriure dolor adipiscing elit</p>
                </div>
                <!-- date -->
                <div class="s-12 l-1 post-date">
                   <p class="date"><?= date('d',strtotime($value['published_date'])); ?></p>
                   <p class="month"><?= DateTime::createFromFormat('!m', date('m',strtotime($value['published_date'])))->format('M'); ?></p>
                </div>
             </article>
         <?php endforeach; ?>

         <article class="post-5 line">
            <!-- text -->
            <div class="s-12 l-11 post-text">
               <a href="post-5.html">
                  <h2>And again - it's totally free!</h2>
               </a>
               <p>Lorem ipsum dolor sit amet, conse ctetuer. Duis autem vemeu iriure dolor adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam</p>
            </div>
            <!-- date -->
            <div class="s-12 l-1 post-date">
               <p class="date">27
               </p>
               <p class="month">feb
               </p>
            </div>
         </article>
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
