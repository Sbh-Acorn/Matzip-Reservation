let $bannerList = document.getElementById("banner_list");
let $left = document.getElementById("left_wrap");
let $right = document.getElementById("right_wrap");
let $bannerWrap = document.getElementById("banner_wrap");
let $bannerItems = document.querySelectorAll(".banner_item").length;
let currentIndex = 0;
let slideInterval;
let isSliding = false;

// 자동 슬라이드
function autoSlide() {
    slideInterval = setInterval(() => {
        moveSlide(1);
    }, 2000);
}

function moveSlide(direction) {
    // 슬라이드가 진행 중이면 새로운 슬라이드를 시작하지 않도록 함
    if (isSliding) return;
    isSliding = true;

    // direction 변수를 받아 이동할 방향 결정
    if (direction === 1 && currentIndex < $bannerItems - 1) {
        currentIndex++;
    } else if (direction === -1 && currentIndex > 0) {
        currentIndex--;
    }

    $bannerList.style.transform = `translateX(${-750 * currentIndex}px)`;

    // 애니메이션이 끝난 후 중복 실행 방지
    setTimeout(() => {
        isSliding = false;
    }, 1000);

    toggleButtons();
}

// 좌우 버튼 표시 여부
function toggleButtons() {
    if (currentIndex === 0) {
        $left.style.display = "none";
    } else {
        $left.style.display = "flex";
    }

    if (currentIndex === $bannerItems - 1) {
        $right.style.display = "none";
    } else {
        $right.style.display = "flex";
    }
}

$bannerWrap.addEventListener("mouseenter", () => {
    clearInterval(slideInterval);
});

$bannerWrap.addEventListener("mouseleave", () => {
    autoSlide();
});

// 버튼 이벤트
$left.addEventListener("click", () => {
    moveSlide(-1);
});

$right.addEventListener("click", () => {
    moveSlide(1);
});

window.onload = function() {
    toggleButtons();
    autoSlide();
};