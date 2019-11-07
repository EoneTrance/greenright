<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>카테고리 보기</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/common.css" rel="stylesheet">
    
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.0.min.js" ></script>

</head>
<body>


    
<div id='content'>
<h1>게시물</h1>
<form action='update' method='post'>
번호 : <input type='text' name='id' value='${category.id}' readonly><br>
내용 : <textarea name='name' rows='5' cols='50'>${category.name}</textarea><br>
<button>변경</button>
<a href='delete?id=${category.id}'>삭제</a>
</form>
<hr>
</div>

</body>
</html>
