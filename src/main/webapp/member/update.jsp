<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/update.css">
<script type="text/javascript" src="script/member.js"></script>

<title>모던하우스 마이페이지</title>
</head>
<body>

<form method="post" name="frm" action="ModernServlet">
      	<input type="hidden" name="command" value="mdh_update">
        <div class="join_box">
            <div class="title_box">회원정보 수정</div>
            <p class="mand">'*' 표시 항목은 필수 입력 항목입니다.</p>
            
            <div class="input_box">
            	<input class="name_input" type="text" name="username" value="${mVo.username}" readonly>
                
                
                <input class="id_input" type="text" name="userid" value="${mVo.userid}" readonly>
               <p class="manda" style="color:#2fb8bd">-- 회원 이름과 아이디는 변경할 수 없습니다.</p>
                
                <input class="pw_input" type="password" placeholder="비밀번호 *" name="pwd">
                <input class="pw_check_input" type="password" placeholder="비밀번호 확인 *" name="pwd_check">
                <input class="email_input" type="text" name="email" value="${mVo.email}">
            	<input class="phone_input" type="text" name="phone" value="${mVo.phone}">
            	<input class="address_input" type="text" name="address" value="${mVo.address}">
            </div>
            <div class="button_box">
            	<input type="submit" class="join_btn" value="수정" onclick="return joinCheck()">
            	<input type="reset" class="reset_btn" value="취소">
            	<input type="button" class="home_btn" value="홈으로" onclick="location.href='main.jsp'">
            </div>
            
            
        </div>
      </form>

</body>
</html>