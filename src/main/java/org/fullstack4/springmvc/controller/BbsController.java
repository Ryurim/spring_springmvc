package org.fullstack4.springmvc.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.fullstack4.springmvc.domain.BbsVO;
import org.fullstack4.springmvc.dto.BbsDTO;
import org.fullstack4.springmvc.service.BbsServiceIf;
import org.fullstack4.springmvc.service.BbsServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.List;

@Log4j2
@Controller
@RequestMapping(value="/bbs")
@RequiredArgsConstructor
public class BbsController {
    private final BbsServiceIf bbsServiceIf;

//    public BbsController(BbsServiceIf bbsServiceIf) { @RequiredArgsConstructor가 이거 해주는거야!
//        this.bbsServiceIf = bbsServiceIf;
//    }

    @GetMapping("/list")
    public void list(Model model) {
        log.info("========================");
        log.info("BbsController >> list()");

        List<BbsDTO> bbsDTOList = bbsServiceIf.listAll();

        model.addAttribute("bbsList", bbsDTOList);

        log.info("========================");

    }

    @GetMapping("/view")
    public void view(@RequestParam(name="idx", defaultValue = "0") int idx,
                     //idx가 빈값이면 value에 0을 넣어줘. 근데 이건 String "0"임. 왜? 자바에서 request의 리턴타입은 무조건 String이라서!
                     Model model ) {
        log.info("========================");
        log.info("BbsController >> view()");
        log.info("idx : " + idx);


        BbsDTO bbsDTO = bbsServiceIf.view(idx);

        //이거 안해주면 jsp에 값 안넘어온다
        model.addAttribute("idx", idx);
        model.addAttribute("bbs", bbsDTO);
        log.info("========================");

    }

    @GetMapping("/regist")
    public void registGET() {
        log.info("============================");
        log.info("BbsController >> registGET()");
        log.info("============================");
    }

    @PostMapping("/regist")
    public String registPOST(@Valid BbsDTO bbsDTO, //dto 객체에 어노테이션 되어있는 애들만 체크해서 기본메세지 던져줌!
                             BindingResult bindingResult, // Valid가 체크된 값으로 여기에 바인딩 시켜줄거임
                             RedirectAttributes redirectAttributes) {
        log.info("============================");
        log.info("BbsController >> registPOST()");

//        log.info("user_id : " + bbsDTO.getUser_id());
//        log.info("title : " + bbsDTO.getTitle());
//        log.info("display_date : " + bbsDTO.getDisplay_date());

//
//        //url에 쿼리스트링을 넣어줌
//        redirectAttributes.addAttribute("key1", "v1");

//        //딱 한번 쓰고 버려. url에는 보여주지 마. url에는 안보이고 redirect 되는 곳에는 받아짐! ex)밸리데이터 처리할 때 등등 사용함. 처리는 하되 아무것도 안보이게 하고싶어! 할 때 사용
//        redirectAttributes.addFlashAttribute("key2", "v2");

        if (bindingResult.hasErrors()) { //array 객체 형태로 저장됨
            log.info("Errors");
            redirectAttributes.addFlashAttribute("errors", bindingResult.getAllErrors()); //휘발성 저장. 모든 에러를 담아서 보냄
            redirectAttributes.addFlashAttribute("bbsDTO", bbsDTO);

            return "redirect:/bbs/regist";
        }

        log.info("bbsDTO : " + bbsDTO.toString());

        int result = bbsServiceIf.regist(bbsDTO);

        log.info("registResult : " + result);
        log.info("============================");

        if (result > 0) {
            return "redirect:/bbs/list";
        } else {
            return "/bbs/regist";
        }

    }

    @GetMapping("/modify")
    public void modifyGET(@RequestParam(name="idx", defaultValue = "0") int idx,
                          Model model) {
        log.info("============================");
        log.info("BbsController >> modifyGET()");

        log.info("idx : " + idx);



        BbsDTO bbsDTO = bbsServiceIf.view(idx);

        //이거 안해주면 jsp에 값 안넘어온다
        model.addAttribute("idx", idx);
        model.addAttribute("bbs", bbsDTO);
        log.info("============================");
    }

    @PostMapping("/modify")
    public String modifyPOST(BbsDTO bbsDTO,
                           Model model, RedirectAttributes redirectAttributes) {
        log.info("============================");
        log.info("BbsController >> modifyPOST()");
        log.info("bbsDTO : " + bbsDTO.toString());
        log.info("============================");

        int result = bbsServiceIf.modify(bbsDTO);
        if (result > 0) {
            return "redirect:/bbs/view?idx=" + bbsDTO.getIdx();
        } else {
            return "/bbs/modify";
        }

    }

    @PostMapping("/delete")
    public String deletePOST(@RequestParam(name="idx", defaultValue = "0") int idx,
                           Model model) {
        log.info("============================");
        log.info("BbsController >> deletePOST()");
        log.info("============================");

        int result = bbsServiceIf.delete(idx);
        if (result > 0) {
            return "redirect:/bbs/list";
        } else {
            return "/bbs/view?idx=" + idx;
        }


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
