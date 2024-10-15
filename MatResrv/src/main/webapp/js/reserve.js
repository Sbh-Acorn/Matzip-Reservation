let $btn = document.querySelector("#reserve_btn");
let $modal = document.querySelector("#modal");

$btn.addEventListener("click", () => {
    $modal.style.display = "flex";
})

function closeModal() {
    document.getElementById('modal').style.display = 'none';
}

$(function() {
    $('#demo').daterangepicker({
        "singleDatePicker": true,
        "timePicker": true,
        "timePicker24Hour": true,
        "timePickerIncrement": 60, // 시간을 1시간 단위로 설정
        "minDate": moment().add(1, 'days').startOf('day').set({ hour: 9, minute: 0 }), // 내일 오전 9시부터 선택 가능
        "maxDate": null, // 선택 가능한 최대 날짜를 설정하지 않음
        "locale": {
            "format": "YYYY-MM-DD HH:mm"
        }
    }, function(start, end, label) {
        console.log('New date selected: ' + start.format('YYYY-MM-DD HH:mm') + ' (predefined range: ' + label + ')');
    });
});

// $(function () {
//     $('#demo').daterangepicker({
//         "singleDatePicker": true,
//         "timePicker": true,
//         "timePicker24Hour": true,
//         "timePickerIncrement": 60,
//         "minDate": moment().add(1, 'days').startOf('day').set({ hour: 9, minute: 0 }),
//         "locale": {
//             "format": "YYYY-MM-DD HH:mm"
//         },
//         "parentEl": "#calendar-container", // 달력이 렌더링될 컨테이너 지정
//         "autoApply": true,
//         "alwaysShowCalendars": true // 달력을 항상 보이게 설정
//     });
// });