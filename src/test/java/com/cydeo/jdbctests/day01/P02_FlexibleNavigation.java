package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P02_FlexibleNavigation {

    String dbUrl="jdbc:oracle:thin:@174.129.150.19:1521:XE";
    String dbUsername="hr";
    String dbPassword="hr";



    @Test
    public void task1() throws SQLException {


        // DriverManager Class getCOnnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It helps us to execute queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        /*
        ResultSet.TYPE_SCROLL_INSENSITIVE --> to do flexible navigation between rows
        ResultSet.CONCUR_READ_ONLY        --> To do not update anything from database
         */


        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = statement.executeQuery("select first_name, last_name from employees");

        rs.next();
        System.out.println(rs.getString(1) + "-" + rs.getString(2));

        rs.next();
        System.out.println(rs.getString(1) + "-" + rs.getString(2));

        rs.last();
        System.out.println(rs.getString(1) + "-" + rs.getString(2));



        System.out.println("--- GET ROW -----");
        // how many row we have
        // getRow() --> the current row number; 0 if there is no current row
        int rowNumber = rs.getRow();
        System.out.println(rowNumber);  // 107

        System.out.println("------ ABSOLUTE -----------");
        // jump into the specified row
        rs.absolute(10);
        System.out.println(rs.getString(1) + "-" + rs.getString(2));
        System.out.println(rs.getRow());

        System.out.println("------ PREVIOUS -----------");

        rs.previous();
        System.out.println(rs.getString(1) + "-" + rs.getString(2));
        System.out.println(rs.getRow());

        System.out.println("------ PRINT ALL TABLE CONTENT DYNAMICALLY -----------");

        rs.beforeFirst();
        while(rs.next()) {
            System.out.println(rs.getString(1) + "-" + rs.getString(2));
        }




        // close connections
        rs.close();
        statement.close();
        conn.close();

    }


}
