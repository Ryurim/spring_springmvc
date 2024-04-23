package org.fullstack4.springmvc.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.fullstack4.springmvc.domain.BbsReplyVO;
import org.fullstack4.springmvc.domain.BbsVO;
import org.fullstack4.springmvc.dto.BbsReplyDTO;
import org.fullstack4.springmvc.mapper.BbsReplyMapper;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Log4j2
@Service
@RequiredArgsConstructor
public class BbsReplyServiceImpl implements BbsReplyServiceIf{
    private final BbsReplyMapper bbsReplyXmlMapper;
    private final ModelMapper modelMapper;

    @Override
    public int replay_regist(BbsReplyDTO bbsReplyDTO) {
        log.info("================================");

        BbsReplyVO bbsReplyVO = modelMapper.map(bbsReplyDTO, BbsReplyVO.class);
        log.info("bbsReplyVO : " + bbsReplyVO);
        log.info("bbsReplyDTO : " + bbsReplyDTO);

        int result = bbsReplyXmlMapper.reply_regist(bbsReplyVO);
        int reply_result = bbsReplyXmlMapper.update_reply_cnt(bbsReplyDTO.getBbs_idx());

        log.info("result : " + result);

        log.info("====================================");
        return result;
    }

    @Override
    public int update_reply_cnt(int bbs_idx) {
        log.info("================================");
        int result = bbsReplyXmlMapper.update_reply_cnt(bbs_idx);
        log.info("result : " + result);
        log.info("====================================");
        return result;
    }

    @Override
    public List<BbsReplyDTO> reply_list() {
        return null;
    }
}
