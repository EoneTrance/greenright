package com.greenright.service;

import java.util.List;
import com.greenright.domain.Faq;

public interface FaqService {

  List<Faq> list(int pageNo, int pageSize, String keyword, String questionType) throws Exception;
  Faq get(int no) throws Exception;
  void update(Faq faq) throws Exception;
  void insert(Faq faq) throws Exception;
  void delete(int no) throws Exception;
  int size(String keyword, String questionType) throws Exception;

  
}

