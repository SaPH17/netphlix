<div class=<?php
    if($isMyList){
        echo 'my-list-container';
    }
    else if($isWatchList){
        echo 'continue-watching-container';
    }
    else{
        echo 'row-container';
    }

?> id = <?php
    if($isMyList){
        echo 'my-list-container';
    }
?>>
    <div class="row-header-container">
        <div class="row-header">
            <div class="row-header-title">
                <?= $rowTitle ?>
            </div>
            <?php 
                if($link != ""){
            ?>
                <a href=<?= $link ?> class="explore-all-button">
                Explore all
                <i class="fas fa-chevron-right"></i>
                </a>
            <?php 
                }
            ?>
        </div>
    </div>
    <div class="row-content-container">
        <div class="arrow-container arrow-prev-container" id=<?= $leftId ?>>
            <div class="arrow-btn">
                <i class="fas fa-chevron-left"></i>
            </div>
        </div>
        <div class="images-container">
            <div class="images-wrapper" id=<?= $containerId ?>>
                
            </div>
        </div>
        <div class="arrow-container arrow-next-container" id=<?= $rightId ?>>
            <div class="arrow-btn">
                <i class="fas fa-chevron-right"></i>
            </div>
        </div>
    </div>
</div>