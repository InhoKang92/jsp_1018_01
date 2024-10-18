<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/productUpdate.css">
<script type="text/javascript" src="script/product.js"></script>

<title>Insert title here</title>
</head>
<body>

<%@ include file="/common/main_header.jsp" %>
	<%@ include file="/common/right_menu.jsp" %>

<div id="wrap" align="center">
          <h1 class="title">상품 수정</h1>
          <form method="post" enctype="multipart/form-data" name="frm" action="ModernServlet?command=product_update">
            <input type="hidden" name="code" value="${product.code}">
            <input type="hidden" name="nonmakeImg" value="${product.pictureUrl}">
            <table class="cover">
              <tr>
                <td class="img_box">
                  <c:choose>
                    <c:when test="${empty product.pictureUrl}">
                      <img style="width:80%" src="img/noimage.gif">
                    </c:when>
                    <c:otherwise>
                      <img style="width:80%" src="upload/${product.pictureUrl}">
                    </c:otherwise>
                  </c:choose>
                </td>
                <td class="info">
                  <table>
                    <tr>
                      <th style="width:80px"> 상품명</th>
                      <td>
                        <input type="text" name="productname" value="${product.productName}" size="80">
                      </td>
                    </tr>
                    <tr>
                      <th>가격</th>
                      <td><input style="width:10%" type="text" name="price" value="${product.price}"> 원</td>
                    </tr>
                    <tr>
                      <th>사진</th>
                      <td>
                        <input type="file" name="pictureUrl"><br>
                      </td>
                    </tr>
                    <tr>
                      <th>설명</th>
                      <td><textarea cols="90" rows="10" name="description">${product.description}</textarea></td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
            <input class="sub_btn" type="submit" value="수정" onclick="return productCheck()">
            <input class="other_btn" type="reset" value="다시 작성">
            <input class="other_btn" type="button" value="목록" onclick="location.href='ModernServlet?command=product_list'">
          </form>
        </div>

    <%@ include file="/common/footer.jsp" %>

</body>
</html>