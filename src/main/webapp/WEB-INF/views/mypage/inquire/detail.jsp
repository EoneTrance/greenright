<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel='stylesheet' href='/node_modules/bootstrap/dist/css/bootstrap.min.css'>
<script src='/node_modules/bootstrap/dist/js/bootstrap.min.js'></script>
<script src='/node_modules/jquery/dist/jquery.min.js'></script>
<script src='/node_modules/sweetalert/dist/sweetalert.min.js'></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>1:1문의게시판</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>
    <div class="container">
    <br><br><br><br><br><br><br><br><br>
      <table class="table table-striped table-bordered table-hover">
        <caption>1:1답변</caption>
        <tbody>
            <tr>
                <th>제목</th>
                <td colspan="3">${privateBoard.title}</td>
            </tr>
            <tr>
                <th>문의일</th>
                <td>${privateBoard.date}</td>
                <th>문의상태</th>
                <td>${privateBoard.answerTrueFalse}</td>
            </tr>
            <tr>
              <th>문의하신내용</th>
              <td colspan="3">${privateBoard.contents}</td>
            </tr>
            <tr>
              <th>답변내용</th>
              <td colspan="3">${privateBoard.answer}</td>
            </tr>
        </tbody>
    </table><br><br>
    <P align="center">
      <button type="button" class="btn btn-success">목록</button>
      <button type="button" class="btn btn-danger">추가문의</button></p>
    </div>
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  </body>
</html>