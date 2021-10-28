function toggleMuteModal(action){
    var video = document.getElementById("preview-video")
    var muteBtn = document.getElementById("modal-mute-btn")
    var unmuteBtn = document.getElementById("modal-unmute-btn")

    if(action == 'mute'){
        video.muted = true
        muteBtn.style.display = 'none'
        unmuteBtn.style.display = 'flex'
    }
    else if(action == 'unmute'){
        video.muted = false
        muteBtn.style.display = 'flex'
        unmuteBtn.style.display = 'none'
    }
}
