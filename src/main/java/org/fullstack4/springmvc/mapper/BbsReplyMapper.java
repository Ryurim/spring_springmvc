package org.fullstack4.springmvc.mapper;

import org.fullstack4.springmvc.domain.BbsReplyVO;

import java.util.List;

public interface BbsReplyMapper {
    int reply_regist(BbsReplyVO bbsReplyVO);

    int update_reply_cnt(int bbs_idx);

    List<BbsReplyVO> reply_list(int bbs_idx);
}
