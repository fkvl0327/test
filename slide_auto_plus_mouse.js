var slideIndex = 1;
var timer = null;
showSlides(slideIndex);

function plusSlides(n) {
     clearTimeout(timer);
	 // clearTimeout(id): 실행되고 있는 timeout을 중지
     showSlides(slideIndex += n);
}

function currentSlide(n) {
     clearTimeout(timer);
     showSlides(slideIndex = n);
}

function showSlides(n) {
     var i;
     var slides = document.getElementsByClassName("mySlides");
     var dots = document.getElementsByClassName("dot");
     if (n==undefined){n = ++slideIndex}
     if (n > slides.length) {slideIndex = 1} // 마지막 슬라이드에서 next는 첫 슬라이드
     if (n < 1) {slideIndex = slides.length} // 첫 슬라이드에서 prev는 마지막 슬라이드
     for (i = 0; i < slides.length; i++) {
         slides[i].style.display = "none";
     } // 한 장의 슬라이드만 보이게 하기 위해 디폴트를 보이지 않는 상태로 둔다
     for (i = 0; i < dots.length; i++) {
         dots[i].className = dots[i].className.replace(" active", "");
     } // dot의 디폴트 상태(#bbb 색상 적용)
     slides[slideIndex-1].style.display = "block";
	 // slideIndex-1번째 슬라이드를 block형으로 표시
     dots[slideIndex-1].className += " active";
	 // slideIndex-1번째 dot에 active 클래스 추가(#ff5025 색상 적용)
     timer = setTimeout(showSlides, 2000);
	 // 자바스크립트 내장함수 setTimeout(함수, 시간): 일정 시간 후 함수 실행
} 