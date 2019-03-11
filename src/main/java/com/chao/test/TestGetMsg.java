package com.chao.test;

import com.chao.entity.AnounceMent;
import com.chao.util.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/test")
public class TestGetMsg {
    @GetMapping("/getmsg")
    @ResponseBody
    public AnounceMent getMsgByAdminUsername(String username){
        String sql=" select ad.username aname,an.date,an.content\n" +
                "from anouncement an,admin ad\n" +
                "where an.aid=ad.id and an.did=(select depid from employee where name=?)";
        JDBCTools jdbc=new JDBCTools();
        QueryRunner queryRunner=new QueryRunner();
        Connection connection=null;
        connection=jdbc.getConnection();
        AnounceMent anounceMent=null;
        try {
            anounceMent=queryRunner.query(connection,sql,new BeanHandler<>(AnounceMent.class),username);
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            jdbc.release(connection,null,null);
        }
//        String date=anounceMent.getDate();
//        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
//        String newdate=simpleDateFormat.format(date);
//        anounceMent.setDate(newdate);
        return anounceMent;
    }

//    public static void main(String[] args) {
//        TestGetMsg testGetMsg=new TestGetMsg();
//        AnounceMent anounceMent=testGetMsg.getMsgByAdminUsername("王五");
//        System.out.println(anounceMent);
//    }
}
