<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/reviewWrite.css">
<script type="text/javascript" src="script/product.js"></script>

<title>Insert title here</title>
</head>
<body>

<%@ include file="/common/main_header.jsp" %>
	<%@ include file="/common/right_menu.jsp" %>

<div id="wrap" align="center">
      <h1 class="title">상품 등록</h1>
      <form name="frm" method="post" enctype="multipart/form-data" action="ModernServlet?command=product_write">
        <input type="hidden" name="command" value="product_write">
        <table class="cover">
          <tr>
            <th>상품명</th>
            <td><input type="text" name="productname"></td>
          </tr>
          <tr>
            <th>가격</th>
            <td><input style="width: 10%" type="text" name="price"> 원</td>
          </tr>
          <tr>
            <th>상품사진</th>
            <td><input type="file" name="pictureUrl"></td>
          </tr>
          <tr>
            <th>상품설명</th>
            <td><textarea cols="70" rows="15" name="description"></textarea></td>
          </tr>
        </table>
        <br>
        <br> 
        <input class="sub_btn" type="submit" value="등록" onclick="return productCheck()">
        <input class="other_btn" type="reset"  value="다시 작성">
        <input class="other_btn" type="button" value="목록"  onclick="location.href='ModernServlet?command=product_list'">
      </form>
    </div>

<%@ include file="/common/footer.jsp" %>

</body>
</html>