package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;
import com.fasterxml.jackson.annotation.JsonFormat;

public class Exhibition implements Serializable {

  private static final long serialVersionUID = 1L;
  
  private int exhibitionNo;
  private int memberNo;
  private String title;
  private String contents;
  private List<ExhibitionPhoto> photos;
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
  private Date createdDate;
    
}
