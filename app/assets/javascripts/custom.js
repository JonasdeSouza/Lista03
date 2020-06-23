function show_button(firstOpt, secondOpt) {
    let divName1 = "#";
    divName1 += firstOpt;
    let divName2 = "#";
    divName2 += secondOpt;
    let divToBeShown = $(divName1);
    let divToBeHide = $(divName2);
    divToBeShown.show();
    divToBeHide.hide()
}

function listened(id){
    document.getElementById(id).style.color = 'green';
}

function not_listened(id){
    document.getElementById(id).style.color = 'red';
}

function remove(id){
    document.getElementById(id).style.color = 'black';
}

function like(id) {
    document.getElementById(id).style.color = 'red'
}