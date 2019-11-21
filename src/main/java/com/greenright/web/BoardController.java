package com.greenright.web;

import java.sql.Date;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.greenright.domain.Board;
import com.greenright.domain.Comment;
import com.greenright.domain.Member;
import com.greenright.domain.Recommend;
import com.greenright.service.BoardService;
import com.greenright.service.CommentService;
import com.greenright.service.RecommendService;
import com.greenright.web.json.JsonResult;

@Controller
@RequestMapping("/board")
public class BoardController {
  @Resource
  private BoardPhotoWriter boardPhotoWriter;
  @Resource
  private BoardService boardService;
  @Resource 
  private CommentService commentService;
  @Resource
  private RecommendService recommendService;
  
  @GetMapping("form")
  public String form(HttpSession session) {
    Member loginMember = (Member)session.getAttribute("loginUser");
    if(loginMember ==null) {
      return "redirect:/greenright/main";
    }
    return "product/form";
  }
  @GetMapping("detailedit")
  public String detailedit(Model model, int no,HttpSession session)throws Exception {
    Member loginMember = (Member)session.getAttribute("loginUser");
    if(loginMember ==null) {
      return "redirect:/greenright/main";
    }
    Board board = boardService.get(no);
    model.addAttribute("board", board);
    return null;
  }
    
    
  @PostMapping("add")
  public String add(HttpServletRequest request, HttpSession session, Board board,
      MultipartFile[] filePath) throws Exception {
    int no = ((Member)session.getAttribute("loginUser")).getNo();
    board.setMemberNo(no);
    board.setPhotos(boardPhotoWriter.getPhotoFiles(filePath));

    boardService.insert(board);

    return "redirect:list";
  }

  
  
  
  @GetMapping("delete")
  public String delete(int no) throws Exception {
    boardService.delete(no);

    return "redirect:list";
  }
  
  @GetMapping("detail")
  public void detail(Model model, int no,HttpSession session) throws Exception {
    Board board = boardService.get(no);
    model.addAttribute("board", board);
    List<Comment> comments = commentService.list(no);
    model.addAttribute("comments", comments);
    model.addAttribute("memberName", session.getAttribute("memberName"));
    
  }

  @GetMapping("list")
  public void list(
      @RequestParam(defaultValue = "1") int pageNo, 
      @RequestParam(defaultValue = "5") int pageSize, 
      Model model,
      String type,
      String keyword,
      HttpSession session) throws Exception {
    // 총 페이지 개수 알아내기
    if (pageSize < 5 || pageSize > 20) {
      pageSize = 5;
    }
    int size = boardService.size();
    int totalPage = size / pageSize; // 13 / 5 = 2.x
    if (size % pageSize > 0) {
      totalPage++;
    }
    
    // 요청하는 페이지 번호가 유효하지 않을 때는 기본 값으로 1페이지로 지정한다.
    if (pageNo < 1 || pageNo > totalPage) {
      pageNo = 1;
    }
    
    List<Board> boards = boardService.list(pageNo, pageSize);
    model.addAttribute("boards", boards);
    model.addAttribute("pageNo", pageNo);
    model.addAttribute("pageSize", pageSize);
    model.addAttribute("totalPage", totalPage);
    model.addAttribute("size", size);
    model.addAttribute("beginPage", (pageNo - 2) > 0 ? (pageNo - 2) : 1);
    model.addAttribute("endPage", (pageNo + 2) < totalPage ? (pageNo + 2) : totalPage);
    model.addAttribute("memberName", session.getAttribute("memberName"));
    model.addAttribute("loginName", session.getAttribute("loginName"));
    model.addAttribute("today", new Date(System.currentTimeMillis()).toString());

    /*
     * PagingControl pc = new PagingControl(); pc.setListCount(20);
     */
 
  }

  @PostMapping("update")
  public String update(HttpServletRequest request, Board board, MultipartFile[] filePath
      ,String boardPhotoNumber[])
      throws Exception {
   
    board.setPhotos(boardPhotoWriter.getPhotoFiles(filePath));

    boardService.update(board,boardPhotoNumber);

    return "redirect:list";
  }
  @GetMapping("search1")
  public void search1(
      @RequestParam(defaultValue = "1") int pageNo, 
      @RequestParam(defaultValue = "5") int pageSize, 
      Model model, 
      String title)throws Exception{
    
    if (pageSize < 5 || pageSize > 20) {
      pageSize = 5;
    }
    int size = boardService.search1Size(title);
    int totalPage = size / pageSize; // 13 / 5 = 2.x
    if (size % pageSize > 0) {
      totalPage++;
    }
    
    
    // 요청하는 페이지 번호가 유효하지 않을 때는 기본 값으로 1페이지로 지정한다.
    if (pageNo < 1 || pageNo > totalPage) {
      pageNo = 1;
    }
   
   List<Board> boards = boardService.search1(title,pageNo, pageSize);
   model.addAttribute("boards",boards);
   model.addAttribute("pageNo", pageNo);
   model.addAttribute("pageSize", pageSize);
   model.addAttribute("totalPage", totalPage);
   model.addAttribute("size", size);
   model.addAttribute("beginPage", (pageNo - 2) > 0 ? (pageNo - 2) : 1);
   model.addAttribute("endPage", (pageNo + 2) < totalPage ? (pageNo + 2) : totalPage);
   model.addAttribute("title", title);
  }
  
