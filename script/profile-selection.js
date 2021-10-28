function switchProfile(index, pin, profileId){
    if(pin == null){
        document.querySelectorAll("form.profile-form")[index].submit()
    }
    else{
        $("#profile-id-input").val(profileId)
        $("#pin-modal").show()   
        $("#content").hide()
    }
}

function closeModal(){
    $("#pin-modal").hide()   
    $("#content").show()
}

$("#pin-modal").hide()
if(haveError){
    $("#pin-modal").show()   
    $("#content").hide()
}