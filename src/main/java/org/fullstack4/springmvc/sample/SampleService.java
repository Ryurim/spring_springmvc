package org.fullstack4.springmvc.sample;

import lombok.ToString;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@ToString
@Service
public class SampleService {

    @Autowired
    //이놈 하나로 기본생성자로 의존성 주입 해주는 그런 작업이 필요가 없어졌어! "의존성을 주입해 주세요."
    //스프링아, 의존성 주입해줘, 이것을 사용한 클래스(SapmleService) 생성자를 호출할 때 sampleDAO를 집어넣고 생성해줘! 라고 요청하는 것
    private SampleDAO sampleDAO;
    // 의존성 주입을 할 애들은 원래 보통 private final로 함


}
