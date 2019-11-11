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
<jsp:include page="../../greenheader.jsp" />  

 <div
    style="width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;">
     <h1 style="text-align: center; margin-top: 40px; font-size: 40px;">1:1 문의게시판</h1>
    <p style="text-align: center;">GreenRight 1:1 문의게시판입니다.</p>
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
<br>
<br>
  <jsp:include page="../../greenfooter.jsp" />
</html>
