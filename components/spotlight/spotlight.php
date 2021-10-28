<?php

$sql = "SELECT * FROM movies as m JOIN (SELECT id FROM movies ORDER BY RAND() LIMIT 1) as i ON m.id = i.id";

$statement = $conn->prepare($sql);
$statement->execute();

$spotlightMovie = $statement->get_result()->fetch_assoc();

?>

<div class="spotlight-container">
    <video src=<?= $spotlightMovie['trailer'] ?> autoplay muted loop class="spotlight-video" id="spotlight-video"></video>
    <div class="overlay">
        <div class="overlay-title">
            <?= $spotlightMovie['title']; ?>
        </div>
        <div class="overlay-synopsis">
            <?= $spotlightMovie['synopsis']; ?>
        </div>
        <div class="btn-container">
            <a href=<?php echo "/watch.php?id=" . $spotlightMovie['id'] . "&episode=1" ?> class="btn btn-play">
                <svg viewBox="0 0 24 24"><path d="M6 4l15 8-15 8z" fill="currentColor"></path></svg>
                Play
            </a>
            <a href=<?php echo "?jbv=" . $spotlightMovie['id'] ?> class="btn btn-more-info">
                <svg viewBox="0 0 24 24"><path d="M22 12c0 5.523-4.477 10-10 10S2 17.523 2 12 6.477 2 12 2s10 4.477 10 10zm-2 0a8 8 0 0 0-8-8 8 8 0 0 0-8 8 8 8 0 0 0 8 8 8 8 0 0 0 8-8zm-9 6v-7h2v7h-2zm1-8.75a1.21 1.21 0 0 1-.877-.364A1.188 1.188 0 0 1 10.75 8c0-.348.123-.644.372-.886.247-.242.54-.364.878-.364.337 0 .63.122.877.364.248.242.373.538.373.886s-.124.644-.373.886A1.21 1.21 0 0 1 12 9.25z" fill="currentColor"></path></svg>
                More Info
            </a>
        </div>
        <div class="mute-btn-container">
            <div class="mute-btn" id="mute-btn" onclick="toggleMute('mute')">
                <svg viewBox="0 0 24 24" width="21px" height="21px"><path d="M9 7.828L6.828 10H4v4h2.828L9 16.172V7.828zM11 21l-5-5H2V8h4l5-5v18zm2.744-4.611l-1.414-1.414a4.161 4.161 0 0 0 0-5.885l1.414-1.414a6.161 6.161 0 0 1 0 8.713zm2.47 1.825L14.8 16.8a6.742 6.742 0 0 0 0-9.535l1.414-1.414a8.742 8.742 0 0 1 0 12.363zm2.47 1.825l-1.415-1.415a9.323 9.323 0 0 0 0-13.184l1.415-1.414c4.421 4.422 4.421 11.59 0 16.013z" fill="currentColor"></path></svg>                
            </div>
            <div class="unmute-btn" id="unmute-btn" onclick="toggleMute('unmute')">
                <svg viewBox="0 0 24 24" width="21px" height="21px"><path d="M9 7.828L6.828 10H4v4h2.828L9 16.172V7.828zM11 21l-5-5H2V8h4l5-5v18zm6-10.414l3.293-3.293 1.414 1.414L18.414 12l3.293 3.293-1.414 1.414L17 13.414l-3.293 3.293-1.414-1.414L15.586 12l-3.293-3.293 1.414-1.414L17 10.586z" fill="currentColor"></path></svg>
            </div>
        </div>
    </div>
    <?php
        include './components/row/mylist.php';
    ?>
</div>