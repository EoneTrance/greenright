package com.greenright.dao;

import java.util.List;
import com.greenright.domain.FAQ;

public interface FAQDao {
  
  int insert(FAQ faq) throws Exception;
  List<FAQ> findAll() throws Exception;
  FAQ findBy(int no) throws Exception;
  int update(FAQ faq) throws Exception;
  int delete(int no) throws Exception;
  
  List<FAQ> findByKeyword(String keyword) throws Exception;
}
