<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/node_modules/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/common.css">
<title>GreenRight</title>
</head>
<body>
<div id="content">
    <h1 style="color:green;">
      <a href="http://localhost:8888/greenright/member/list" style="color:green;">GreenRight</a>
    </h1>
    <h2>아이디 찾기 결과</h2>
    <br>
    <p>회원님의 아이디는 '${foundMember.id}' 입니다.</p>
    <br>
    <div id="loginForm">
        <div id="findId">
          <form action="findAccount/pw" method="post" enctype="multipart/form-data">
            <table>
            <tr style="width:500px;text-align:center">
              <td style="width:248px">
                <input name="foundId" value='${foundMember.id}' style="display:none">
                <button class="btn btn-lg" type="submit" style="font-weight:bold;width:248px;">비밀번호 찾기</button>
              </td>
            </tr>
            </table>
          </form>
        <a href="form"><button class="btn btn-lg btn-success btn-block" type="button" >로그인</button></a>
        </div>
    </div>
  </div>
</body>
</html>