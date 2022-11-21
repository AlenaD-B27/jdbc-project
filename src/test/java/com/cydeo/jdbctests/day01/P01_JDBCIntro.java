package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P01_JDBCIntro {

    String dbUrl = "jdbc:oracle:thin:@34.204.7.162:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";


    @Test
    public void task1() throws SQLException {



        // connect to DB
        Connection conn = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);

        // executes queries
        Statement statement = conn.createStatement();

        // stores data after execution. ONLY execution data, no table info
        ResultSet rs = statement.executeQuery("select * from departments where manager_id is not null");


        System.out.println("=======================================");

        while(rs.next()){
            System.out.println(rs.getString(1) + "-" + rs.getString(2)+"-" + rs.getString(3));
        }


        System.out.println("=======================================");


        rs = statement.executeQuery("select * from REGIONS");

        while(rs.next()){
            System.out.println(rs.getString(1)+"-"+rs.getString(2));
        }









        // close connections
        rs.close();
        statement.close();
        conn.close();


    }




}
