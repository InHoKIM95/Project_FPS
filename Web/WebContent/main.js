  //로고색 바꾸기
let scrollpos = window.scrollY
const logo_change_point = 1040; //로고 색을 바꾸고 싶은 스크롤 위치

const logo = document.querySelector('.logo'); //로고가 있는 태그위치 가져오기



window.addEventListener('scroll', function () {
    let now_height = scrollpos;
    scrollpos = window.scrollY;

    if(scrollpos >logo_change_point){
        logo.childNodes[0].setAttribute('src', 'img/logo_gray.png'); 
        
    }
    else if(scrollpos <=logo_change_point){
        logo.childNodes[0].setAttribute('src', 'img/logo_white.png');
        
    }
    
})

//change btn 클릭시 로딩페이지로
const btn_change = document.querySelector('.change');
const btn_part = document.querySelector('.btn_part');
const square = document.querySelector('.square');
console.log(btn_part);
console.log(square);

btn_change.addEventListener('click', function(){

    btn_part.id = 'fade_in';
    square.id = '';

});




