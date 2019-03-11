package com.chao.controlor;

import com.chao.entity.Department;
import com.chao.entity.DepartmentVO;
import com.chao.service.DepService;
import com.chao.service.impl.DepServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("dep")
@Controller
public class DepControler {
    @Autowired
    private DepService depService;
    @PostMapping("add")
    public String addDep(Department department){
        depService.addDep(department);
        return "/jsp/dep_show_deps";
    }
    @GetMapping("getdeps")
    @ResponseBody
    public DepartmentVO getDeps(){
        return depService.getDeps();
    }

    @GetMapping("deletebyid")
    public String delete(@RequestParam("id") int id){
        depService.delete(id);
        return "/jsp/dep_show_deps";
    }
}
