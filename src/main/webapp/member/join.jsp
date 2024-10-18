<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/join.css">
<script type="text/javascript" src="script/member.js"></script>

<title>모던하우스 회원가입</title>
</head>
<body>

      
      <form method="post" name="frm" action="ModernServlet">
      	<input type="hidden" name="command" value="mdh_join">
        <div class="join_box">
            <div class="title_box">회원가입</div>
            <p class="mand">'*' 표시 항목은 필수 입력 항목입니다.</p>
            <div class="input_box">
            	<input class="name_input" type="text" placeholder="이름 *" name="username">
                
                <div>
                	<input class="id_input" type="text" placeholder="아이디 *" name="userid">
                	<input type="hidden" name="reid" size="20"> 
                	<input class="idcheck_btn" type="button" value="중복 체크" onclick="idCheck()">
                </div>
                
                <input class="pw_input" type="password" placeholder="비밀번호 *" name="pwd">
                <input class="pw_check_input" type="password" placeholder="비밀번호 확인 *" name="pwd_check">
                <input class="email_input" type="text" placeholder="이메일" name="email">
            	<input class="phone_input" type="text" placeholder="전화번호" name="phone">
            	<input class="address_input" type="text" placeholder="주소" name="address">
            </div>
            <div class="button_box">
            	<input type="submit" class="join_btn" value="회원가입" onclick="return joinCheck()">
            	<input type="reset" class="reset_btn" value="취소">
            	<input type="button" class="home_btn" value="홈으로" onclick="location.href='ModernServlet?command=mdh_index'">
            </div>
            
            
        </div>
      </form>

</body>
</html>