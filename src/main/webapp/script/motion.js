// 메인 슬라이더 화살표버튼 클릭했을 때 이벤트

$('.arrow_next').click(function(){
    $('.slide_wrap').animate({marginLeft:"-100vw"},200,function(){
        $('.slide_wrap>a').first().appendTo('.slide_wrap');
        $('.slide_wrap').css('margin-left','0');
        
        var on = $('.main_bullet_on').index();

        if(on==6){
            $('.main_bullet>span').first().addClass("main_bullet_on");
            $('.main_bullet_on').last().removeClass("main_bullet_on");
        }else{
            $('.main_bullet_on').next().addClass("main_bullet_on");
            $('.main_bullet_on').first().removeClass("main_bullet_on");
        };
    });
})
$('.arrow_prev').click(function(){
    $('.slide_wrap>a').last().prependTo('.slide_wrap');
    $('.slide_wrap').css('margin-left','-100vw');
    $('.slide_wrap').animate({marginLeft:"0"},200)
})

// 메인 슬라이더 자동으로 넘어가는 이벤트
function next (){
    $('.slide_wrap').animate({marginLeft:"-100vw"},200,function(){
        $('.slide_wrap>a').first().appendTo('.slide_wrap');
        $('.slide_wrap').css('margin-left','0');

        var on = $('.main_bullet_on').index();

        if(on==6){
            $('.main_bullet>span').first().addClass("main_bullet_on");
            $('.main_bullet_on').last().removeClass("main_bullet_on");
        }else{
            $('.main_bullet_on').next().addClass("main_bullet_on");
            $('.main_bullet_on').first().removeClass("main_bullet_on");
        };
    });
}

setInterval(next,5000);


// 메인메뉴 마우스 호버 이벤트
$('.menu_left').mouseenter(function(){
    $('.mainmenu').show();
})
$('.menu_left').mouseleave(function(){
    $('.mainmenu').hide();
})
$('.mainmenu>ul>li').mouseenter(function(){
    var num = $(this).index();
    $(`.sub${num}`).show();
})
$('.mainmenu>ul>li').mouseleave(function(){
    var num = $(this).index();
    $(`.sub${num}`).hide();
})


// 지금 뜨고 있는 베스트 탭 버튼 이벤트
$('.best_tab>li').click(function(){
    $(this).addClass("best_on");
    $(this).siblings().removeClass("best_on");
})

// 지금 뜨고 있는 베스트 제이슨
$(function(){
    $.ajax({
        url: "json/best.jsp",
        dataType: "json",
        success : function(data){
            if(data.length>0){
                for(var i in data){
            
                    $('.item_container').eq(i).append(
                        `<dt class="item_thumnail">
                            <a href="ModernServlet?command=mdh_sub">
                                <img src="${data[i].url}">
                                <span>${data[i].num}</span>
                            </a>
                        </dt>
                        <dd class="item_detail">
                            <a href="ModernServlet?command=mdh_sub">${data[i].title}</a>
                            <div>
                            <div class="item_price">
                                <span>${data[i].dRate}</span>
                                <span>${data[i].price}</span>
                                <span>${data[i].oPrice}</span>
                            </div>
                            <a href="#"><img src="img/icon_wish.png" alt=""></a>
                        </div>
                        </dd>`);
                }
            }
        }
    });
});


// 메인 카테고리 제이슨
$(function(){
    $.ajax({
        url: "./json/main_category.json",
        dataType: "json",
        success : function(data){
            if(data.length>0){
                for(var i in data){
            
                    $(`.main_list:eq(${i})`).append(
                        `<a href="./sub.html">
                            <img src="${data[i].url}">
                            <span>${data[i].name}</span>
                        </a>`);
                }
            }
        }
    });
});


// 고객님을 위한 맞춤 픽 제이슨
$(function(){
    $.ajax({
        url: "./json/pick.json",
        dataType: "json",
        success : function(data){
            if(data.length>0){
                for(var i in data){
            
                    $('.pick_item_container').eq(i).append(
                        `<dt class="pick_thumnail">
                            <a href="./sub.html">
                                <img src="${data[i].url}">
                            </a>
                        </dt>
                        <dd class="pick_detail">
                            <a href="./sub.html">${data[i].title}</a>
                            <div>
                            <div class="pick_price">
                                <span>${data[i].dRate}</span>
                                <span>${data[i].price}</span>
                                <span>${data[i].oPrice}</span>
                            </div>
                            <a href="#"><img src="./img/icon_wish.png" alt=""></a>
                        </div>
                        </dd>`);
                }
            }
        }
    });
});

// 이 달의 모던 픽 제이슨
$(function(){
    $.ajax({
        url: "./json/modern.json",
        dataType: "json",
        success : function(data){
            if(data.length>0){
                for(var i in data){
            
                    $('.modern_box>a').eq(i).append(
                        `<div class="modern_item">
                            <img class="modern_thumnail" src="${data[i].url}">
                            <h3>${data[i].title}</h3>
                            <p>${data[i].contents}</p>
                            <span>더보기+</span>
                        </div>`);
                }
            }
        }
    });
});

// 모던 엠디의 추천 제이슨
$(function(){
    $.ajax({
        url: "./json/md.json",
        dataType: "json",
        success : function(data){
            if(data.length>0){
                for(var i in data){
            
                    $('.recom_item_container').eq(i).append(
                        `<dt class="recom_thumnail">
                            <a href="./sub.html">
                                <img src="${data[i].url}">
                            </a>
                        </dt>
                        <dd class="recom_detail">
                            <a href="./sub.html">${data[i].title}</a>
                            <div>
                                <div class="recom_price">
                                    <span>${data[i].dRate}</span>
                                    <span>${data[i].price}</span>
                                    <span>${data[i].oPrice}</span>
                                </div>

                                <a href="#"><img src="./img/icon_wish.png" alt=""></a>
                            </div>
                        </dd>`);
                }
            }
        }
    });
});