package com.example.demo.controller;

import lombok.extern.java.Log;
import lombok.extern.log4j.Log4j2;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@Log
@RestController
public class AccountController {
    @RequestMapping(path = "/", method = RequestMethod.GET)
    public String hello() {
        log.info("接收到请求");
        return "hello";
    }
}