  @GetMapping("search2")
  public void search2(
      @RequestParam(defaultValue = "1") int pageNo, 
      @RequestParam(defaultValue = "5") int pageSize, 
      Model model, String contents)throws Exception{
    if (pageSize < 5 || pageSize > 20) {
      pageSize = 5;
    }
    int size = boardService.search2Size(contents);
    int totalPage = size / pageSize; // 13 / 5 = 2.x
    if (size % pageSize > 0) {
      totalPage++;
    }
    
    // 요청하는 페이지 번호가 유효하지 않을 때는 기본 값으로 1페이지로 지정한다.
    if (pageNo < 1 || pageNo > totalPage) {
      pageNo = 1;
    }
    
   List<Board> boards = boardService.search2(contents,pageNo, pageSize);
   model.addAttribute("boards",boards);
   model.addAttribute("pageNo", pageNo);
   model.addAttribute("pageSize", pageSize);
   model.addAttribute("totalPage", totalPage);
   model.addAttribute("size", size);
   model.addAttribute("beginPage", (pageNo - 2) > 0 ? (pageNo - 2) : 1);
   model.addAttribute("endPage", (pageNo + 2) < totalPage ? (pageNo + 2) : totalPage);
   model.addAttribute("contents", contents);
  }
  @GetMapping("search3")
  public void search3(
      @RequestParam(defaultValue = "1") int pageNo, 
      @RequestParam(defaultValue = "5") int pageSize, 
      Model model, String name)throws Exception{
    if (pageSize < 5 || pageSize > 20) {
      pageSize = 5;
    }
    int size = boardService.search3Size(name);
    int totalPage = size / pageSize; // 13 / 5 = 2.x
    if (size % pageSize > 0) {
      totalPage++;
    }
    
    // 요청하는 페이지 번호가 유효하지 않을 때는 기본 값으로 1페이지로 지정한다.
    if (pageNo < 1 || pageNo > totalPage) {
      pageNo = 1;
    }
    
   List<Board> boards = boardService.search3(name,pageNo, pageSize);
   model.addAttribute("boards",boards);
   model.addAttribute("pageNo", pageNo);
   model.addAttribute("pageSize", pageSize);
   model.addAttribute("totalPage", totalPage);
   model.addAttribute("size", size);
   model.addAttribute("beginPage", (pageNo - 2) > 0 ? (pageNo - 2) : 1);
   model.addAttribute("endPage", (pageNo + 2) < totalPage ? (pageNo + 2) : totalPage);
   model.addAttribute("name", name);
  }
  
  @PostMapping("detail/add")
  
  @ResponseBody
  public Object commentadd(Comment comment, HttpSession session) throws Exception {
    
    comment.setMemberNo(((Member)session.getAttribute("loginUser")).getNo());
    comment.setId(((Member)session.getAttribute("loginUser")).getId());
    commentService.insert(comment);
    return comment;
    
  }
  
  @GetMapping("detail/delete")
  @ResponseBody
  public void commentdelete(int commentNo, int boardNo) throws Exception {
    commentService.delete(commentNo);
  }
  
  
  
  @ResponseBody
  @PostMapping("detail/update")
  public String commentupdate(@RequestParam(value = "contents", required = false) String contents, @RequestParam(value = "commentNo", required = false) String commentNo) throws Exception {
    return String.valueOf(commentService.update(contents,commentNo));
  }
  
  @PostMapping("recommend/add")
  @ResponseBody
  public JsonResult recommendadd(Recommend recommend) throws Exception{
    return new JsonResult().setState(JsonResult.SUCCESS)
        .setResult(recommendService.insert(recommend));
  }
  
  @PostMapping("recommend/delete")
  @ResponseBody
  public JsonResult recommenddelete(Recommend recommend)throws Exception{
    return new JsonResult().setState(JsonResult.SUCCESS)
        .setResult(recommendService.delete(recommend));
  }

  @PostMapping("recommend/checkRecommendForCheck")
  @ResponseBody
  public int checkRecommendForCheck(Recommend recommend)throws Exception{
    return recommendService.checkRecommendForCheck(recommend);
  }
  
  @PostMapping("recommend/checkNum")
  @ResponseBody
  public int checkNum (int recommendBoardNo) throws Exception {
   return recommendService.checkNum(recommendBoardNo);
  }

}

