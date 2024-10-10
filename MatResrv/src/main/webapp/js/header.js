let $box = document.querySelector("#selected_box");
let $ul = document.querySelector("#dropdown");
let $items = document.querySelectorAll(".items");
let $selected = document.querySelector("#selected");

// 드롭다운 메뉴 상호작용
$box.addEventListener("click", () => {
    $ul.classList.toggle("active");
});

// 드롭다운 메뉴 선택
$items.forEach((item, index) => {
    item.addEventListener("click", () => {
        // 선택된 값의 텍스트를 #selected에 넣음
        $selected.textContent = item.textContent;

        // 드롭다운 닫기
        $ul.classList.remove("active");
    });
});