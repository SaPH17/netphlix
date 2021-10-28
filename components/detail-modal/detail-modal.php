<?php

    if(!isset($_GET['jbv'])){
        return;
    }

    $sql = "SELECT * FROM movies WHERE id = " . $_GET['jbv'];

    $statement = $conn->prepare($sql);
    $statement->execute();
    
    $detailMovie = $statement->get_result()->fetch_assoc();
?>

<div class="detail-modal-wrapper">
    <div class="detail-modal-container">
        <div class="preview-container">
            <video src=<?= $detailMovie['trailer'] ?> autoplay muted loop class="preview-video" id="preview-video"></video>
            <div class="overlay">
                <div class="close-icon" onclick="history.back()">
                    <svg viewBox="0 0 329.26933 329"><path fill="currentColor" d="m194.800781 164.769531 128.210938-128.214843c8.34375-8.339844 8.34375-21.824219 0-30.164063-8.339844-8.339844-21.824219-8.339844-30.164063 0l-128.214844 128.214844-128.210937-128.214844c-8.34375-8.339844-21.824219-8.339844-30.164063 0-8.34375 8.339844-8.34375 21.824219 0 30.164063l128.210938 128.214843-128.210938 128.214844c-8.34375 8.339844-8.34375 21.824219 0 30.164063 4.15625 4.160156 9.621094 6.25 15.082032 6.25 5.460937 0 10.921875-2.089844 15.082031-6.25l128.210937-128.214844 128.214844 128.214844c4.160156 4.160156 9.621094 6.25 15.082032 6.25 5.460937 0 10.921874-2.089844 15.082031-6.25 8.34375-8.339844 8.34375-21.824219 0-30.164063zm0 0"/></svg>                </div>
                <div class="overlay-title">
                    <?= $detailMovie['title']; ?>
                </div>
                <div class="btn-container">
                    <a href=<?php echo "/watch.php?id=" . $detailMovie['id'] . "&episode=1" ?> class="btn btn-play">
                        <svg viewBox="0 0 24 24"><path d="M6 4l15 8-15 8z" fill="currentColor"></path></svg>
                        Play
                    </a>
                    <div class="mute-btn-container">
                        <div class="mute-btn" id="modal-mute-btn" onclick="toggleMuteModal('mute')">
                            <svg viewBox="0 0 24 24" width="21px" height="21px"><path d="M9 7.828L6.828 10H4v4h2.828L9 16.172V7.828zM11 21l-5-5H2V8h4l5-5v18zm2.744-4.611l-1.414-1.414a4.161 4.161 0 0 0 0-5.885l1.414-1.414a6.161 6.161 0 0 1 0 8.713zm2.47 1.825L14.8 16.8a6.742 6.742 0 0 0 0-9.535l1.414-1.414a8.742 8.742 0 0 1 0 12.363zm2.47 1.825l-1.415-1.415a9.323 9.323 0 0 0 0-13.184l1.415-1.414c4.421 4.422 4.421 11.59 0 16.013z" fill="currentColor"></path></svg>                
                        </div>
                        <div class="unmute-btn" id="modal-unmute-btn" onclick="toggleMuteModal('unmute')">
                            <svg viewBox="0 0 24 24" width="21px" height="21px"><path d="M9 7.828L6.828 10H4v4h2.828L9 16.172V7.828zM11 21l-5-5H2V8h4l5-5v18zm6-10.414l3.293-3.293 1.414 1.414L18.414 12l3.293 3.293-1.414 1.414L17 13.414l-3.293 3.293-1.414-1.414L15.586 12l-3.293-3.293 1.414-1.414L17 10.586z" fill="currentColor"></path></svg>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="information-container">
            <div class="release-date">
                <?php echo explode('-', $detailMovie['releaseDate'])[0] ?>
            </div>
            <div class="synopsis">
                <?php echo $detailMovie['synopsis'] ?>
            </div>
        </div>
        <?php
            if($detailMovie['isSeries'] == 1){

        ?>
            <div class="episodes-container">
                <div class="title">
                    Episodes
                </div>

                <?php
                    $sql = "SELECT * FROM movie_episodes WHERE movieId = " . $_GET['jbv'];

                    $statement = $conn->prepare($sql);
                    $statement->execute();
                    
                    $episodesData = $statement->get_result();

                    while($row = $episodesData->fetch_assoc()){

                ?>
                    <a href=<?php echo "/watch.php?id=" . $row['movieId'] . "&episode=" . $row['count'] ?> class="episode-row">
                        <div class="episode-row-count">
                            <?= $row['count'] ?>
                        </div>
                        <div class="episode-row-image">
                            <img src=<?= $row['thumbnail'] ?> alt="">
                        </div>
                        <div class="episode-row-information">
                            <div class="episode-row-header">
                                <div class="episode-row-name">
                                    <?= $row['name'] ?>
                                </div>
                                <div class="episode-row-duration">
                                    <?= $row['duration']/60 . "m" ?>
                                </div>
                            </div>
                            <div class="episode-row-synopsis">
                                <?= $row['synopsis'] ?>
                            </div>
                        </div>
                    </a>
                <?php
                    }
                ?>
            </div>
        <?php
            }
        ?>
    </div>
</div>