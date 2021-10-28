var mylistIdx = 0
var mylistLoading = false


function getMyList(type, genre){
    $("#mylist-images-container").empty()

    if(mylistLoading){
        return
    }

    $.ajax({
        type: 'POST',
        url: 'api/getMyList.php',
        data: {
            idx: mylistIdx,
            profileId,
            type,
            genre
        },
        success: (res) => {

            if(res.total != 0){
                $('#my-list-container').show()
            }
            else{
                $('#my-list-container').hide()
                return
            }
            if(res.total == 1){
                $("#mylist-left-btn").css("visibility", "hidden")
                $("#mylist-right-btn").css("visibility", "hidden")

                res.data.forEach((e, idx) => {
                    var template = `<div class="image">
                                        <img src="${e.image}" alt="">
                                    </div>`

                    if(idx == 6){
                        return;
                    }

                    var tag = $(template).appendTo("#mylist-images-container")
                    imageOverListener(tag, e)
                });
            }
            else if(mylistIdx == 0){
                $("#mylist-left-btn").css("visibility", "hidden")
                $("#mylist-right-btn").css("visibility", "visible")
                $("#mylist-right-btn").css("background-image",`linear-gradient(rgba(0, 0, 0, 0.527), rgba(0, 0, 0, 0.5)), url(${res.data[6].image})`)

                res.data.forEach((e, idx) => {
                    var template = `<div class="image">
                                        <img src="${e.image}" alt="">
                                    </div>`

                    if(idx == 6){
                        return;
                    }

                    var tag = $(template).appendTo("#mylist-images-container")
                    imageOverListener(tag, e)
                });
            }
            else if(mylistIdx == res.total - 1){
                $("#mylist-right-btn").css("visibility", "hidden")
                $("#mylist-left-btn").css("visibility", "visible")
                $("#mylist-left-btn").css("background-image",`linear-gradient(rgba(0, 0, 0, 0.527), rgba(0, 0, 0, 0.5)), url(${res.data[0].image})`)

                res.data.forEach((e, idx) => {
                    var template = `<div class="image">
                                        <img src="${e.image}" alt="">
                                    </div>`
                                    
                    if(idx == 0){
                        return;
                    }

                    var tag = $(template).appendTo("#mylist-images-container")
                    imageOverListener(tag, e)
                });
            }
            else{
                $("#mylist-left-btn").css("visibility", "visible")
                $("#mylist-left-btn").css("background-image", `linear-gradient(rgba(0, 0, 0, 0.527), rgba(0, 0, 0, 0.5)), url(${res.data[0].image})`)
                $("#mylist-right-btn").css("background-image", `linear-gradient(rgba(0, 0, 0, 0.527), rgba(0, 0, 0, 0.5)), url(${res.data[7].image})`)
                res.data.forEach((e, idx) => {
                    var template = `<div class="image">
                                        <img src="${e.image}" alt="">
                                    </div>`

                    if(idx == 0 || idx == 7){
                        return;
                    }

                    var tag = $(template).appendTo("#mylist-images-container")
                    imageOverListener(tag, e)
                })
            }

            mylistLoading = false
        }
    })
}