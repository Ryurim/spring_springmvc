package org.fullstack4.springmvc.service;

import org.fullstack4.springmvc.domain.BbsReplyVO;
import org.fullstack4.springmvc.dto.BbsReplyDTO;

import java.util.List;

public interface BbsReplyServiceIf {
    int replay_regist(BbsReplyDTO bbsReplyDTO);
    int update_reply_cnt(int bbs_idx);
    List<BbsReplyDTO> reply_list();
}