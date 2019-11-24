package com.greenright.web;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import com.greenright.domain.BoardPhoto;

@Component
public class BoardPhotoWriter {

  String uploadDir;

  public BoardPhotoWriter(ServletContext sc) {
    uploadDir = sc.getRealPath("/upload/board");
  }

  public List<BoardPhoto> getPhotoFiles(MultipartFile[] filePath) throws Exception {
    List<BoardPhoto> photoFiles = new ArrayList<>();
    for (MultipartFile file : filePath) {
      if (file.isEmpty())
        continue;
      // 클라이언트가 보낸 파일을 디스크에 저장한다.
      String filename = UUID.randomUUID().toString();
      file.transferTo(new File(uploadDir + "/" + filename));
      // 저장한 파일명을 PhotoFile에 보관한다.
      BoardPhoto boardPhoto = new BoardPhoto();
      boardPhoto.setFilePath(filename);
      photoFiles.add(boardPhoto);
    }
    return photoFiles;
  }
}
