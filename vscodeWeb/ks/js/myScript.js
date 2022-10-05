/* 리터럴 방식으로 만든 것 */
function f_literal() {
    // 다른 타입의 값을 하나의 배열에 넣을 수 있는 특징
    var arr = ["사과", "배", 1, 23.4, true];
    /*
    for(a in arr){ // foreach문과 비슷함
        document.write(arr[a] + "<br>");
    }
    */
    var result = ""; // 담아낼 공간
    //    for(var i = 0; i < arr.length; i++){
    //     result += arr[i] + "<br>";
    //    }
    //    document.write(result);
    //    document.querySelector("#d1").innerHTML = result;
    //    document.querySelector("div").innerText = result; // 이걸로 하면 <br>이 다 보임
    // document.querySelector("input[type = text]").value = arr[1];
    print(arr, '#d1');
}

/* 함수 방식으로 것든 것 */
//생성자 방식으로 배열 생성
function f_new() {
    // alert("여기에 생성자 배열을 만들어봐요");
    var arr2 = new Array("참외", "자두", "수박", "팡인애플");
    var result = ""; // 담아낼 공간
    // for(var i = 0; i <arr2.length; i++){
    //     result += arr2[i] + "<br>";
    // }
    // console.log(arr2);
    // document.querySelector("input[type=text").value = arr2[2];
    // document.querySelector("#d2").innerHTML = result;
    print(arr2, '#d2');
}

function f_new2() {
    var arr3 = new Array();
    arr3[0] = "참외";
    arr3[1] = "자두";
    arr3[2] = "수박";
    arr3[3] = "파인애플";

    var result = ""; // 담아낼 공간
    // for(var i = 0; i <arr3.length; i++){
    //     result += arr3[i] + "<br>";
    // }
    // document.querySelector("input[type=text").value = arr2[0];
    // document.querySelector("#d3").innerHTML = result;
    print(arr3, '#d3');

}
//공통으로 사용되는 코드를 함수처리해서 공통으로 사용합니다.
function print(p_arr, p_posit) {
    var result = ""; // 담아낼 공간

    for (var i = 0; i < p_arr.length; i++) {
        result += p_arr[i] + "<br>";
    }
    // document.querySelector("input[type=text").value = arr2[0];
    document.querySelector(p_posit).innerHTML = result;
}