<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>상품등록 테스트페이지</title>
  <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
  <link rel='stylesheet' href='/css/common.css'>
</head>
<body>

    
<div id='content'>
<h1>상품등록 테스트페이지</h1>
<form action='add' method='post' enctype='multipart/form-data'>
그룹넘버: <input type='text' name='groupNo'><br> 
멤버넘버: <input type='text' name='memberNo'><br>
가격: <input type='text' name='price'><br>
상품이름: <input type='text' name='productName'><br>
설명: <input type='text' name='description'><br>
사진: <input type='file' name='filePath'><br>
사진: <input type='file' name='filePath'><br>
사진: <input type='file' name='filePath'><br>
<button>등록</button>
</form>
</div>

</body>
</html>
