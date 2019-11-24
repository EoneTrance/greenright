<<<<<<< HEAD
package com.greenright.dao;

import java.util.List;
import com.greenright.domain.Review;

public interface ReviewDao {
  int insertReview (Review review) throws Exception;
  int checkReview (Review review) throws Exception;
  List<Review> findAll(int ProductNo)throws Exception;
  Review findBy(int no) throws Exception;
  double getRatingAver(int no) throws Exception;
}
=======
package com.greenright.dao;

import java.util.List;
import com.greenright.domain.Review;

public interface ReviewDao {
  int insertReview(Review review) throws Exception;

  int checkReview(Review review) throws Exception;

  List<Review> findAll(int ProductNo) throws Exception;

  Review findBy(int no) throws Exception;

  double getRatingAver(int no) throws Exception;
}
>>>>>>> f786826130ce28732ecc9270edafeb41088f606f
