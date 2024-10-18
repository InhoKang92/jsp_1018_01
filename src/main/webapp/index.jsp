<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/main.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<title>모던하우스 공식몰</title>
</head>
<body>

	<%@ include file="common/header.jsp" %>
	<%@ include file="common/right_menu.jsp" %>
	
    
    <!-- 메인 슬라이더 -->
    <section class="slider">
        <div class="slide_wrap">
            <a class="main_img_1" href="#">
                <img src="./img/main_img_1.gif" alt="">
            </a>
            <a class="main_img_2" href="#">
                <img src="./img/main_img_2.jpg" alt="">
            </a>
            <a class="main_img_3" href="#">
                <img src="./img/main_img_3.jpg" alt="">
            </a>
            <a class="main_img_4" href="#">
                <img src="./img/main_img_4.gif" alt="">
            </a>
            <a class="main_img_5" href="#">
                <img src="./img/main_img_5.jpg" alt="">
            </a>
            <a class="main_img_6" href="#">
                <img src="./img/main_img_6.jpg" alt="">
            </a>
            <a class="main_img_7" href="#">
                <img src="./img/main_img_7.jpg" alt="">
            </a>
        </div>
        <div class="main_arrow">
            <a href="#"><div class="arrow_prev"></div></a>
            <a href="#"><div class="arrow_next"></div></a>
        </div>
        <div class="main_bullet">
            <span class="main_bullet_on"></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span class="last_bullet"></span>
        </div>
    </section>
    <!-- 메인 카테고리(주방, 패브릭, 가구 등등) -->
    <section class="main_category">
        <ul>
            <li class="main_list"></li>
            <li class="main_list"></li>
            <li class="main_list"></li>
            <li class="main_list"></li>
            <li class="main_list"></li>
            <li class="main_list"></li>
            <li class="main_list"></li>
            <li class="main_list"></li>
            <li class="main_list"></li>
            <li class="main_list"></li>
        </ul>
    </section>
    <!-- 이미지 배너 -->
    <section class="img_banner">
        <ul>
            <li>
                <a href="ModernServlet?command=mdh_sub">
                    <img src="./img/banner_1.jpg" alt="">
                </a>
            </li>
            <li>
                <a href="ModernServlet?command=mdh_sub">
                    <img src="./img/banner_2.jpg" alt="">
                </a>
            </li>
        </ul>

    </section>
    <!-- 지금 뜨고 있는 베스트 -->
    <section class="best_prd">
        <div>
            <div class="best_title">
                <h3>
                    <a href="ModernServlet?command=mdh_sub">지금 뜨고 있는 베스트</a>
                    <a href="ModernServlet?command=mdh_sub">전체보기</a>
                </h3>
            </div>
        </div>
        <ul class="best_tab">
            <li class="best_on">전체</li>
            <li>주방</li>
            <li>패브릭</li>
            <li>가구</li>
            <li>키즈</li>
            <li>린넨앤키친</li>
            <li>욕실/생활</li>
            <li>홈데코</li>
            <li>수납/정리</li>
            <li>가전/라이프</li>
        </ul>
        <div class="best_items">
            <dl class="item_container"></dl>
            <dl class="item_container"></dl>
            <dl class="item_container"></dl>
            <dl class="item_container"></dl>
            <dl class="item_container"></dl>
        </div>
    </section>
    <!-- 고객님을 위한 맞춤 픽 -->
    <section class="pick_prd">
        <h3 class="pick_title">고객님을 위한 맞춤 PICK!</h3>
        <div class="pick_items">
            <dl class="pick_item_container"></dl>
            <dl class="pick_item_container"></dl>
            <dl class="pick_item_container"></dl>
            <dl class="pick_item_container"></dl>
        </div>
    </section>
    <!-- 따끈따끈한 신상품 -->
    <section class="new_prd">
        <div>
            <div class="new_title">
                <h3>
                    <a href="#">따끈따끈한 신상품</a>
                    <a href="#">전체보기</a>
                </h3>
            </div>
        </div>
        <div class="slide_cover">
            <a href="#">
                <dl class="slide_card">
                    <dt class="card_thumnail">
                        <img src="./img/new_01.jpg" alt="">
                        <span>NEW</span>
                    </dt>
                    <dd class="new_detail">
                        <h6>패브릭</h6>
                        <h3>소프트브리즈 얇은 이불</h3>
                        <p>온몸을 감싸는 포근함!</p>
                        <p>부드러움을 극대화한 피치스킨</p>
                        <p>가공을 한 얇은 차렵이불</p>
                    </dd>
                </dl>
            </a>
        </div>
        <div class="new_bullet">
            <span class="new_bullet_on"></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </div>
        <div class="new_arrow">
            <button class="new_arrow_prev"></button>
            <button class="new_arrow_next"></button>
        </div>
    </section>
    <!-- 이 달의 모던 픽 -->
    <section class="modern_prd">
        <h3 class="modern_title"><a href="#">이 달의 모던 PICK</a></h3>
        <div class="modern_box">
            <a href="./sub.html"></a>
            <a href="./sub.html"></a>
            <a href="./sub.html"></a>
            <a href="./sub.html"></a>
        </div>
    </section>
    <!-- 주목해야할 기획전 -->
    <section class="plan_prd">
        <div>
            <div class="plan_title">
                <h3>
                    <a href="#">주목해야 할 기획전</a>
                    <a href="#">전체보기</a>
                </h3>
            </div>
            <div class="plan_items">
                <div class="plan_left">
                    <div class="plan_left_top">
                        <a href="#">
                            <img src="./img/plan_01.jpg" alt="">
                        </a>
                    </div>
                    <div class="plan_left_bottom">
                        <a href="#">
                            <img src="./img/plan_03.jpg" alt="">
                        </a>
                        <a href="#">
                            <img src="./img/plan_04.jpg" alt="">
                        </a>
                        <a href="#">
                            <img src="./img/plan_05.jpg" alt="">
                        </a>
                    </div>
                </div>
                <div class="plan_right">
                    <div class="plan_left_top">
                        <a href="#">
                            <img src="./img/plan_02.jpg" alt="">
                        </a>
                    </div>
                    <div class="plan_left_bottom">
                        <a href="#">
                            <img src="./img/plan_06.jpg" alt="">
                        </a>
                        <a href="#">
                            <img src="./img/plan_07.jpg" alt="">
                        </a>
                        <a href="#">
                            <img src="./img/plan_08.jpg" alt="">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 모던 엠디의 추천 -->
    <section class="recom_prd">
        <h3 class="pick_title">모던 MD의 추천</h3>
        <div class="recom_box">
            <div class="recom_box_banner">
                <a href="#">
                    <img src="./img/recom_banner_01.jpg" alt="">
                </a>
            </div>
            <dl class="recom_item_container"></dl>
            <dl class="recom_item_container"></dl>
            <dl class="recom_item_container"></dl>
            <dl class="recom_item_container"></dl>
            <dl class="recom_item_container"></dl>
            <dl class="recom_item_container"></dl>
        </div>
    </section>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <!-- 매장찾기, 버터샵, 키즈관 -->
    <section class="store_banner">
        <div class="store_banner_container">
            <ul>
                <li>
                    <a href="#">
                        <img src="./img/store_banner_01.jpg" alt="">
                        <span>매장찾기</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./img/store_banner_02.jpg" alt="">
                        <span>버터샵</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./img/store_banner_03.jpg" alt="">
                        <span>키즈관</span>
                    </a>
                </li>
            </ul>
        </div>
    </section>

    <%@ include file="common/footer.jsp" %>
    
    <script type="text/javascript" src="script/motion.js"></script>

</body>
</html>