<?php

$this->title = 'Search';

//echo count($result);
//print_r($result);
?>

<section id="article-section" class="line">

        <?php if(gettype($result) == 'string') { ?>
        <div class="alert alert-danger">
            <?= $result ?>
        </div>
        <?php } ?>

</section>
