<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
  .btn.btn-primary {
   border-top-left-radius: 2px;
   border-top-right-radius: 2px;
   border-bottom-right-radius: 2px;
   border-bottom-left-radius: 2px;
}
</style>


<form action='add' method='post'>
 <div
    style="width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;">
     <h1 style="text-align: center; margin-top: 40px; font-size: 40px;">1:1 문의게시판</h1>
    <p style="text-align: center;">GreenRight 1 : 1 문의게시판입니다.</p>
    <br>
    <div class="form-group">
     <select class="form-control" name="type"
                  style="width:150px; font-size:15px;  display: inline;">
                    <option>배송문의</option>
                    <option>판매문의</option>
                    <option>상품문의</option>
     </select>
    </div>
      <div class="form-group">
    <label for="inputTitle"><b>제목</b></label> 
      <input id="title" type="text"  class="form-control" name="title" size="50">
    </div>        
    <div class="form-group">
        <label for="message"><b>내용</b></label>
           <textarea name='contents' rows="10" cols="30" class="form-control"></textarea>
    </div>    
    <p align="right"><input type = "submit" class="btn btn-primary" value = "문의 등록"/></p>
</div>

</form>

<br>
<br>
