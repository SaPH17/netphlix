var watchlistIdx = 0
var watchlistLoading = false

function getWatchList(){
    $("#watchlist-images-container").empty()

    if(watchlistLoading){
        return
    }

    $.ajax({
        type: 'POST',
        url: 'api/getWatchHistory.php',
        data: {
            idx: watchlistIdx,
            profileId
        },
        success: (res) => {
            if(res.total == 0){
                return
            }
            if(res.total == 1){
                $("#watchlist-left-btn").css("visibility", "hidden")
                $("#watchlist-right-btn").css("visibility", "hidden")

                res.data.forEach((e, idx) => {
                    var template = `<div class="image">
                                        <img src="${e.image}" alt="">
                                    </div>`

                    if(idx == 6){
                        return;
                    }

                    e.id = e.movieId

                    var tag = $(template).appendTo("#watchlist-images-container")
                    imageOverListener(tag, e)
                });
            }
            else if(watchlistIdx == 0){
                $("#watchlist-left-btn").css("visibility", "hidden")
                $("#watchlist-right-btn").css("visibility", "visible")
                $("#watchlist-right-btn").css("background-image",`linear-gradient(rgba(0, 0, 0, 0.527), rgba(0, 0, 0, 0.5)), url(${res.data[6].image})`)

                res.data.forEach((e, idx) => {
                    var template = `<div class="image">
                                        <img src="${e.image}" alt="">
                                    </div>`

                    if(idx == 6){
                        return;
                    }

                    var tag = $(template).appendTo("#watchlist-images-container")
                    imageOverListener(tag, e)
                });
            }
            else if(watchlistIdx == 5){
                $("#watchlist-right-btn").css("visibility", "hidden")
                $("#watchlist-left-btn").css("visibility", "visible")
                $("#watchlist-left-btn").css("background-image",`linear-gradient(rgba(0, 0, 0, 0.527), rgba(0, 0, 0, 0.5)), url(${res.data[0].image})`)

                res.data.forEach((e, idx) => {
                    var template = `<div class="image">
                                        <img src="${e.image}" alt="">
                                    </div>`

                    if(idx == 0){
                        return;
                    }

                    var tag = $(template).appendTo("#watchlist-images-container")
                    imageOverListener(tag, e)
                });
            }
            else{
                $("#watchlist-left-btn").css("visibility", "visible")
                $("#watchlist-left-btn").css("background-image", `linear-gradient(rgba(0, 0, 0, 0.527), rgba(0, 0, 0, 0.5)), url(${res.data[0].image})`)
                $("#watchlist-right-btn").css("visibility", "visible")
                $("#watchlist-right-btn").css("background-image", `linear-gradient(rgba(0, 0, 0, 0.527), rgba(0, 0, 0, 0.5)), url(${res.data[7].image})`)
                res.data.forEach((e, idx) => {
                    var template = `<div class="image">
                                        <img src="${e.image}" alt="">
                                    </div>`

                    if(idx == 0 || idx == 7){
                        return;
                    }

                    var tag = $(template).appendTo("#watchlist-images-container")
                    imageOverListener(tag, e)
                })
            }

            watchlistLoading = false
        }
    })
}

$("#watchlist-left-btn").on("click", () => {
    watchlistIdx--
    getWatchList()
})

$("#watchlist-right-btn").on("click", () => {
    watchlistIdx++
    getWatchList()
})
