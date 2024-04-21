const comment_part = document.getElementById("comment_banner_menu1");
const comment = document.getElementById("comment_banner_menu2");
const opt1 = document.getElementById("banner_opt1");
const opt2 = document.getElementById("banner_opt2");

function show_comment_part() {
    comment_part.style.display = "block";
    comment.style.display = "none";
    banner_opt1.style.color = "black";
    banner_opt2.style.color = "gray";
}

function show_comment() {
    comment_part.style.display = "none";
    comment.style.display = "block";
    banner_opt1.style.color = "gray";
    banner_opt2.style.color = "black";
}