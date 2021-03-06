package com.greenright.service.impl;

import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.greenright.dao.BoardDao;
import com.greenright.dao.BoardPhotoDao;
import com.greenright.dao.RecommendDao;
import com.greenright.domain.Board;
import com.greenright.domain.BoardPhoto;
import com.greenright.service.BoardService;

@Service
public class DefaultBoardService implements BoardService {

  @Resource private BoardDao boardDao;
  @Resource private BoardPhotoDao boardPhotoDao;
  @Resource private RecommendDao recommendDao;
  @Transactional
  @Override
  public void insert(Board board) throws Exception {
    if (board.getContents().length()==0 ||board.getTitle().length()==0) {
      throw new Exception("board 에대한 내용 부족 ");
    }
    boardDao.insert(board);
    for (BoardPhoto photo : board.getPhotos()) {
      photo.setBoardNo(board.getNo()); 
      boardPhotoDao.insert(photo);
    }
  }

  @Transactional
  @Override
  public void delete(int no) throws Exception {
    if (boardDao.findBy(no) == null) {
      throw new Exception("해당 데이터가 없습니다.");
    }
    recommendDao.deleteAllRecommend(no);
    boardPhotoDao.deleteAll(no);
    boardDao.delete(no);
  }

  @Override
  public Board get(int no) throws Exception {
    Board board = boardDao.findWithFilesBy(no);
    if (board == null) {
      throw new Exception("해당 번호의 데이터가 없습니다!");
    }
    int a = board.getNo();
    board.setRecommendation(recommendDao.CountRecommend(a));
    boardDao.increaseViewCount(no);
    return board;
  }

  @Override
  public List<Board> list(int pageNo, int pageSize) throws Exception {
    HashMap<String,Object> param = new HashMap<>();
    param.put("offset", (pageNo - 1) * pageSize);
    param.put("pageSize", pageSize);
    
    List<Board> boardList= boardDao.findAll(param);
      for(Board b : boardList) {
        int a = b.getNo();
        b.setRecommendation(recommendDao.CountRecommend(a));
      }
     
    return boardList;
  }

  @Transactional
  @Override
  public void update(Board board,String boardPhotoNo[]) throws Exception {
    if(boardPhotoNo[0]!="0") {
      for(String bpn : boardPhotoNo) {
        if(bpn!="0") {
          int a =  Integer.parseInt(bpn);
          boardPhotoDao.delete(a);
        }
      }
    }

    boardDao.update(board);
    for (BoardPhoto file : board.getPhotos()) {
      file.setBoardNo(board.getNo()); 
      boardPhotoDao.insert(file);

    }
  }
  @Override
  public List<Board> search1(String title,int pageNo, int pageSize) throws Exception {
    HashMap<String,Object> param = new HashMap<>();
    param.put("offset", (pageNo - 1) * pageSize);
    param.put("pageSize", pageSize);
    param.put("title", title);
    
    List<Board> boardList = boardDao.findByKeyword1(param);
    for(Board b : boardList) {
      int a = b.getNo();
      b.setRecommendation(recommendDao.CountRecommend(a));
    }
  return boardList;
  
  }

  @Override
  public List<Board> search2(String contents,int pageNo, int pageSize) throws Exception {
    HashMap<String,Object> param = new HashMap<>();
    param.put("offset", (pageNo - 1) * pageSize);
    param.put("pageSize", pageSize);
    param.put("contents", contents);
    
    List<Board> boardList = boardDao.findByKeyword2(param);
    for(Board b : boardList) {
      int a = b.getNo();
      b.setRecommendation(recommendDao.CountRecommend(a));
    }
  return boardList;
  }

  @Override
  public List<Board> search3(String name,int pageNo, int pageSize) throws Exception {
    HashMap<String,Object> param = new HashMap<>();
    param.put("offset", (pageNo - 1) * pageSize);
    param.put("pageSize", pageSize);
    param.put("name", name);
    
    List<Board> boardList = boardDao.findByKeyword3(param);
    for(Board b : boardList) {
      int a = b.getNo();
      b.setRecommendation(recommendDao.CountRecommend(a));
    }
  return boardList;
  }
  
  @Override
  public int size() throws Exception {
    return boardDao.countAll();
  }

  @Override
  public int search1Size(String title) throws Exception {
    return boardDao.countAll1(title);
  }
  @Override
  public int search2Size(String contents) throws Exception {
    return boardDao.countAll2(contents);
  }
  @Override
  public int search3Size(String name) throws Exception {
    return boardDao.countAll3(name);
  }



}
