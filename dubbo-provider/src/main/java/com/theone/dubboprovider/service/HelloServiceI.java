package com.theone.dubboprovider.service;

import com.theone.dubboapi.service.HelloService;
import org.apache.dubbo.config.annotation.Service;

@Service
public class HelloServiceI implements HelloService {


    @Override
    public String hello(String name) {
        return "Hello " + name;
    }
}
