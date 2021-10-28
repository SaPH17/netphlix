function insertParam(key, value) {
    key = encodeURIComponent(key);
    value = encodeURIComponent(value);

    var kvp = document.location.search.substr(1).split('&');
    let i=0;

    for(; i<kvp.length; i++){
        if (kvp[i].startsWith(key + '=')) {
            let pair = kvp[i].split('=');
            pair[1] = value;
            kvp[i] = pair.join('=');
            break;
        }
    }

    if(i >= kvp.length){
        kvp[kvp.length] = [key,value].join('=');
    }

    let params = kvp.join('&');
    document.location.search = params;
}

function imageOverListener(tag, data){
    var modal = `<div class="preview-modal"></div>`
    var modalImage = `<div class="preview-modal-image unselectable">
                        <img src="${data.image}" alt="">
                    </div> `
    var btnContainer = `<div class="preview-modal-buttons"></div>`
    var playBtn = `<a href="/watch.php?id=${data.id}&episode=1" class="preview-modal-btn">
                        <i class="fas fa-play" style="font-size: 0.85rem"></i>
                    </a href=>`
    var addBtn = `<div class="preview-modal-btn">
                    <svg viewBox="0 0 409.6 409.6">
                    <path fill="currentColor" d="M392.533,187.733H221.867V17.067C221.867,7.641,214.226,0,204.8,0s-17.067,7.641-17.067,17.067v170.667H17.067
                C7.641,187.733,0,195.374,0,204.8s7.641,17.067,17.067,17.067h170.667v170.667c0,9.426,7.641,17.067,17.067,17.067
                s17.067-7.641,17.067-17.067V221.867h170.667c9.426,0,17.067-7.641,17.067-17.067S401.959,187.733,392.533,187.733z"/>
                    </svg>
                </div>`
    var removeBtn = `<div class="preview-modal-btn">
                    <svg viewBox="0 0 541.038 541.038">
                        <path fill="currentColor" d="m184.405 461.013-184.405-184.405 24.354-24.354 160.051 160.051 332.279-332.279 24.354 24.354z"/>
                    </svg>
                </div>`

    var detailBtn = `<div onclick="insertParam('jbv', ${data.id})" class="preview-modal-btn">
                        <svg viewBox="0 0 512.011 512.011">
                            <path fill="currentColor" d="M505.755,123.592c-8.341-8.341-21.824-8.341-30.165,0L256.005,343.176L36.421,123.592c-8.341-8.341-21.824-8.341-30.165,0
                                s-8.341,21.824,0,30.165l234.667,234.667c4.16,4.16,9.621,6.251,15.083,6.251c5.462,0,10.923-2.091,15.083-6.251l234.667-234.667
                                C514.096,145.416,514.096,131.933,505.755,123.592z"/>
                        </svg>                            
                    </div>`

    tag.on("mouseleave", function(e){
        $(this).children("div.preview-modal").remove()
    })

    tag.on("mouseenter", function(e) {
        setTimeout(() => {

            if(!$(this).is(":hover")){
                return
            }

            var movieId = data.id
            $.ajax({
                type: 'POST',
                url: 'api/getOneMyList.php',
                data: {
                    profileId,
                    movieId,
                },
                success: (res) => {
                    var modalTag = $(modal).appendTo($(this))
            
                    var imageTag = $(modalImage).appendTo(modalTag)
                    var btnContainerTag = $(btnContainer).appendTo(modalTag)
                    
                    var playBtnTag = $(playBtn).appendTo(btnContainerTag)
                    var removeBtnTag = null, addPlayBtn = null
    
                    if(res.data[0]['movieExists'] == "no"){
                        addPlayBtn = $(addBtn).appendTo(btnContainerTag)
                        addPlayBtn.on('click', {
                            movieId: data.id,
                            type: "add",
                            tag: btnContainerTag
                        }, addMovieToList)
                    }
                    else {
                        removeBtnTag = $(removeBtn).appendTo(btnContainerTag)
                        removeBtnTag.on('click', {
                            movieId: data.id,
                            type: "remove",
                            tag: btnContainerTag
                        }, addMovieToList)
                    }
    
                    var detailBtnTag = $(detailBtn).appendTo(btnContainerTag)
                }
            })
            }, 500)
    })
}    


function addMovieToList(e){
    var movieId = e.data.movieId
    var type = e.data.type
    var tag = e.data.tag

    var playBtn = `<a href="/watch.php?id=${movieId}&episode=1" class="preview-modal-btn">
                        <i class="fas fa-play" style="font-size: 0.85rem"></i>
                    </a href=>`
    var addBtn = `<div class="preview-modal-btn">
                    <svg viewBox="0 0 409.6 409.6">
                    <path fill="currentColor" d="M392.533,187.733H221.867V17.067C221.867,7.641,214.226,0,204.8,0s-17.067,7.641-17.067,17.067v170.667H17.067
                C7.641,187.733,0,195.374,0,204.8s7.641,17.067,17.067,17.067h170.667v170.667c0,9.426,7.641,17.067,17.067,17.067
                s17.067-7.641,17.067-17.067V221.867h170.667c9.426,0,17.067-7.641,17.067-17.067S401.959,187.733,392.533,187.733z"/>
                    </svg>
                </div>`
    var removeBtn = `<div class="preview-modal-btn">
                    <svg viewBox="0 0 541.038 541.038">
                        <path fill="currentColor" d="m184.405 461.013-184.405-184.405 24.354-24.354 160.051 160.051 332.279-332.279 24.354 24.354z"/>
                    </svg>
                </div>`

    var detailBtn = `<div onclick="insertParam('jbv', ${movieId})" class="preview-modal-btn">
                <svg viewBox="0 0 512.011 512.011">
                    <path fill="currentColor" d="M505.755,123.592c-8.341-8.341-21.824-8.341-30.165,0L256.005,343.176L36.421,123.592c-8.341-8.341-21.824-8.341-30.165,0
                        s-8.341,21.824,0,30.165l234.667,234.667c4.16,4.16,9.621,6.251,15.083,6.251c5.462,0,10.923-2.091,15.083-6.251l234.667-234.667
                        C514.096,145.416,514.096,131.933,505.755,123.592z"/>
                </svg>                            
            </div>`

    $.ajax({
        type: 'POST',
        url: 'api/updateMyList.php',
        data: {
            profileId,
            movieId,
            type
        },
        success: () => {
            tag.empty()
            var playBtnTag = $(playBtn).appendTo(tag)
            var removeBtnTag = null, addPlayBtn = null

            if(type == "add"){
                addPlayBtn = $(addBtn).appendTo(tag)
                addPlayBtn.on('click', {
                    movieId: movieId,
                    type: "add",
                    tag: tag
                }, addMovieToList)
            }
            else {
                removeBtnTag = $(removeBtn).appendTo(tag)
                removeBtnTag.on('click', {
                    movieId: movieId,
                    type: "remove",
                    tag: tag
                }, addMovieToList)
            }

            var detailBtnTag = $(detailBtn).appendTo(tag)

            if(mylistShown){
                getMyList("all", -1)
            }
        }
    })
}