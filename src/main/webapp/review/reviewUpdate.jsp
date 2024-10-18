<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/reviewWrite.css">
<script type="text/javascript" src="script/review.js"></script>

<title>Insert title here</title>
</head>
<body>

	<%@ include file="/common/main_header.jsp" %>
	<%@ include file="/common/right_menu.jsp" %>

<div id="wrap" align="center">
      <h1 class="title">리뷰 수정</h1>
      <form name="frm" method="post" action="ModernServlet">
        <input type="hidden" name="command" value="review_update">
        <input type="hidden" name="num" value="${review.num}">
        <table class="cover">
          <tr>
            <th>작성자</th>
            <td><input type="text" size="12" name="userid"  value="${review.userid}" readonly></td>
          </tr>
          <tr>
            <th>비밀번호</th>
            <td><input type="password" size="12" name="pass" placeholder="* 필수 (게시물 수정 삭제시 필요합니다.)"></td>
          </tr>
          <tr>
            <th>내용</th>
            <td><textarea cols="70" rows="15" name="content">${review.content}</textarea></td>
          </tr>
        </table>
        <br>
        <br> 
        <input class="sub_btn" type="submit" value="등록" onclick="return reviewCheck()"> 
        <input class="other_btn" type="reset" value="다시 작성"> 
        <input class="other_btn" type="button" value="목록" onclick="location.href='ModernServlet?command=review_list'">
      </form>
    </div>

<%@ include file="/common/footer.jsp" %>

</body>
</html>