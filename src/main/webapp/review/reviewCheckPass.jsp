<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/passcheck.css">
<script type="text/javascript" src="script/review.js"></script>

<title>모던하우스 비밀번호 확인</title>
</head>
<body>

<div align="center">
      <h1 class="title_box">비밀번호 확인</h1>
      <form action="ModernServlet" name="frm" method="get">
        <input type="hidden" name="command" value="review_check_pass">
        <input type="hidden" name="num" value="${param.num}">
        <table class="input_box">
          <tr>
            <th>비밀번호 입력</th>
            <td><input type="password" name="pass" size="20"></td>
            <td><input class="btn" type="submit" value=" 확 인 " onclick="return passCheck()"><td>
          </tr>
        </table>
        <p class="text">${message}</p>
      </form>
     </div>

</body>
</html>