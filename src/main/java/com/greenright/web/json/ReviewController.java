package com.greenright.web.json;

import javax.annotation.Resource;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import com.greenright.domain.Review;
import com.greenright.service.ReviewService;
import com.greenright.web.ReviewPhotoWriter;

@RestController("json.ReviewController")
@RequestMapping("/json/Review")
public class ReviewController {
@Resource private ReviewService reviewService;
@Resource private ReviewPhotoWriter reviewPhotoWriter;

@Transactional
@PostMapping("add")
public JsonResult add(Review review,MultipartFile ReviewPhoto)throws Exception{
  try {
   System.out.println(ReviewPhoto);
    review.setPhotos(reviewPhotoWriter.getPhotoFile(ReviewPhoto));
    reviewService.insert(review);
    return new JsonResult().setResult(JsonResult.SUCCESS);
  }catch(Exception e) {
    return new JsonResult().setResult(JsonResult.FAILURE);
  }
}
}
