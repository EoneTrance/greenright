<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>1대1 문의 게시물 입력</title>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
</head>


<body>
  
  
  <form action="privatequestionadd" method="post">
    <table class=" border border-dark table table-striped table table-hover border-dark">
     <!--   <tr>
          <th>문의유형</th>
            <td>
            <select class="custom-select" id="questionType">
              <option selected>문의유형을 선택해주세요</option>
              <option value="1">배송</option>
              <option value="2">판매자신청</option>
              <option value="3">작가전등록</option>
            </select>
            </td>
        </tr> -->
        
        <tr>
          <th>문의유형</th>
          <td><input type="text" id="questionType" name="questionType"/></td>
        </tr>
        
        <tr>
          <th>회원번호</th>
          <td><input type="text" id="no" name="no"/></td>
        </tr>
        
        <tr>
          <th>제목</th>
          <td><input type="text" id="title" name="title"/>
          </td>
        </tr>
        
        <tr>
          <th>내용</th>
          <td><input type="text" id="contents" name="contents"/>
          </td>
        </tr>
        
        <tr>
          <th>등록일</th>
          <td><input type="text" id="createdDate" name="createdDate" readonly/>
          </td>
        </tr>
        
        <tr>
          <th>답변여부</th>
          <td><input type="text" id="answer" name="answer"/>
          </td>
        </tr>
    </table>
    <button class="btn btn-outline-success border border-success ">등록</button>
  </form>
  
  
    <script>
    document.getElementById('createdDate').value = new Date().toISOString().substring(0, 10);;
  </script>
</body>
</html>