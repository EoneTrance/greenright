<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>카테고리</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.0.min.js" ></script>



  </head>
  
  <body> 
    <div class="container">
      <table class="table table-striped table-bordered table-hover">
                     
    <tbody>
      <tr>
      <th class='all' >전체</th>
      <th>${category[1].name}</th>
      <th>${category[2].name}</th>
      <th>${category[3].name}</th>
      <th>${category[4].name}</th>
      <th>가구</th>
      <th>업사이클링</th>
      </tr>
    </tbody>     
     
    </table>     

    
    </div>
      
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="js/bootstrap.min.js"></script>

  </body>
</html>