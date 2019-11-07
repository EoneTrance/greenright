<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물품관리</title>
</head>
<body>
<% session.setAttribute("SellerNo", 1); %>
  <div class="bigout">
      <h1>물품 관리</h1>
      <br>
      <h2>여기서 물품 옵션 선택할수있게하면 될듯 </h2>
      <h2>상품 나오는거는 판매자가 등록한 자기 상품만 볼수있도록</h2>
      <div class="out">
        <table border="1" width="500">
            <tr>
                <th>1-1</th>
                <td>1-2</td>
                <th>1-3</th>
                <td>1-4</td>
            </tr>
            <tr>
                <th>2-1</th>
                <td>2-2</td>
                <th>2-3</th>
                <td>2-4</td>
            </tr>
            <tr>
                <th>2-1</th>
                <td>2-2</td>
                <th>2-3</th>
                <td>2-4</td>
            </tr>
        </table>
      </div>
      <h2>여기서 옵션에따라서 물품 나올수있게하면될듯 </h2>
      <div class="out">
            <table border="1" width ="800">
                    <thead>
                    <tr>
                        <th>상품번호</th>
                        <th>상품이름</th>
                        <th>대분류명</th>
                        <th>소분류명</th>
                        <th>등록일</th>
                        <th>판매자</th>
                        <th>가격</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${products}" var="product">
                    <tr>
                    
                        <th>${product.no}</th>
                        <td><a href='detail?no=${product.no}'>${product.productName}</a></td>
                        <td>${product.group.category.categoryName}</td>
                        <td>${product.group.groupName}</td>
                        <td>${product.registeredDate}</td>
                        <td>${product.seller.member.name}</td>
                        <td>${product.price}</td>
                    
                    </tr>
                    </c:forEach> 
                    </tbody>
                  </table>



      </div>
      
  </div>

     
</body>
</html>

