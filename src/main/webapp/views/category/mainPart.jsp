<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/mainPart.css">
</head>
<body>
   <div id="sdiv">
    <div id="side-bar">
        <ul>
            <li >
                <a href="#">컴퓨터·주요부품</a>
                <ul >
                    <div class="side-bar-min-head">
                        <strong>컴퓨터·주요부품</strong>
                        <br>
                        <br>
                    </div>
                    <li><a href="index.re">· CPU</a></li>
                    <li><a href="#">· 메인보드</a></li>
                    <li><a href="#">· 메모리</a></li>
                    <li><a href="#">· 그래픽카드</a></li>
                    <li><a href="#">· SSD</a></li>
                    <li><a href="#">· 하드디스크</a></li>
                    <li><a href="#">· ODD(외장/내장)</a></li>
                    <li><a href="#">· 케이스</a></li>
                    <li><a href="#">· 파워서플라이</a></li>
                    <li><a href="#">· 공/수냉쿨러</a></li>
                </ul>
            </li>
            <li>
                <a href="#">키보드·마우스·주변기기</a>
                <ul >
                    <div class="side-bar-min-head">
                        <strong>키보드·마우스·주변기기</strong>
                        <br>
                        <br>
                    </div>
                    <li><a href="#">· 키보드</a></li>
                    <li><a href="#">· 마우스</a></li>
                    <li><a href="#">· 스피커</a></li>
                </ul>
            </li>
            <li>
                <a href="#">모니터·악세서리</a>
                <ul>
                    <div class="side-bar-min-head">
                        <strong>모니터·악세서리 </strong>
                        <br>
                        <br>
                    </div>
                    <li><a href="#">· 19~22 인치 모니터</a></li>
                    <li><a href="#">· 24~26 인치 모니터</a></li>
                    <li><a href="#">· 27~29 인치 모니터</a></li>
                    <li><a href="#">· 30~39 인치 모니터</a></li>
                </ul>
            </li>
            <li>
                <a href="#">프린터·복합기·스캐너</a>
                <ul>
                    <div class="side-bar-min-head">
                        <strong>프린터·복합기·스캐너</strong>

                    </div>
                    <li><a href="#">· 잉크젯 프린터</a></li>
                    <li><a href="#">· 레이저 프린터</a></li>
                    <li><a href="#">· 복합기</a></li>
                    <li><a href="#">· 스캐너</a></li>
                </ul>
            </li>
            <li>
                
                <ul>
                    <div class="side-bar-min-head">
                        <li><a href="#">· 공유기</a></li>
                        <li><a href="#">· 랜카드</a></li>
                        <li><a href="#">· 랜 케이블</a></li>
                        <li><a href="#">· 스위칭 허브</a></li>
                    </div>
                    
                </ul>
            </li>
        </ul>
    </div>
</div>
</body>
<script>
    function categortbar(){
        // 사이드바의 상태를 확인하고 토글한다
        var sidebar = document.querySelector('.side-bar');
        if (sidebar.style.transform === 'translate(0px, 0)') {
            sidebar.style.transform = 'translate(calc(var(--side-bar-width) * -0.8), 0)';
        } else {
            sidebar.style.transform = 'translate(0px, 0)';
        }
    }
    
    /* 카테고리Btn */
    function hoverCategoryBtn(){
        let divSb = document.getElementById("side-bar");
        if(divSb.style.display=="none"){
            divSb.style.display="block";
        } else{
            divSb.style.display="none";
        }
        
    }
</script>
</html>