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

var index = 0;
var loading = false

$(document).ready(() => {
    getMyList("tv-shows", genreId)
    getTVShows()
})

$(window).scroll(() => {
    const scrollVal = $(window).scrollTop()
    
    if (Math.ceil(scrollVal) + $(window).height() === $(document).height()) {
        if (loading) {
            return
        }
        
        loading = true
        getTVShows()
    }
})

function getTVShows(){
    $.ajax({
        type: 'POST',
        url: 'api/getTVShows.php',
        data: {
            index,
            profileId,
            genreId,
            randomId
        },
        success: (res) => {
            if(res.data.length > 0){
                index = res.nextIndex
            }

            res.data.forEach((e, idx) => {
                var template = `<div class="image">
                                    <img src="${e.image}" alt="">
                                </div>`

                var tag = $(template).appendTo("#movies-container")
                imageOverListener(tag, e)
            })
            
            loading = false
        }
    })
}

$("#mylist-left-btn").on("click", () => {
    mylistIdx--
    getMyList("tv-shows", genreId)
})

$("#mylist-right-btn").on("click", () => {
    mylistIdx++
    getMyList("tv-shows", genreId)
})
