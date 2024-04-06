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
    <style>
        /* 노멀라이즈 시작 */
        body,ul,li {
            margin: 0;
            padding: 0;
            list-style: none;
            /* 해당 태그의 list-style을 none으로 하는 것으로 ●을 제거한다 */
        }

        a {
            color: inherit;
            /* 부모 엘리먼트의 값을 물려받는다 */
            text-decoration: none ;
            /* 해당 태그의 text-decoration 속성을 none 값으로 하는 것으로 밑줄을 제거한다 */
        }

        /* 노멀라이즈 끝 */

        /* 2차 이상의 메뉴를 숨기기 */
        .side-bar>ul ul {
            display: none;
        }

        /* 사이트의 높이를 1080px로 만들어 스크롤 생성 */
        .side-bar {
            background: #70C9A0;
            width: 200px;
            height: 1080px;
            box-sizing: border-box;
        }

        /* 대분류의 a에 속성값 부여 */
        .side-bar ul>li>a {
            display: block;
            color: rgb(255, 255, 255);
            font-size: 14px;
            font-weight: bold;
            padding-top: 30px;
            padding-bottom: 30px;
            padding-left: 6px;
            text-decoration: none  !important;
        }

        /* 소분류의 a에 속성값 부여 */
        .side-bar ul>li>ul>li>a {
            display: block;
            color: rgb(0, 0, 0);
            font-size: 14px;
            font-weight: bold;
            padding-top: 20px;
            padding-bottom: 20px;
            padding-left: 20px;
        }



        /* 자식의 position이 absolute일 때 자식을 영역 안에 가두어 준다 */
        .side-bar>ul>li {
            position: relative;
        }

        /* 모든 메뉴가 마우스 인식 시 반응 */
        .side-bar ul>li:hover>a {
            background-color: #EEEEEE;
            border-bottom: 1px solid #EEEEEE;
            color: black;
        }


        /* 1차 메뉴의 항목이 마우스 인식 시에 2차 메뉴 등장 */
        .side-bar>ul>li:hover>ul {
            height: 1080px;
            border: 1px solid #70C9A0;
            display: block;
            position: fixed;
            background-color: #ffffff;
            color: black;
            top: 0;
            /* 2차 메뉴의 상단을 1차 메뉴의 상단에 고정 */
           	left:100%;
           
            /* 2차 메뉴를 1차 메뉴의 너비만큼 이동 */
            width: 100%;
            /* 1차 메뉴의 너비를 상속 */
        }

        /* 사이드바 너비의 80%만큼 왼쪽으로 이동 */
        .side-bar {
            transform: translate(calc(var(--side-bar-width) * -0.8), 0);
            /* X축 이동, Y축 고정 */
            transition: .5s;
        }

        /* 마우스 인식 시 원래의 위치로 이동 */
        .side-bar:hover {
            transform: translate(0px, 0);
            /* 둥근 모서리의 너비만큼 X축 이동, Y축 고정 */
        }

        /* 소분류 사이드바 메뉴바 글씨 */
        .side-bar-min-head {
            margin-top: 20px;
            text-align: center;
            font-size: 18px;
        }

        i.fa-solid:hover {
        color: darkcyan;
        }

        i.fa-bars {
        cursor: pointer;
        }

        i.fa-xmark {
        float: right;
        margin: 5px 10px 0 0;
        cursor: pointer;
        }
    </style>
</head>
<body>

<aside class="side-bar">
        <!-- <section class="side-bar__icon-box">
          <section class="side-bar__icon-1">
            <div></div>
            <div></div>
            <div></div>
          </section>
        </section> -->
        <ul>
            <li>
                <a href="#">컴퓨터·주요부품</a>
                <ul>
                    <div class="side-bar-min-head">
                        <strong>컴퓨터·주요부품</strong>
                        <br>
                        <br>
                    </div>
                    <li><a href="https://www.naver.com/">· CPU</a></li>
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
                <ul>
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
                        <br>
                        <br>
                    </div>
                    <li><a href="#">· 잉크젯 프린터</a></li>
                    <li><a href="#">· 레이저 프린터</a></li>
                    <li><a href="#">· 복합기</a></li>
                    <li><a href="#">· 스캐너</a></li>
                </ul>
            </li>
            <li>
                <a href="#">네트워크 공유기</a>
                <ul>
                    <div class="side-bar-min-head">
                        <strong>네트워크 공유기</strong>
                        <br>
                        <br>
                    </div>
                    <li><a href="#">· 공유기</a></li>
                    <li><a href="#">· 랜카드</a></li>
                    <li><a href="#">· 랜 케이블</a></li>
                    <li><a href="#">· 스위칭 허브</a></li>
                </ul>
            </li>
        </ul>
    </aside>
</body>
</html>