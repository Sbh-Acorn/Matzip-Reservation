let $register = document.querySelector("#register")

$register.addEventListener("click", () => {
    // 각 입력 필드 가져오기
    const $cusPw = document.getElementById("pw").value;
    const $cusCheck = document.getElementById("check");
    
    // 비밀번호와 비밀번호 확인 비교
    if ($cusPw !== $cusCheck.value) {
        // 사용자 정의 메시지 설정
        $cusCheck.setCustomValidity("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
         // 에러 메시지 표시
        $cusCheck.reportValidity();
        $cusCheck.focus();
    } else {
        // 비밀번호가 일치하면 오류 메시지를 제거하고 폼 제출
        $cusCheck.setCustomValidity("");
        $document.getElementById("registerForm").submit(); // 폼 제출
    }
});

function closeModal() {
    document.getElementById('modal').style.display = 'none';
}