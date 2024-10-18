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
<link rel="stylesheet" href="css/review.css">

<title>모던하우스 고객 리뷰</title>
</head>
<body>

	<%@ include file="/common/main_header.jsp" %>
	<%@ include file="/common/right_menu.jsp" %>

<div id="wrap" align="center">
      <h1 class="title">고객 리뷰</h1>
      <table class="list">
        <tr class="write">
          <td colspan="5" style="border: white; text-align: right">
          <a  href="ModernServlet?command=review_write_form">리뷰 등록</a></td>
        </tr>
        <tr class="table_cols">
          <th>작성자</th>
          <th>내용</th>
          <th>주소</th>
          <th>작성일</th>
          <th>조회</th>
        </tr>
        <c:forEach var="review" items="${reviewList }">
          <tr class="record">
            <td style="text-align:center"><a href="ModernServlet?command=review_view&num=${review.num}&userid=${review.userid}">
              ${review.userid } </a></td>
            <td><a href="ModernServlet?command=review_view&num=${review.num}&userid=${review.userid}">${review.content}</a></td>
            <td>${review.address}</td>
            <td style="text-align:center"><fmt:formatDate value="${review.writedate }" /></td>
            <td style="text-align:center">${review.readcount}</td>
          </tr>
        </c:forEach>
      </table>
    </div>
    
    <%@ include file="/common/footer.jsp" %>

</body>
</html>