package com.integration.databaseintegration.conntroller;

import com.integration.databaseintegration.entity.Users;
import com.integration.databaseintegration.services.UserInfoServiceImpl;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/sba/api")
public class LoginController {


    @Resource
    UserInfoServiceImpl userInfoService;

    //访问地址：http://localhost:8083/views/login
    @RequestMapping(value = "/toLogin")
    public String toLogin(ModelMap map) {

        return "login";
    }

    //访问地址：http://localhost:8083/views/login

    @RequestMapping(value = "login")
    public ResponseEntity<Users> loginApi(@Param("userName")  String userName , @Param("passWord")  String passWord) {

        Users user =  userInfoService.query(userName,passWord);
        return new ResponseEntity<>(user, HttpStatus.OK);
    }
}
