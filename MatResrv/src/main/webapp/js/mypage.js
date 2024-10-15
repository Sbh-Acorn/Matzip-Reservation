let $btn = document.querySelector("#btn2");

$btn.addEventListener('click', function() {
    const $inputs = document.querySelectorAll('.info_input');
    const $button = document.getElementById('btn2');

    // input의 readonly 속성을 제거하거나 다시 설정
    if ($button.textContent === '변경하기') {
        $inputs.forEach(input => {
            input.removeAttribute('readonly');
            input.style.color = 'blue';
        });
        $button.textContent = '변경완료';
    } else {
        $inputs.forEach(input => {
            input.setAttribute('readonly', 'true');
            input.style.color = 'brown';
        });
        $button.textContent = '변경하기';
    }
});

document.addEventListener('DOMContentLoaded', function() {
    // 초기 설정: 내 정보가 선택된 상태
    const infoItem = document.querySelector('.select_item .select_txt').closest('.select_item');
    infoItem.style.backgroundColor = 'lightblue';
    document.getElementById('my_info').style.display = 'block';
    document.getElementById('my_check').style.display = 'none';
    document.getElementById('my_history').style.display = 'none';

    // 클릭 이벤트 설정
    document.querySelectorAll('.select_item').forEach(item => {
        item.addEventListener('click', function() {
            // 모든 리스트 항목의 배경색을 초기화
            document.querySelectorAll('.select_item').forEach(el => {
                el.style.backgroundColor = '';
            });

            // 클릭된 항목의 배경색을 blue로 변경
            this.style.backgroundColor = 'lightblue';

            // 선택된 항목의 텍스트 내용 가져오기
            const selectedText = this.querySelector('.select_txt').textContent;

            // my_info와 my_check의 display 속성 조절
            if (selectedText === '내 정보') {
                document.getElementById('my_info').style.display = 'block';
                document.getElementById('my_check').style.display = 'none';
                document.getElementById('my_history').style.display = 'none';
            } else if (selectedText === '예약 확인') {
                document.getElementById('my_info').style.display = 'none';
                document.getElementById('my_check').style.display = 'block';
                document.getElementById('my_history').style.display = 'none';
            } else {
                document.getElementById('my_info').style.display = 'none';
                document.getElementById('my_check').style.display = 'none';
                document.getElementById('my_history').style.display = 'block';
            }
        });
    });
});