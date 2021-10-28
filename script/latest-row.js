var latestIdx = 0
var latestLoading = false

function getLatest(){
    $("#latest-images-container").empty()

    if(latestLoading){
        return
    }

    $.ajax({
        type: 'POST',
        url: 'api/getLatest.php',
        data: {
            idx: latestIdx,
            profileId
        },
        success: (res) => {
            if(latestIdx == 0){
                $("#latest-left-btn").css("visibility", "hidden")
                $("#latest-right-btn").css("visibility", "visible")
                $("#latest-right-btn").css("background-image",`linear-gradient(rgba(0, 0, 0, 0.527), rgba(0, 0, 0, 0.5)), url(${res.data[6].image})`)

                res.data.forEach((e, idx) => {
                    var template = `<div class="image">
                                        <img src="${e.image}" alt="">
                                    </div>`

                    if(idx == 6){
                        return;
                    }

                    var tag = $(template).appendTo("#latest-images-container")
                    imageOverListener(tag, e)
                });
            }
            else if(latestIdx == 5){
                $("#latest-right-btn").css("visibility", "hidden")
                $("#latest-left-btn").css("visibility", "visible")
                $("#latest-left-btn").css("background-image",`linear-gradient(rgba(0, 0, 0, 0.527), rgba(0, 0, 0, 0.5)), url(${res.data[0].image})`)

                res.data.forEach((e, idx) => {
                    var template = `<div class="image">
                                        <img src="${e.image}" alt="">
                                    </div>`

                    if(idx == 0){
                        return;
                    }

                    var tag = $(template).appendTo("#latest-images-container")
                    imageOverListener(tag, e)
                });
            }
            else{
                $("#latest-left-btn").css("visibility", "visible")
                $("#latest-left-btn").css("background-image", `linear-gradient(rgba(0, 0, 0, 0.527), rgba(0, 0, 0, 0.5)), url(${res.data[0].image})`)
                $("#latest-right-btn").css("visibility", "visible")
                $("#latest-right-btn").css("background-image", `linear-gradient(rgba(0, 0, 0, 0.527), rgba(0, 0, 0, 0.5)), url(${res.data[7].image})`)
                res.data.forEach((e, idx) => {
                    var template = `<div class="image">
                                        <img src="${e.image}" alt="">
                                    </div>`

                    if(idx == 0 || idx == 7){
                        return;
                    }

                    var tag = $(template).appendTo("#latest-images-container")
                    imageOverListener(tag, e)
                })
            }

            latestLoading = false
        }
    })
}

$("#latest-left-btn").on("click", () => {
    latestIdx--
    getLatest()
})

$("#latest-right-btn").on("click", () => {
    latestIdx++
    getLatest()
})
