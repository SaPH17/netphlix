var index = 0;
var loading = false

$(document).ready(() => {
    getlatest()
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

function getlatest(){
    $.ajax({
        type: 'POST',
        url: 'api/getLatest.php',
        data: {
            index,
            profileId
        },
        success: (res) => {
            index = res.nextIndex
            res.data.forEach(e => {
                $("#images-container").append(`
                <div class="image">
                    <img src="${e.image}" alt="">
                </div>
                `)
            });
            loading = false
        }
    })
}