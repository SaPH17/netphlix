var index = 0;
var loading = false

$(document).ready(() => {
    getSearch()
})

$(window).scroll(() => {
    const scrollVal = $(window).scrollTop()
    
    if (Math.ceil(scrollVal) + $(window).height() === $(document).height()) {
        if (loading) {
            return
        }
        
        loading = true
        getSearch()
    }
})

function getSearch(){
    $.ajax({
        type: 'POST',
        url: 'api/getMovieByName.php',
        data: {
            index,
            query
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