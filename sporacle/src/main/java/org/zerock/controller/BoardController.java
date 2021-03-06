package org.zerock.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;

@Controller
@RequestMapping("/board")
public class BoardController {
	
    private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

  @RequestMapping(value = "/register", method = RequestMethod.GET)
  public void registerGET(BoardVO vo, Model model) throws Exception {
      logger.info("register get..........");
  }
  
  @RequestMapping(value = "/register", method = RequestMethod.POST)
  public String registerPOST(BoardVO vo, RedirectAttributes model) throws Exception {
      logger.info("register post...........");
      logger.info(vo.toString());

      model.addFlashAttribute("msg", "success");
      return "redirect:/board/listAll";
  }
	
}
