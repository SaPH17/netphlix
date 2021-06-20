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

?>>
    <div class="row-header-container">
        <div class="row-header">
            <div class="row-header-title">
                <?= $rowTitle ?>
            </div>
            <div class="explore-all-button">
                Explore all
                <i class="fas fa-chevron-right"></i>
            </div>
        </div>
    </div>
    <div class="row-content-container">
        <div class="arrow-container arrow-prev-container">
            <div class="arrow-btn">
                <i class="fas fa-chevron-left"></i>
            </div>
        </div>
        <div class="images-container">
            <div class="images-wrapper">
                <?php 
                    while($row = $rowData->fetch_assoc()){
                ?>
                    <div class="image">
                        <img src=<?= $row['image'] ?> alt="">
                    </div>
                <?php
                    }
                ?>

            </div>
        </div>
        <div class="arrow-container arrow-next-container">
            <div class="arrow-btn">
                <i class="fas fa-chevron-right"></i>
            </div>
        </div>
    </div>
</div>