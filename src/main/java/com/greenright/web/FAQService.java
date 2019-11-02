package com.greenright.service;

import java.util.List;
import com.greenright.domain.FAQ;

public interface FAQService {

  List<FAQ> list() throws Exception;
  FAQ get(int no) throws Exception;
  void update(FAQ faq) throws Exception;
  void insert(FAQ faq) throws Exception;
  void delete(int no) throws Exception;
  List<FAQ> search(String keyword) throws Exception;
}
