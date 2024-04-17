package org.fullstack4.springmvc.controller;

import lombok.extern.log4j.Log4j2;
import org.fullstack4.springmvc.dto.BbsDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Log4j2
@Controller
@RequestMapping("/member")
public class MemberController {

    @GetMapping("/view")
    public void view(@RequestParam(name="user_id", defaultValue = "") String user_id,
                     //idx가 빈값이면 value에 0을 넣어줘. 근데 이건 String "0"임. 왜? 자바에서 request의 리턴타입은 무조건 String이라서!
                     Model model ) {
        log.info("========================");
        log.info("MemberController >> view()");
        log.info("user_id : " + user_id);
        log.info("========================");

        //이거 안해주면 jsp에 값 안넘어온다ㅣ@
        model.addAttribute("user_id", user_id);
    }

    @GetMapping("/join")
    public void joinGET() {
        log.info("============================");
        log.info("MemberController >> joinGET()");
        log.info("============================");
    }

    @PostMapping("/join")
    public String joinPOST(BbsDTO bbsDTO,
                             Model model, RedirectAttributes redirectAttributes) {
        log.info("============================");
        log.info("MemberController >> joinPOST()");
        log.info("bbsDTO : " + bbsDTO.toString());
//        log.info("user_id : " + bbsDTO.getUser_id());
//        log.info("title : " + bbsDTO.getTitle());
//        log.info("display_date : " + bbsDTO.getDisplay_date());
        log.info("============================");

        return "redirect:/login/login";

    }

    @GetMapping("/modify")
    public void modifyGET() {
        log.info("============================");
        log.info("MemberController >> modifyGET()");
        log.info("============================");
    }

    @PostMapping("/modify")
    public void modifyPOST() {
        log.info("============================");
        log.info("MemberController >> modifyPOST()");
        log.info("============================");
    }

    @PostMapping("/leave")
    public void leavePOST() {
        log.info("============================");
        log.info("MemberController >> leavePOST()");
        log.info("============================");
    }

}
