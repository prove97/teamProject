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
   
<style>
    body{
        display: flex;
        justify-content: center;
        height: 2000px;
        position: relative;
    }
    /*메인 홈페이지*/
    .main{
        padding-top: 100px;
        width: 1920px;
        height: 1080px;
    }

    /*배너*/
    #banner{
        width: 1151px;
        height: 148px;
       border: 1px solid lightgray;
       display: flex;
       margin: auto;
    }
    #banner img{
        width: 1151px;
        height: 148px;
        object-fit: none; 
    }

    /*게시글 담는 페이지*/
    .contents{
        width: 1151px;
        height: 100%;
        padding-top: 40px;
        display: grid;
        grid-template-columns: repeat(6, 1fr);
        grid-auto-rows: 230px;
        column-gap: 37px;
        margin: auto;
        
    }
    /*게시글*/
    .contents-preview{
        width: 160px;
        height: 185px;
    }
    /*썸네일*/
    .thumnail img{
        width: 160px;
        height: 137px;
    }
    /*썸네일 설명*/
    .thumnail-info{
        border: #D9D9D9 solid 1px;
        padding-left: 5px;
        padding-right: 5px;
        padding-bottom: 5px;
    }
    .name-heart{
        height: 20px;
        display: flex;
        margin-top: 5px;
        justify-content: space-between
    }
    .name-heart p{
        margin: 0;
        font-size: 13px;
    }
    .heart{
        margin-right: 5px;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .heart img{
        width: 15px;
        height: 15px;
    }
    .heart p{
        margin: 0;
        font-size: 13px;
        color: #70C9A0;
    }
    .price-beforeDay{
        height: 20px;
        display: flex;
        align-items: center;
        justify-content: space-between
        
    }
    .price p{
        font-size: 17px;
        margin: 0;
    }
    .beforeDay p{
        font-size: 13px;
        margin: 0;
        color: #767676;
    }

    
</style>
</head>
<body>
    <%@ include file="views/common/header.jsp" %>
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
    </section>
    <%@ include file="views/common/footer.jsp" %>
</body>
</html>