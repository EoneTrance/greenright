package com.greenright.web;

import java.io.File;
import java.util.UUID;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import com.greenright.domain.ReviewPhoto;

@Component
public class ReviewPhotoWriter {

    String uploadDir;
    
    public ReviewPhotoWriter(ServletContext sc) {
      uploadDir =sc.getRealPath("upload/review");
    }
    
    public ReviewPhoto getPhotoFile (MultipartFile photo) throws Exception{
      ReviewPhoto reviewPhoto = new ReviewPhoto();
      String FileName = UUID.randomUUID().toString();
      photo.transferTo(new File(uploadDir +"/" +FileName));
      reviewPhoto.setPhotoPath(FileName);
      return reviewPhoto;
    }

}
