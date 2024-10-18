<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/login.css">
<script type="text/javascript" src="script/member.js"></script>

<title>모던하우스 회원 로그인</title>
</head>
<body>

	<form method="post" name="frm" action="ModernServlet">
	<input type="hidden" name="command" value="mdh_login">
        <div class="login_box">
            <div class="member_btn_box">
                <button class="mem">회원 로그인</button>
                <button class="notmem">비회원 주문 조회</button>
            </div>
            <div class="input_box">
                <input class="id_input" type="text" placeholder="아이디" name="userid" value="${userid}">
                <input class="pw_input" type="password" placeholder="비밀번호" name="pwd">
                <div class="save_box">
                    <input id="check" type="checkbox">
                    <label for="check"></label>
                    <p class="save">아이디 저장</p>
                </div>
            <div class="message" style="color:red">${message}</div>
            <div class="message" style="color:green">${message_suc}</div>
            </div>
            <input type="submit" class="login_btn" value="로그인" onclick="return loginCheck()">
            <div class="etc_box">
                <input type="button" value="아이디 찾기">
                <input type="button" value="비밀번호 찾기">
                <input type="button" value="회원가입" onclick="location.href='ModernServlet?command=mdh_join_form'">
            </div>
        </div>
    </form>

</body>
</html>