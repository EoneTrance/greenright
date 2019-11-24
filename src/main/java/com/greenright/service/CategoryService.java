package com.greenright.service;

import java.util.List;
import com.greenright.domain.Category;

// 역할:
// => 게시물 관리 업무를 수행
// => 트랜잭션 제어
// => 여러 페이지 컨트롤러가 사용한다.
//
public interface CategoryService {
  List<Category> list() throws Exception;

}


