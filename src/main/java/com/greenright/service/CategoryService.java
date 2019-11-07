package com.greenright.service;

import java.util.List;
import com.greenright.domain.Category;

// 역할:
// => 게시물 관리 업무를 수행
// => 트랜잭션 제어
// => 여러 페이지 컨트롤러가 사용한다.
//
public interface CategoryService {
  List<Category> findAll() throws Exception;
  Category get(int no) throws Exception;
  void insert(Category category) throws Exception;
  void update(Category category) throws Exception;
  void delete(int no) throws Exception;
}










