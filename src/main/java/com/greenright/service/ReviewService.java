package com.greenright.service;

import java.util.List;
import com.greenright.domain.Review;

public interface ReviewService {
  List<Review> list(int no) throws Exception;
  void insert(Review review)throws Exception;
  int checkReview(Review review)throws Exception;
}
