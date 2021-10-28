var randomIdx = 0
var randomLoading = false

function getRandom(){
    $("#random-images-container").empty()
    
    if(randomLoading){
        return
    }

    $.ajax({
        type: 'POST',
        url: 'api/getRandom.php',
        data: {
            idx: randomIdx,
            genreId,
            profileId
        },
        success: (res) => {
            if(randomIdx == 0){
                $("#random-left-btn").css("visibility", "hidden")
                $("#random-right-btn").css("visibility", "visible")
                $("#random-right-btn").css("background-image",`linear-gradient(rgba(0, 0, 0, 0.527), rgba(0, 0, 0, 0.5)), url(${res.data[6].image})`)

                res.data.forEach((e, idx) => {
                    var template = `<div class="image">
                                        <img src="${e.image}" alt="">
                                    </div>`
                    if(idx == 6){
                        return;
                    }

                    var tag = $(template).appendTo("#random-images-container")
                    imageOverListener(tag, e)
                });
            }
            else if(randomIdx == 2){
                $("#random-right-btn").css("visibility", "hidden")
                $("#random-left-btn").css("visibility", "visible")
                $("#random-left-btn").css("background-image",`linear-gradient(rgba(0, 0, 0, 0.527), rgba(0, 0, 0, 0.5)), url(${res.data[0].image})`)

                res.data.forEach((e, idx) => {
                    var template = `<div class="image">
                                        <img src="${e.image}" alt="">
                                    </div>`

                    if(idx == 0){
                        return;
                    }
                    
                    var tag = $(template).appendTo("#random-images-container")
                    imageOverListener(tag, e)
                });
            }
            else{
                $("#random-left-btn").css("visibility", "visible")
                $("#random-left-btn").css("background-image", `linear-gradient(rgba(0, 0, 0, 0.527), rgba(0, 0, 0, 0.5)), url(${res.data[0].image})`)
                $("#random-right-btn").css("visibility", "visible")
                $("#random-right-btn").css("background-image", `linear-gradient(rgba(0, 0, 0, 0.527), rgba(0, 0, 0, 0.5)), url(${res.data[7].image})`)
                res.data.forEach((e, idx) => {
                    var template = `<div class="image">
                                        <img src="${e.image}" alt="">
                                    </div>`

                    if(idx == 0 || idx == 7){
                        return;
                    }

                    var tag = $(template).appendTo("#random-images-container")
                    imageOverListener(tag, e)
                })
            }

            randomLoading = false
        }
    })
}

$("#random-left-btn").on("click", () => {
    randomIdx--
    getRandom()
})

$("#random-right-btn").on("click", () => {
    randomIdx++
    getRandom()
})