package com.greenright.web;

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
import com.greenright.domain.PagingControl;
import com.greenright.domain.Recommend;
import com.greenright.service.BoardService;
import com.greenright.service.CommentService;
import com.greenright.service.RecommendService;

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
  public void form() {}
  @GetMapping("detailedit")
  public void detailedit(Model model, int no,HttpSession session)throws Exception {
    Board board = boardService.get(no);
    model.addAttribute("board", board);
  }
  @PostMapping("add")
  public String add(HttpServletRequest request, HttpSession session, Board board,
      MultipartFile[] filePath) throws Exception {
    int no = (int) session.getAttribute("userNo");

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
  public void list(Model model,String type,String keyword,HttpSession session) throws Exception {
    List<Board> boards = boardService.list();
    model.addAttribute("boards", boards);
    model.addAttribute("memberName", session.getAttribute("memberName"));
    model.addAttribute("loginName", session.getAttribute("loginName"));
    PagingControl pc = new PagingControl();
    pc.setListCount(20);
    model.addAttribute("Pagings",pc);
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
  public void search1(Model model, String title)throws Exception{
    List<Board> boards = boardService.search1(title);
   model.addAttribute("boards",boards);
  }
  @GetMapping("search2")
  public void search2(Model model, String contents)throws Exception{
   List<Board> boards = boardService.search2(contents);
   model.addAttribute("boards",boards);
  }
  @GetMapping("search3")
  public void search3(Model model, String name)throws Exception{
   List<Board> boards = boardService.search3(name);
   model.addAttribute("boards",boards);
  }
  
  @PostMapping("detail/add")
  @ResponseBody
  public Object commentadd(Comment comment) throws Exception {
    // ?�비??컴포?�트�??�해 ?�이?��? ?�?�한??
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
  public Object recommendadd(Recommend recommend) throws Exception{
    recommendService.insert(recommend);
    return recommend;
  }
  
  @PostMapping("recommend/delete")
  @ResponseBody
  public void recommenddelete(Recommend recommend) throws Exception{
    recommendService.delete(recommend);
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


