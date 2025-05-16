package com.my.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.time.LocalDateTime;

@Controller
public class BasicController {
    @GetMapping("/")
    String hello() {
        return "index.html";
    }

    @GetMapping("/about")
    @ResponseBody // @ResponseBody가 있으면 return에 있는 텍스트를 그대로 보내 준다. / 파일을 보내 주고 싶을 때는 @ResponseBody를 사용 하지 않는다.
    String about() {
        return LocalDateTime.now().toString();
    }
}
