package com.greenright.dao;

import java.util.List;
import java.util.Map;
import com.greenright.domain.Faq;

public interface FaqDao {
  
  int insert(Faq faq) throws Exception;
  List<Faq> findAll() throws Exception;
  Faq findBy(int no) throws Exception;
  int update(Faq faq) throws Exception;
  int delete(int no) throws Exception;
  
//  List<Faq> findByKeyword(String keyword) throws Exception;
  Map<String, String> findByKeyword(String keyword, String questionType) throws Exception;
}
