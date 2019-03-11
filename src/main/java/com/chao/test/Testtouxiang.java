package com.chao.test;

import com.chao.util.FileTools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.*;

@RequestMapping("/file")
@Controller
public class Testtouxiang {
    @Autowired
    private FileTools fileTools;
    @PostMapping("up")
    public String upload(@RequestParam("touxiang")MultipartFile file, HttpServletRequest request) {
        if (file.getSize()>0){
            String path=request.getServletContext().getRealPath("imgs");
            String name=file.getOriginalFilename();
            File newfile=new File(path,name);
            try {
                file.transferTo(newfile);
            } catch (IOException e) {
                e.printStackTrace();
            }

            ///存储到数据库的操作

            InputStream inputStream=null;
            try {
                inputStream=new FileInputStream(newfile);
                OutputStream outputStream=new FileOutputStream(new File("test.png"));
                int temp;
                while((temp=inputStream.read())!=-1){
                    outputStream.write(temp);
                    temp++;
                }
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e){
                e.printStackTrace();
            }finally {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            String filename="test1";
            fileTools.store(inputStream,filename);
            //预览显示
            request.setAttribute("imgpath","../imgs/"+name);
        }
        return "/jsp/emp_add";
    }

}
