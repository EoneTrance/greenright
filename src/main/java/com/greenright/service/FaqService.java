package com.greenright.service;

import java.util.List;
import com.greenright.domain.Faq;

public interface FaqService {

  List<Faq> list() throws Exception;

  Faq get(int no) throws Exception;

  void update(Faq faq) throws Exception;

  void insert(Faq faq) throws Exception;

  void delete(int no) throws Exception;

  List<Faq> search(String keyword, String questionType) throws Exception;
}

