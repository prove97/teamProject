function loadImg(inputFile, num){
    // console.log(inputFile)
    // console.log(num)
    //inputFile : 현재 변화가 생긴 input type=file 요소객체
    //num : 몇번째 input요소인지 확인하기 위한 파라미터
    
    
    //inputFile.files[0] => 선택된 파일이 담겨있다.
    //inputFile.files.length -> 1
    console.log(inputFile.files.length)

    if (inputFile.files.length == 1){//파일을 하나 선택 => 미리보기
        const reader = new FileReader();

        reader.readAsDataURL(inputFile.files[0]);

        reader.onload = function(ev){
            if(num == 1) {
                document.getElementById("product-img").src = ev.target.result;
            }
        }
    } else { // 선택된 파일을 취소한 경우 => 미리보기 지우기
        if (num == 1) {
            document.getElementById("product-img").src = "${pageContext.request.contextPath}/img/fileImg.png";
        }
    }
}

function chooseFile(num){
    const imgInput = document.querySelector("#file" + num);
    imgInput.click();
}

$('#title').keyup(function (e){
    var content = $(this).val();
    $('#title_letter_count').text("("+content.length+" / 40)");

    if (content.length > 40){
        alert("최대 40자까지 입력 가능합니다.");
        $(this).val(content.substring(0, 40));
        $('#counter').text("(40 / 40)");
    }
});

$('#product_info').keyup(function (e){
    var content = $(this).val();
    $('#info_letter_count').text("("+content.length+" / 2000)");

    if (content.length > 2000){
        alert("최대 2000자까지 입력 가능합니다.");
        $(this).val(content.substring(0, 2000));
        $('#counter').text("(2000 / 2000)");
    }
});

const noselected = document.getElementById("category_middle_noselected");
const middle1 = document.getElementById("category_middle_1");
const middle2 = document.getElementById("category_middle_2");
const middle3 = document.getElementById("category_middle_3");
const middle4 = document.getElementById("category_middle_4");
const middle5 = document.getElementById("category_middle_5");
    
function category_top(num){
    noselected.style.display = "none";

    middle1.style.display = "none";
    middle2.style.display = "none";
    middle3.style.display = "none";
    middle4.style.display = "none";
    middle5.style.display = "none";

    var categoryId = "category_middle_" + num;
    const ele = document.getElementById(categoryId);
    ele.style.display = "block";
    
    var elements = document.querySelectorAll('[id^="category_top_opt"]');
    elements.forEach(function(element) {
		element.style.color = "black";
	});
    
    var categoryOpt = "category_top_opt" + num;
    const opt = document.getElementById(categoryOpt);
    opt.style.color = "green";
}

const formData = new FormData();
var categoryM = "";

function category_middle(button){
    var elements = document.querySelectorAll('[id^="category_middle_opt"]');
    elements.forEach(function(element) {
        element.style.color = "black";
    });

    var categoryId = button.id;
    const ele = document.getElementById(categoryId);
    ele.style.color = "green";
	
	categoryM = button.value;
}

document.getElementById('submit_btn').addEventListener("click", function() {
	document.getElementById("categoryM").value = categoryM;
});