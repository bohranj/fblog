<?php

/* @var $this yii\web\View */

$this->title = 'Fblog';
?>
<!-- MAIN SECTION -->
<section id="home-section" class="line">
   <div class="margin">
      <!-- ARTICLES -->
      <div class="s-12 l-9">

         <!-- ARTICLE 1 -->

         <?php foreach ($items as $key => $value): ?>
             <article class="post-<?php echo $key+1; ?> line <?php if(($key+1)%2 == 0) { echo ' right-align'; }  ?> ">
                <!-- image -->
                <div class="s-12 l-6 post-image">
                   <a href="post-1.html">
                       <img src="img/post1.jpg" alt="Fashion 1">
                   </a>
                </div>
                <!-- text -->
                <div class="s-12 l-5 post-text">
                   <a href="post-1.html">
                      <h2><?= $value['title']; ?></h2>
                   </a>
                   <p>Lorem ipsum dolor sit amet, conse ctetuer. Duis autem vemeu iriure dolor adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat wisi enim.
                   </p>
                </div>
                <!-- date -->
                <div class="s-12 l-1 post-date">
                   <p class="date">07</p>
                   <p class="month">mar</p>
                </div>
             </article>
         <?php endforeach; ?>

         <!-- ARTICLE 5 -->
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
            <!-- NEWS 1 -->
            <img src="img/news1.jpg" alt="News 1">
            <div class="aside-block margin-bottom">
               <h3>This is the first news on blog</h3>
               <p>Lorem ipsum dolor sit amet, conse ctetuer. Duis autem vemeu iriure dolor adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam</p>
            </div>
            <!-- NEWS 2 -->
            <img src="img/news2.jpg" alt="News 2">
            <div class="aside-block margin-bottom">
               <h3>Second news on the fashion blog</h3>
               <p>Lorem ipsum dolor sit amet, conse ctetuer. Duis autem vemeu iriure dolor adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam</p>
            </div>
            <!-- AD REGION -->
            <div class="advertising margin-bottom">
               <img src="img/banner.jpg" alt="ad banner">
            </div>
         </aside>
      </div>
   </div>
</section>
