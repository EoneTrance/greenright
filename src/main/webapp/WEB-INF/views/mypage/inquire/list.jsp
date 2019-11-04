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
        <caption>1:1문의</caption>
        <tbody>
            <tr>
                <th>No</th>
                <th>등록일</th>
                <th>제목</th>
                <th>질문</th>
                <th>답변여부</th>
            </tr>
            <c:forEach items="${boards}" var="board">
              <tr>
                <td>${board.no}</td>
                <td>${board.date}</td>
                <td><a href='detail?no=${board.no}'>${board.title}</a></td>
                <td>${board.contents}</td>
                <td>${board.answerTrueFalse}</td>
              </tr>
            </c:forEach>
        </tbody>
    </table>
    <select class="form-control" name="answer" value='${member.cell_phone.substring(0,3)}'
            style="width:120px;height:35px;display: inline;">
            <option>전체</option>
            <option>미답변</option>
            <option>답변완료</option>
    </select>
    <select class="form-control" name="date" value='${member.cell_phone.substring(0,3)}'
            style="width:120px;height:35px;display: inline;">
            <option>전체</option>
            <option>일주일</option>
            <option>한달</option>
            <option>세달</option>
    </select>
    <select class="form-control" name="type" value='${member.cell_phone.substring(0,3)}'
            style="width:120px;height:35px;display: inline;">
            <option>제목</option>
            <option>내용</option>
            <option>글쓴이</option>
            <option>아이디</option>
            <option>닉네임</option>
    </select>
    <P align="right"><a class="form-control" style="width:120px;height:35px;display: inline;" href='form'>문의 작성</a><p>
    </div>
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  </body>
</html>