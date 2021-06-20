
$(document).ready(() => {
    getMyList()
})

function getMyList(){
    $.ajax({
        type: 'POST',
        url: 'api/getMyList.php',
        data: {
            page,
            profileId
        },
        success: (res) => {
            console.log(res)
            res.data.forEach(e => {
                $("#images-container").append(`
                <div class="image">
                    <img src="${e.image}" alt="">
                </div>
                `)
            });
        }
    })
}