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

<title>Insert title here</title>
</head>
<body>

	<%@ include file="/common/main_header.jsp" %>
	<%@ include file="/common/right_menu.jsp" %>
	<div id="wrap" align="center">
      	<h1 class="title">상품삭제 관리자 확인</h1>
		<form name="frm" method="post" action="ModernServlet">
        	<input type="hidden" name="command" value="product_delete">
        	<input type="hidden" name="code" value="${code }">
        	<p class="pass">상품을 삭제합니다</p>
        	<input class="sub_btn" type="submit" value="확인">
      	</form>
    </div>
      
	<%@ include file="/common/footer.jsp" %>


</body>
</html>