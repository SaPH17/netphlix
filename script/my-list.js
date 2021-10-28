
$(document).ready(() => {
    getMyList()
})

function getMyList(){
    $.ajax({
        type: 'POST',
        url: 'api/getAllMyList.php',
        data: {
            page,
            profileId
        },
        success: (res) => {
            res.data.forEach((e, idx) => {
                var template = `<div class="image">
                                    <img src="${e.image}" alt="">
                                </div>`

                var tag = $(template).appendTo("#images-container")
                imageOverListener(tag, e)
            })
        }
    })
}