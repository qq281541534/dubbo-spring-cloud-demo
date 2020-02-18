package com.theone.dubboconsumer.controller;

import com.theone.dubboapi.service.HelloService;
import lombok.RequiredArgsConstructor;
import org.apache.dubbo.config.annotation.Reference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class HelloController {

    @Reference
    private HelloService helloService;


    @GetMapping("hello")
    public String hello(String name){
        return helloService.hello(name);
    }
}
