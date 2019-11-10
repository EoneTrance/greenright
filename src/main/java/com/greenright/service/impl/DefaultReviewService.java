package com.greenright.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.ReviewDao;
import com.greenright.dao.ReviewPhotoDao;
import com.greenright.domain.Review;
import com.greenright.domain.ReviewPhoto;
import com.greenright.service.ReviewService;
@Service
public class DefaultReviewService implements ReviewService{

  @Resource private ReviewDao reviweDao;
  @Resource private ReviewPhotoDao reviewPhotoDao;
  
  @Override
  public void insert(Review review) throws Exception {
     reviweDao.insertReview(review);
     ReviewPhoto reviewphoto =review.getPhotos();
     reviewphoto.setReviewNo(review.getNo());
     reviewPhotoDao.insertReviewPhoto(reviewphoto);
  }

}
