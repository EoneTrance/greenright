package com.greenright.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.greenright.dao.BoardDao;
import com.greenright.dao.BoardPhotoDao;
import com.greenright.domain.Board;
import com.greenright.domain.BoardPhoto;
import com.greenright.service.BoardService;

@Service
public class DefaultBoardService implements BoardService {

  @Resource private BoardDao boardDao;
  @Resource private BoardPhotoDao boardPhotoDao;

  @Transactional
  @Override
  public void insert(Board board) throws Exception {
   
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
    boardPhotoDao.deleteAll(no);
    boardDao.delete(no);
  }

  @Override
  public Board get(int no) throws Exception {
    Board board = boardDao.findWithFilesBy(no);
    if (board == null) {
      throw new Exception("해당 번호의 데이터가 없습니다!");
    }
    boardDao.increaseViewCount(no);
    return board;
  }

  @Override
  public List<Board> list() throws Exception {
    return boardDao.findAll();
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
  public List<Board> search1(String title) throws Exception {
    return boardDao.findyByKeyword1(title);
  }

  @Override
  public List<Board> search2(String contents) throws Exception {
    // TODO Auto-generated method stub
    return boardDao.findyByKeyword2(contents);
  }

  @Override
  public List<Board> search3(String name) throws Exception {
    // TODO Auto-generated method stub
    return boardDao.findyByKeyword3(name);

  }





}
