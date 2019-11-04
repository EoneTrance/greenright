package com.greenright.web.json;

import javax.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.Member;
import com.greenright.service.MemberService;

@RestController("json.MemberController")
@RequestMapping("json/member")
public class MemberController {
  
  @Resource
  MemberService memberService;
  
  @GetMapping("checkDuplicate")
  public JsonResult checkDuplicate(String value) throws Exception {
    try {
      if (memberService.get(value)) {
        return new JsonResult().setState(JsonResult.SUCCESS).setMessage("exist");
      } else {
        return new JsonResult().setState(JsonResult.SUCCESS).setMessage("notExist");
      }
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
  @PostMapping("checkAccount")
  public JsonResult checkAccount(Member member) throws Exception {
    try {
      if (memberService.login(member) == null) {
        return new JsonResult().setState(JsonResult.SUCCESS).setMessage("notExist");
      } else {
        return new JsonResult().setState(JsonResult.SUCCESS).setMessage("exist");
      }
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
  @GetMapping("checkDuplicateCellPhone")
  public JsonResult checkDuplicateCellPhone(String cellPhone) throws Exception {
    try {
      if (memberService.getNumber(cellPhone)) {
        return new JsonResult().setState(JsonResult.SUCCESS).setMessage("exist");
      } else {
        return new JsonResult().setState(JsonResult.SUCCESS).setMessage("notExist");
      }
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
  @PostMapping("searchByQuestionAnswer")
  public JsonResult searchByQuestionAnswer(Member member) throws Exception {
    
    Member foundMember = memberService.getAccount(member);
    try {
      if (foundMember.getId() != null) {
        return new JsonResult().setState(JsonResult.SUCCESS).setMessage("exist").setResult(foundMember.getId());
      } else {
        return new JsonResult().setState(JsonResult.SUCCESS).setMessage("notExist");
      }
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
}
