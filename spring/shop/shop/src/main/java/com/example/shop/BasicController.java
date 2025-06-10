package com.example.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BasicController {
    @GetMapping("/")
    String Hellow(){
        return "main.html";
    }

    @GetMapping("/about")
    @ResponseBody
    String About(){
        return "안녕하세요. About 페이지 입니다.";
    }

    @GetMapping("/mypage")
    @ResponseBody
    String mypage(){
        return "안녕하세요. mypage 페이지 입니다.";
    }
}
