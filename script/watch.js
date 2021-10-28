document.getElementById("watch-video").addEventListener('ended', (e)=>{
    $.ajax({
        type: 'POST',
        url: 'api/updateWatchHistory.php',
        data: {
            profileId,
            episodeId
        },
        success: (res) => {
            
        }
    })
})