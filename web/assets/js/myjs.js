//Slider
const listBox = document.querySelectorAll('.box-slider');
const wrapperBox = document.querySelector('.review-box-slider');
const btnLeft = document.querySelector('.btnLeft');
const btnRight = document.querySelector('.btnRight');
const reviewDiv = document.querySelector('.review-slider');
document.addEventListener('DOMContentLoaded', function () {

    window.addEventListener('resize', function () {
        if (window.innerWidth >= 1200) {
            make_slide(6);
        } else if (window.innerWidth >= 992) {
            make_slide(6);
        } else if (window.innerWidth >= 768) {
            make_slide(5);
        } else if (window.innerWidth >= 425){
            make_slide(3);
        } else {
            make_slide(3);
        }
    });

    const media = [
        window.matchMedia('(min-width: 1200px)'),
        window.matchMedia('(min-width: 992px) and (max-width: 1199px)'),
        window.matchMedia('(min-width: 768px) and (max-width: 991px)'),
        window.matchMedia('(min-width: 425px) and (max-width: 767px)'),
        window.matchMedia('(min-width: 320px) and (max-width: 424px)')
    ];

    if (media[0].matches) {
        make_slide(6);
    } else if (media[1].matches) {
        make_slide(6);
    } else if (media[2].matches){
        make_slide(5);
    } else if (media[3].matches){
        make_slide(3);
    } else{
        make_slide(3);
    }

    setInterval(function(){btnRight.click();},15000);

});

function make_slide(amountSlideAppear) {
    // set width and margin for item slide
    const widthItemAndMargin = reviewDiv.offsetWidth / amountSlideAppear;
    let widthAllBox = widthItemAndMargin * listBox.length;
    wrapperBox.style.width = `${widthAllBox}px`;

    listBox.forEach((element) => {
        element.style.marginRight = '0px';
        element.style.width = `${widthItemAndMargin - 0}px`;
    });

    // handle slide
    let count = 0;
    let spacing = widthAllBox - amountSlideAppear * widthItemAndMargin;
    btnRight.addEventListener('click', function () {
        count += widthItemAndMargin;

        if (count > spacing) {
            count = 0;
        }
        wrapperBox.style.transform = `translateX(${-count}px)`;
    });

    btnLeft.addEventListener('click', function () {
        count -= widthItemAndMargin;

        if (count < 0) {
            count = spacing;
        }
        wrapperBox.style.transform = `translateX(${-count}px)`;
    });
}
//end slider

//move top
const btnMoveTop = document.querySelector(".move-top");
window.addEventListener("scroll", (e) => {
    if (window.pageYOffset > 150) {
        btnMoveTop.classList.add("show");
    } else {
        btnMoveTop.classList.remove("show");
    }
});

function scrollToTop() {

    window.scrollTo({top: 0, behavior: 'smooth'});

}
//end move top

//stiky nav reading page
window.onscroll = function () { myFunction() };

var navbar = document.getElementById("controller");
var sticky = navbar.offsetTop;

function myFunction() {
    if (window.pageYOffset >= sticky) {
        navbar.classList.add("sticky")
    } else {
        navbar.classList.remove("sticky");
    }
}

//Btn Follow
function btnfollow(){
    var test=document.getElementById("myBtn").value;
    
    if(test=="Theo dõi truyện"){
    
      document.getElementById("myBtn").value = "Hủy theo dõi";
    }
    else{
    
      document.getElementById("myBtn").value = "Theo dõi truyện";
    }}

//Btn Like
function btnlike(){
    var test=document.getElementById("BtnLike").value;
    if(test=="Thích"){    
        document.getElementById("BtnLike").value = "Bỏ thích";     
    }else{
        
        document.getElementById("BtnLike").value = "Thích";
      }}