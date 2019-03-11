package com.chao.util;

import org.apache.commons.dbutils.QueryRunner;
import org.springframework.stereotype.Component;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class FileTools {
    private JDBCTools jdbc=new JDBCTools();
    private QueryRunner queryRunner=new QueryRunner();
    public void store(InputStream pictureBynary,String filename){
        Connection connection=null;
//        PreparedStatement statement=null;
        String sql="insert into emppic(filename,picture) values (?,?)";
        connection=jdbc.getConnection();
        try {
            queryRunner.update(connection,sql,filename,pictureBynary);
//            statement=connection.prepareStatement(sql);
//            statement.setString(1,filename);
//            statement.setBlob(2,pictureBynary);
//            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            jdbc.release(connection,null,null);
        }
    }
}
