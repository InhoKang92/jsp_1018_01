<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <!-- 헤더 시작 -->
    <header class="header">
        <!-- 헤더 상단 -->
        <div class="header_top">
            <h1 class="logo">
                <a href="ModernServlet?command=mdh_main&userid=${loginUser.userid }">
                    <img src="./img/tlogo.png" alt="">
                </a>
            </h1>
            <div class="mall_switch">
                <ul>
                    <li>
                        <a href="ModernServlet?command=mdh_main&userid=${loginUser.userid }" class="link_modern on">모던몰</a>
                    </li>
                    <li>
                        <a href="ModernServlet?command=mdh_sub" class="link_butter">버터샵</a>
                    </li>
                </ul>
            </div>
            <div class="search_area">
                <input type="text">
                <a href="#"></a>
            </div>
            <div class="top_right">
                <ul>
                    <li>
                        <a href="ModernServlet?command=mdh_logout">
                            <img src="./img/icon_logout.png" alt="">
                            <span >로그아웃</span>
                        </a>
                    </li>
                    <li>
                        <a href="ModernServlet?command=mdh_update_form&userid=${loginUser.userid }">
                            <img src="./img/icon_mypage.png" alt="">
                            <span class="join_span">마이페이지</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="./img/icon_cart.png" alt="">
                            <span>장바구니</span>
                            <span class="cart_num">0</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="./img/icon_call.png" alt="">
                            <span>고객센터</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 헤더 하단 메뉴 부분 -->
        <div class="header_menu">
            <div class="menu_left">
                <div class="menu_icon"></div>
                <div class="cate">카테고리</div>

                <!-- 마우스 오버 메뉴 -->
                <div class="mainmenu">
                    <ul>
                        <li>
                            <a href="ModernServlet?command=mdh_sub">주방</a>
                            <ul class="submenu sub0">
                                <li><a href="ModernServlet?command=mdh_sub">NEW</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">식기류</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">수저/커트러리</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">컵/잔</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">보틀/텀블러</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">테이블소품</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">팬/냄비</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">커피/티 용품</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">조리도구</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">보관용기</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">주방수납/정리</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">주방잡화</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="ModernServlet?command=mdh_sub">패브릭</a>
                            <ul class="submenu sub1">
                                <li><a href="ModernServlet?command=mdh_sub">NEW</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">침구</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">알러지케어</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">담요/블랭킷</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">충전재</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">커튼/블라인드</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">쿠션/방석/패드</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">러그/매트</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">패브릭소품</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="ModernServlet?command=mdh_sub">가구</a>
                            <ul class="submenu sub2">
                                <li><a href="ModernServlet?command=mdh_sub">침실가구</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">주방가구</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">거실가구</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">책상/책장/의자</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">서랍/수납/선반장</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">옷장/행거</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">키즈가구</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">택배가구</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="ModernServlet?command=mdh_sub">키즈</a>
                            <ul class="submenu sub3">
                                <li><a href="ModernServlet?command=mdh_sub">키즈플레이</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">키즈침구</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">키즈식기/주방</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">키즈욕실</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">키즈가구</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">키즈잡화</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="ModernServlet?command=mdh_sub">린넨앤키친</a>
                            <ul class="submenu sub4">
                                <li><a href="ModernServlet?command=mdh_sub">패브릭</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">주방</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">리빙데코</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="ModernServlet?command=mdh_sub">욕실/생활</a>
                            <ul class="submenu sub5">
                                <li><a href="ModernServlet?command=mdh_sub">청소용품</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">휴지통/재활용</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">세탁/건조용품</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">바디/위생용품</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">욕실/생활잡화</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">타올/가운</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">욕실화</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">우산/우의</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">일회용품</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="ModernServlet?command=mdh_sub">홈데코</a>
                            <ul class="submenu sub6">
                                <li><a href="ModernServlet?command=mdh_sub">인테리어 소품</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">캔들/디퓨저</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">홈앤가든</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="ModernServlet?command=mdh_sub">수납/정리</a>
                            <ul class="submenu sub7">
                                <li><a href="ModernServlet?command=mdh_sub">의류수납</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">바구니/박스</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">아이템정리</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">선반/트롤리/카트</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="ModernServlet?command=mdh_sub">가전/라이프</a>
                            <ul class="submenu sub8">
                                <li><a href="ModernServlet?command=mdh_sub">가전/디지털</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">여행</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">플레이</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="ModernServlet?command=mdh_sub">펫본</a>
                            <ul class="submenu sub9">
                                <li><a href="ModernServlet?command=mdh_sub">하우스</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">방석/매트/계단</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">장난감</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">식기</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">간식</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">의류</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">액세서리</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">위생용품</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">가방</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="ModernServlet?command=mdh_sub">뷰티용품</a>
                            <ul class="submenu sub10">
                                <li><a href="ModernServlet?command=mdh_sub">개인위생용품</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">리필용기</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">미용소도구</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">헤어소품</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">시즌잡화</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="ModernServlet?command=mdh_sub">주전부리</a>
                            <ul class="submenu sub11">
                                <li><a href="ModernServlet?command=mdh_sub">건강간식</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">달콤간식</a></li>
                                <li><a href="ModernServlet?command=mdh_sub">건강티백</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <ul class="menu_right">
                <li><a href="ModernServlet?command=mdh_sub">#썸머 핫딜</a></li>
                <li><a href="ModernServlet?command=mdh_sub">베스트</a></li>
                <li><a href="ModernServlet?command=mdh_sub">신상품</a></li>
                <li><a href="ModernServlet?command=mdh_sub">SALE</a></li>
                <li><a href="ModernServlet?command=mdh_sub">쿠폰/혜택</a></li>
                <li><a href="ModernServlet?command=admin_check">상품관리</a></li>
                <li><a href="ModernServlet?command=review_list">REVIEW</a></li>
            </ul>
        </div>
    </header>

</body>
</html>