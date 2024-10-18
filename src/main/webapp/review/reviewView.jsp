<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/reviewView.css">
<script type="text/javascript" src="script/review.js"></script>

<title>모던하우스 리뷰 상세페이지</title>
</head>
<body>

	<%@ include file="/common/main_header.jsp" %>
	<%@ include file="/common/right_menu.jsp" %>

<div id="wrap" align="center">
      <h1 class="title">리뷰 상세보기</h1>
      <table class="cover">
        <tr class="top">
          <th>작성자</th>
          <td>${review.userid}</td>
          <th>이메일</th>
          <td>${review.email}</td>
        </tr>
        <tr class="top">
          <th>작성일</th>
          <td><fmt:formatDate value="${review.writedate}" /></td>
          <th>조회수</th>
          <td>${review.readcount }</td>
        </tr>
        <tr class="bottom">
          <th>주소</th>
          <td colspan="3">${review.address}</td>
        </tr>
        <tr class="bottom" style="height:300px">
          <th>내용</th>
          <td colspan="3"><pre>${review.content }</pre></td>
        </tr>
      </table>
      <br> 
      <br> 
      <input class="sub_btn" type="button" value="리뷰 수정" onclick="open_win('ModernServlet?command=review_check_pass_form&num=${review.num}', 'update')">
      <input class="other_btn" type="button" value="리뷰 삭제"  onclick="open_win('ModernServlet?command=review_check_pass_form&num=${review.num}', 'delete')">
      <input class="other_btn" type="button" value="리뷰 리스트"   onclick="location.href='ModernServlet?command=review_list'"> 
      <input class="other_btn" type="button" value="리뷰 등록"  onclick="location.href='ModernServlet?command=review_write_form'">
    </div>

<%@ include file="/common/footer.jsp" %>

</body>
</html>