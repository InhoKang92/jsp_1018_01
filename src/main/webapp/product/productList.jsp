<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/review.css">

<title>Insert title here</title>
</head>
<body>

<%@ include file="/common/main_header.jsp" %>
	<%@ include file="/common/right_menu.jsp" %>

<div id="wrap" align="center">
      <h1 class="title">상품리스트</h1>
      <table class="list">
        <tr class="write">
          <td colspan="4" style="border: white; text-align: right">
          <a  href="ModernServlet?command=product_write_form">상품 등록</a></td>
        </tr>
        <tr class="table_cols">
          <th>상품명</th>
          <th>가격</th>
          <th>수정</th>
          <th>삭제</th>
        </tr>
        <c:forEach var="product" items="${productList }">
          <tr class="record">
            <td style="text-align:center">${product.productName}</td>
            <td style="text-align:center">${product.price} 원</td>
            <td style="text-align:center"><a href="ModernServlet?command=product_update_form&code=${product.code}">상품 수정</a></td>
            <td style="text-align:center"><a href="ModernServlet?command=delete_admin_check&code=${product.code}">상품 삭제</a></td>
          </tr>
        </c:forEach>
      </table>
    </div>
    
    <%@ include file="/common/footer.jsp" %>

</body>
</html>