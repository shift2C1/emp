package com.chao.controlor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
@Controller
@RequestMapping("/system")
public class System {
    @RequestMapping("/getcurrentdate")
    @ResponseBody
    public String getCurrentDate(){
        Date date=new Date();
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
        String currentdate=simpleDateFormat.format(date);
        return currentdate;
    }
}
