function toggleMute(action){
    var video = document.getElementById("spotlight-video")
    var muteBtn = document.getElementById("mute-btn")
    var unmuteBtn = document.getElementById("unmute-btn")

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