<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>사진게시물 보기</title>
  <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
  <link rel='stylesheet' href='/css/common.css'>
</head>
<body>
    
<div id='content'>
<h1>상품게시물</h1>
<form action='update' method='post' enctype='multipart/form-data'>
그룹아디 : <input type='text' name='no' value='${product.groupNo}' readonly><br>
멤버넘버 : <input type='text' name='no' value='${product.memberNo}' readonly><br>
상품가격 : <input type='text' name='no' value='${product.price}' readonly><br>
상품이름 : <input type='text' name='no' value='${product.productName}' readonly><br>
상품설명 : <input type='text' name='no' value='${product.description}' readonly><br>
<p>
<c:forEach items="${product.files}" var="file">
  <img src='/upload/product/${file.filePath}' class='photo2'> 
</c:forEach>
</p>
<c:forEach begin="1" end="6">
  사진: <input type='file' name='filePath'><br>
</c:forEach>

<button>변경</button>
<a href='delete?no=${product.no}'>삭제</a>
</form>
</div>


</body>
</html>
