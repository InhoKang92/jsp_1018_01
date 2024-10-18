<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/admincheck.css">
<script type="text/javascript" src="script/product.js"></script>

<title>Insert title here</title>
</head>
<body>

	<%@ include file="/common/main_header.jsp" %>
	<%@ include file="/common/right_menu.jsp" %>
	
	<div id="wrap" align="center">
      <h1 class="title">관리자 확인</h1>
      <form name="frm" method="post" action="ModernServlet">
        <input type="hidden" name="command" value="admin_check_pass">
        <p class="pass">관리자 비밀번호 입력</p>
        <input class="pass_input" type="password" size="12" name="pass">
        <input class="sub_btn" type="submit" value="확인" onclick="return passCheck()">
        <p class="text">${message}</p>
      </form>
    </div>
	
	<%@ include file="/common/footer.jsp" %>

</body>
</html>