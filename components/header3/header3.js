function changeNavbarStyle(){
    if(window.scrollY == 0){
        document.querySelector('.header3').classList.remove('scrolled')
    }
    else{
        document.querySelector('.header3').classList.add('scrolled')
    }
}

document.addEventListener('scroll', changeNavbarStyle)

function searchListener(){
    var search = $("#search-bar").val()
    setTimeout(() => {  

        if(search === $("#search-bar").val()){
            if(search === ""){
                window.location = '/browse.php'
            }
            else{
                window.location = '/search.php?q=' + $("#search-bar").val()
            }s
        }

    }, 500);
}