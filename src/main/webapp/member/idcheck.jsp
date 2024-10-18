<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/idcheck.css">
<script type="text/javascript" src="script/member.js"></script>

<title>모던하우스 아이디 중복체크</title>
</head>
<body>

<form action="ModernServlet" method="get" name="frm">
<input type="hidden" name="command" value="mdh_idcheck">
<div class="title_box">아이디 중복체크</div>
<div class="input_box">
	<input class="id_input" type=text name="userid" value="${userid}"> 
    <input class="idcheck_btn" type=submit value="중복 체크"> <br>
</div>
    
    <c:if test="${result == 1}">
	<script type="text/javascript">
		opener.document.frm.userid.value = "";
	</script>
	<div class="textbox" >
	<p class="text" style="color:red">${userid}은(는) 이미 사용 중인 아이디입니다.</p>
	</div>
	
    </c:if>
    <c:if test="${result==-1}">
    <div class="textbox">
    <p class="text" style="color:green">${userid}은(는) 사용 가능한 아이디입니다.</p>
	<input class="use" type="button" value="사용" class="cancel" onclick="idok('{userid}')">
    </div>
	
    </c:if>
</form>

</body>
</html>