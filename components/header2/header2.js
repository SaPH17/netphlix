function changeNavbarStyle(){
    if(window.scrollY == 0){
        document.querySelector('#header').classList.remove('scrolled')
    }
    else{
        document.querySelector('#header').classList.add('scrolled')
    }
}

document.addEventListener('scroll', changeNavbarStyle)