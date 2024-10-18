<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/sub.css">

<title>[ON 피그먼트 패드겸이불 아이보리]</title>
</head>
<body>

	<%@ include file="common/header.jsp" %>
	<%@ include file="common/right_menu.jsp" %>

    <!-- 상품정보 시작 -->
    <section class="prd_detail">
        <!-- 상품정보 상단 부분 (이미지, 이름, 가격 등)  -->
        <div class="top">
            <!-- 네비게이션 -->
            <h5>
                <a href="ModernServlet?command=mdh_index">HOME</a>>
                <a href="#">패브릭</a>>
                <a href="#">침구</a>>
                <a href="#">이불/홑이불</a>
            </h5>
            <div class="item_info">
                <!-- 상품 사진 -->
                <div class="item_img">
                    <div class="main_img">
                        <img src="./img/item_img_01.jpg" alt="">
                        <div class="img_zoom">
                            <img src="./img/icon_zoom.png" alt="">
                        </div>
                    </div>
                    <div class="img_click">
                        <img src="./img/item_img_01.jpg" alt="">
                        <img src="./img/item_img_02.jpg" alt="">
                        <img src="./img/item_img_03.jpg" alt="">
                    </div>
                </div>
                <!-- 상품 정보 이름, 가격 등 구매부분 -->
                <div class="info_box">
                    <div class="info_title">
                        <h1>ON 피그먼트 패드겸이불<br>아이보리</h1>
                        <div class="share_box">
                            <div class="wish_icon"></div>
                            <div class="share_icon"></div>
                        </div>
                    </div>
                    <div class="price">
                        <div>
                            <div>정가</div>
                            <div>49,900원</div>
                        </div>
                        <div>
                            <div>판매가</div>
                            <div><span>40%</span>29,900원</div>
                        </div>
                    </div>
                    <div class="coupon">
                        <a href="#">
                            <img src="./img/coupon.png" alt="">
                        </a>
                    </div>
                    <div class="shipment">
                        <div>배송비</div>
                        <div>3,000원 (4만원 이상 무료)</div>
                    </div>
                    <div class="item_number">
                        <span>ON 피그먼트 패드겸이불 아이보리</span>
                        <div>
                            <a href="#"></a>
                            <input type="text" value="1">
                            <a href="#"></a>
                        </div>
                        <p>29,900원</p>
                    </div>
                    <div class="total_price">
                        <span>총 주문 금액</span>
                        <div>29,900원</div>
                    </div>
                    <div class="btns">
                        <button>장바구니</button>
                        <button>바로구매</button>
                    </div>
                    <div class="img_banner">
                        <a href="#">
                            <img src="./img/item_banner_01.jpg" alt="">
                        </a>
                        <a href="#">
                            <img src="./img/item_banner_02.jpg" alt="">
                        </a>
                    </div>
                </div>
            </div>
            <!-- 함께 본 상품 -->
            <div class="item_seen">
                <h2>함께 많이 본 상품</h2>
                <div>
                    <dl class="item_container">
                        <dt class="thumnail">
                            <a href="#">
                                <img src="./img/seen_01.jpg" alt="">
                            </a>
                        </dt>
                        <dd class="detail">
                            <a href="#">ON 피그먼트 베개커버 50X70 아이보리</a>
                            <div>
                                <div class="detail_price">
                                    <span>50%</span>
                                    <span>7,950원</span>
                                    <span></span>
                                </div>
        
                                <a href="#"><img src="./img/icon_wish.png" alt=""></a>
                            </div>
                        </dd>
                    </dl>
                    <dl class="item_container">
                        <dt class="thumnail">
                            <a href="#">
                                <img src="./img/seen_02.jpg" alt="">
                            </a>
                        </dt>
                        <dd class="detail">
                            <a href="#">ON 피그먼트 패드겸이불 민트</a>
                            <div>
                                <div class="detail_price">
                                    <span>40%</span>
                                    <span>29,900원</span>
                                    <span></span>
                                </div>
        
                                <a href="#"><img src="./img/icon_wish.png" alt=""></a>
                            </div>
                        </dd>
                    </dl>
                    <dl class="item_container">
                        <dt class="thumnail">
                            <a href="#">
                                <img src="./img/seen_03.jpg" alt="">
                            </a>
                        </dt>
                        <dd class="detail">
                            <a href="#">ON 피그먼트 패드겸이불 라벤더</a>
                            <div>
                                <div class="detail_price">
                                    <span>40%</span>
                                    <span>29,900원</span>
                                    <span></span>
                                </div>
        
                                <a href="#"><img src="./img/icon_wish.png" alt=""></a>
                            </div>
                        </dd>
                    </dl>
                    <dl class="item_container">
                        <dt class="thumnail">
                            <a href="#">
                                <img src="./img/seen_04.jpg" alt="">
                            </a>
                        </dt>
                        <dd class="detail">
                            <a href="#">ON 소프트브리즈 얇은 이불 150x200 아이보리</a>
                            <div>
                                <div class="detail_price">
                                    <span>50%</span>
                                    <span>19,900원</span>
                                    <span></span>
                                </div>
        
                                <a href="#"><img src="./img/icon_wish.png" alt=""></a>
                            </div>
                        </dd>
                    </dl>
                    <dl class="item_container">
                        <dt class="thumnail">
                            <a href="#">
                                <img src="./img/seen_05.jpg" alt="">
                            </a>
                        </dt>
                        <dd class="detail">
                            <a href="#">ON 젤라또 4면 고정밴드가 있는 패드 (7 colors 2 sizes)</a>
                            <div>
                                <div class="detail_price">
                                    <span>66%</span>
                                    <span>19,900원</span>
                                    <span></span>
                                </div>
        
                                <a href="#"><img src="./img/icon_wish.png" alt=""></a>
                            </div>
                        </dd>
                    </dl>
                    <dl class="item_container">
                        <dt class="thumnail">
                            <a href="#">
                                <img src="./img/seen_06.jpg" alt="">
                            </a>
                        </dt>
                        <dd class="detail">
                            <a href="#">ON 피그먼트 베개커버 50x70 블루</a>
                            <div>
                                <div class="detail_price">
                                    <span>50%</span>
                                    <span>7,950원</span>
                                    <span></span>
                                </div>
        
                                <a href="#"><img src="./img/icon_wish.png" alt=""></a>
                            </div>
                        </dd>
                    </dl>
                </div>
                <div class="cover"></div>
                <div class="right_btn"></div>
                
            </div>
        </div>
        <!-- 상품 정보 하단 부분 (정보이미지, 리뷰, 문의, 배송) -->
        <div class="bottom">
            <div class="bar">
                <a href="#" style="background: #2ebdbb; color: #fff;">상품정보</a>
                <a href="#">상품리뷰</a>
                <a href="#">상품문의</a>
                <a href="#">배송정보</a>
            </div>
            <div class="detail_imgs">
                <img src="./img/detail_01.jpg" alt="">
                <img src="./img/detail_02.jpg" alt="">
                <img src="./img/detail_03.jpg" alt="">
                <img src="./img/detail_04.jpg" alt="">
                <img src="./img/detail_05.jpg" alt="">
            </div>
            <div class="bar">
                <a href="#">상품정보</a>
                <a href="#" style="background: #2ebdbb; color: #fff;">상품리뷰</a>
                <a href="#">상품문의</a>
                <a href="#">배송정보</a>
            </div>
            <div class="review">
                <div class="review_title">
                    <h3>REVIEW <span>(5)</span></h3>
                    <a href="#">리뷰 작성하기</a>
                </div>
                <ul class="review_table">                            
                    <li>
                        <div>5</div>
                        <div><a href="#">매장에서 할인할때 사서 써보고 할인 기다렸다가 주문했습니다. 몸에 붙지않아서 너무 좋아요.</a></div>
                        <div>이**</div>
                        <div>2020.12.25</div>
                        <div>답변완료</div>
                    </li>
                    <li>
                        <div>4</div>
                        <div><a href="#">좋은 기회에 잘 구매했어요 아직 사용 전이나 유용하게 사용할것 같아요~</a></div>
                        <div>김**</div>
                        <div>2020.11.21</div>
                        <div>답변완료</div>
                    </li>
                    <li>
                        <div>3</div>
                        <div><a href="#">알러지가 심해 침구류는 까다롭게 선택하는데 피부에 닿는면도 부드럽고 너무 좋와서 컬러별로 구입예정이에요~</a></div>
                        <div>이**</div>
                        <div>2020.09.24</div>
                        <div>답변완료</div>
                    </li>
                    <li>
                        <div>2</div>
                        <div><a href="#">이건 뭐 패드도 되고 이불도 되고 너무 좋네요!!여름에 쓰면 참 좋을거 같아요!!</a></div>
                        <div>홍**</div>
                        <div>2020.08.01</div>
                        <div>답변완료</div>
                    </li>
                    <li>
                        <div>1</div>
                        <div><a href="#">배송도빠르고 포장도잘되어있었습니다 부드러운촉감이라피부에닿아도뽀송뽀송기분좋습니다 지금사용하는데아침에세탁하면저녁에사용할정도로건조도잘됩니다</a></div>
                        <div>박**</div>
                        <div>2020.07.15</div>
                        <div>답변완료</div>
                    </li>
                </ul>
            </div>
            <div class="bar">
                <a href="#">상품정보</a>
                <a href="#">상품리뷰</a>
                <a href="#" style="background: #2ebdbb; color: #fff;">상품문의</a>
                <a href="#">배송정보</a>
            </div>
            <div class="questions">
                <div class="q_title">
                    <h3>상품문의<span>0</span></h3>
                    <a href="#">문의하기</a>
                </div>
                <div class="q_list">등록된 문의가 없습니다.</div>
            </div>
            <div class="bar">
                <a href="#">상품정보</a>
                <a href="#">상품리뷰</a>
                <a href="#">상품문의</a>
                <a href="#" style="background: #2ebdbb; color: #fff;">배송정보</a>
            </div>
            <div class="delivery">
                <h3>배송정보</h3>
                <div>
                    <h5>배송비</h5>
                    <ul>
                        <li>일반 상품 :  3,000원 (4만원 이상 구매 시 무료배송)</li>
                        <li>택배 가구 :  3,000원 (4만원 이상 구매 시 무료배송)</li>
                        <li>설치 가구 :  20,000원 (50만원 이상 구매 시 무료쿠폰 사용)</li>
                        <li>※ 무료 배송 정책은 실 결제 금액 기준입니다</li>
                        <li>※ 도서, 산간, 오지 일부지역은 배송비가 추가될 수 있습니다</li>
                    </ul>
                </div>
                <div>
                    <h5>출고기간</h5>
                    <ul>
                        <li>일반 상품 :  결제 완료 후 출고 완료까지 1~3 영업일 소요 (택배사 사정으로 지연될 수 있는 점 양해 부탁드립니다)</li>
                        <li>가구 상품 :  주문 후 해피콜을 통해 정확한 배송일 확인이 가능</li>
                    </ul>
                </div>
                <div>
                    <h5>배송지역</h5>
                    <ul><li>전국 지역</li></ul>
                </div>
            </div>
        </div>
    </section>

	<%@ include file="common/footer.jsp" %>

</body>
</html>