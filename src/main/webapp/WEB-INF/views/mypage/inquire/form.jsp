<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel='stylesheet' href='/node_modules/bootstrap/dist/css/bootstrap.min.css'>
<script src='/node_modules/bootstrap/dist/js/bootstrap.min.js'></script>
<script src='/node_modules/jquery/dist/jquery.min.js'></script>
<script src='/node_modules/sweetalert/dist/sweetalert.min.js'></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge" charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <title>1:1문의 등록폼</title>
</head>
<body>
<div id='content'>
<h1>게시물 등록폼</h1>
<br><br><br><br><br><br>
<form action='add' method='post'>
<table class="table table-striped table-bordered table-hover">
        <tbody>
          <tr>
            <th>제목</th>
            <td><input id="title" type="text" name="title" size="50">
            <select class="form-control" name="type"
                  style="width:130px;height:35px;display: inline;">
                    <option>배송문의</option>
                    <option>판매문의</option>
                    <option>상품문의</option>
                  </select></td>
            
          </tr>
          <tr>
            <th>내용</th>
            <td><textarea name='contents' rows='5' cols='72'></textarea></td>
          </tr>
        </tbody>
    </table>
    <p align="right"><input type = "submit" value = "문의 등록"/></p>
</form>
</div>
</body>
</html>
