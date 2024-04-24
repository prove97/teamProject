const comment_part = document.getElementById("comment_banner_menu1");
const comment = document.getElementById("comment_banner_menu2");
const opt1 = document.getElementById("banner_opt1");
const opt2 = document.getElementById("banner_opt2");
const purchaseRequest = document.getElementById("purchase_requesting");
const replyComment = document.getElementById("replying");

function show_comment_part() {
    comment_part.style.display = "block";
    comment.style.display = "none";
    purchaseRequest.style.display = "none"
    replyComment.style.display = "none"
    banner_opt1.style.color = "black";
    banner_opt2.style.color = "gray";
}

function show_comment() {
    comment_part.style.display = "none";
    comment.style.display = "block";
    purchaseRequest.style.display = "none"
    replyComment.style.display = "none"
    banner_opt1.style.color = "gray";
    banner_opt2.style.color = "black";
}

function timeForToday(value) {
        const today = new Date();
        const timeValue = new Date(value);

        const betweenTime = Math.floor((today.getTime() - timeValue.getTime()) / 1000 / 60);
        if (betweenTime < 1) return '방금전';
        if (betweenTime < 60) {
            return `${betweenTime}분전`;
        }

        const betweenTimeHour = Math.floor(betweenTime / 60);
        if (betweenTimeHour < 24) {
            return `${betweenTimeHour}시간전`;
        }

        const betweenTimeDay = Math.floor(betweenTime / 60 / 24);
        if (betweenTimeDay < 365) {
            return `${betweenTimeDay}일전`;
        }

        return `${Math.floor(betweenTimeDay / 365)}년전`;
 }
 document.getElementById("enrollDate").innerText = "⏱️" + timeForToday(new Date(document.getElementById("enrollDate").innerText));
 
var times1 = document.querySelectorAll('.time_of_writing1');

times1.forEach(function(time) {
	var originalDate = time.textContent.trim();
	var formattedDate = formatDate(originalDate);
	time.textContent = formattedDate;
});

var times2 = document.querySelectorAll('.time_of_writing2');

times2.forEach(function(time) {
	var originalDate = time.textContent.trim();
	var formattedDate = formatDate(originalDate);
	time.textContent = formattedDate;
});

var times3 = document.querySelectorAll('.time_of_writing3');

times3.forEach(function(time) {
	var originalDate = time.textContent.trim();
	var formattedDate = formatDate(originalDate);
	time.textContent = formattedDate;
});

function formatDate(originalDate) {
    var date = new Date(originalDate);
    var options = {
        year: 'numeric',
        month: '2-digit',
        day: '2-digit',
        hour: '2-digit',
        minute: '2-digit',
        second: '2-digit',
        hour12: false // 오전/오후 표시하지 않음
    };
    return new Intl.DateTimeFormat('ko-KR', options).format(date);
}

document.getElementById("button3").onclick = function(){
	if (comment_part.style.display == "block") {
		if (purchaseRequest.style.display == "none") {
			purchaseRequest.style.display = "block"
		} else {
			purchaseRequest.style.display = "none"
		}
	}
}

document.getElementById("button2").onclick = function() {
	if (comment.style.display == "block") {
		if (replyComment.style.display == "none") {
			replyComment.style.display = "block";
		} else {
			replyComment.style.display = "none";
		}
	}
}