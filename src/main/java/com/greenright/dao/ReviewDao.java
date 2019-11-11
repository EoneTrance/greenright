package com.greenright.dao;

import java.util.List;
import com.greenright.domain.Review;

public interface ReviewDao {
  int insertReview (Review review) throws Exception;
  int checkReview (Review review) throws Exception;
  List<Review> findAll(int ProductNo)throws Exception;
}
