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
@RequestMapping(value="/bbs")
public class BbsController {
    @GetMapping("/list")
    public void list() {
        log.info("========================");
        log.info("BbsController >> list()");
        log.info("========================");

    }

    @GetMapping("/view")
    public void view(@RequestParam(name="idx", defaultValue = "0") int idx,
                     //idx가 빈값이면 value에 0을 넣어줘. 근데 이건 String "0"임. 왜? 자바에서 request의 리턴타입은 무조건 String이라서!
                     Model model ) {
        log.info("========================");
        log.info("BbsController >> view()");
        log.info("idx : " + idx);
        log.info("========================");

        //이거 안해주면 jsp에 값 안넘어온다
        model.addAttribute("idx", idx);
    }

    @GetMapping("/regist")
    public void registGET() {
        log.info("============================");
        log.info("BbsController >> registGET()");
        log.info("============================");
    }

    @PostMapping("/regist")
    public String registPOST(BbsDTO bbsDTO,
                             Model model, RedirectAttributes redirectAttributes) {
        log.info("============================");
        log.info("BbsController >> registPOST()");
        log.info("bbsDTO : " + bbsDTO.toString());
//        log.info("user_id : " + bbsDTO.getUser_id());
//        log.info("title : " + bbsDTO.getTitle());
//        log.info("display_date : " + bbsDTO.getDisplay_date());
        log.info("============================");
//
//        //url에 쿼리스트링을 넣어줌
//        redirectAttributes.addAttribute("key1", "v1");
//        //딱 한번 쓰고 버려. url에는 보여주지 마. url에는 안보이고 redirect 되는 곳에는 받아짐! ex)밸리데이터 처리할 때 등등 사용함. 처리는 하되 아무것도 안보이게 하고싶어! 할 때 사용
//        redirectAttributes.addFlashAttribute("key2", "v2");

        return "redirect:/bbs/list";

    }

    @GetMapping("/modify")
    public void modifyGET() {
        log.info("============================");
        log.info("BbsController >> modifyGET()");
        log.info("============================");
    }

    @PostMapping("/modify")
    public void modifyPOST() {
        log.info("============================");
        log.info("BbsController >> modifyPOST()");
        log.info("============================");
    }

    @PostMapping("/delete")
    public void deletePOST() {
        log.info("============================");
        log.info("BbsController >> deletePOST()");
        log.info("============================");
    }

//    예외처리 확인
//    @GetMapping("/list2")
//    public void list2(String s1, int i2) {
//        log.info("============================");
//        log.info("BbsController >> list2()");
//        log.info("s1 : " + s1);
//        log.info("i2 : " + i2);
//        log.info("============================");
//    }


}
