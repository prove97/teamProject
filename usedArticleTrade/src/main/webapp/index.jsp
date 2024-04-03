<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
   
   <link rel="stylesheet" href="${pageContext.request.contextPath}/style/index.css">

</head>
<body>
    <%@ include file="views/common/header.jsp" %>
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
                <div>
                    <img src="${pageContext.request.contextPath}/img/categoryBtn.png" alt="">
                </div>
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
    <section class="main">
    	
        <div id="banner">
            <img src="${pageContext.request.contextPath}/img/banner.png" alt="배너">
        </div>
        <div class="contents">
            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>
                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>

                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>

                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>

                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>

                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>

                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>

                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>

                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>

                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>

                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>

                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>

                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>

                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>

                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>

                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>

                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>

                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>

                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>에어팟맥스</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>500,000원</p>
                        </div>
                        <div class="beforeDay">
                            <p>4일전</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="pagination">
                <a href="#">&laquo;</a>
                <a href="#">1</a>
                <a href="#" class="active">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#">6</a>
                <a href="#">7</a>
                <a href="#">8</a>
                <a href="#">9</a>
                <a href="#">10</a>
                <a href="#">&raquo;</a>
              </div>
        </div>
    </section>
    
    <%@ include file="views/common/footer.jsp" %>
</body>
</html>