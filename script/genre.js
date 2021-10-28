var index = 0;
var loading = false

$(document).ready(() => {
    getMovieGenre()
})

$(window).scroll(() => {
    const scrollVal = $(window).scrollTop()
    
    if (Math.ceil(scrollVal) + $(window).height() === $(document).height()) {
        if (loading) {
            return
        }
        
        loading = true
        getlatest()
    }
})

function getMovieGenre(){
    $.ajax({
        type: 'POST',
        url: 'api/getMovieByGenre.php',
        data: {
            index,
            genreId
        },
        success: (res) => {
            if(res.data.length > 0){
                index = res.nextIndex
            }

            res.data.forEach((e, idx) => {
                var template = `<div class="image">
                                    <img src="${e.image}" alt="">
                                </div>`

                var tag = $(template).appendTo("#images-container")
                imageOverListener(tag, e)
            })

            loading = false
        }
    })
}