package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection {

    public static void main(String[] args) throws SQLException {

        String dbUrl = "jdbc:oracle:thin:@34.204.7.162:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";

        // connect to DB
        Connection conn = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);

        // executes queries
        Statement statement = conn.createStatement();

        // stores data after execution. ONLY execution data, no table info
        ResultSet rs = statement.executeQuery("select * from regions");

        // GETTING DATA

        // next() ---> Moves the cursor forward one row from its current position
        rs.next();
        // pointer shows the first row

        // how to get data

        // rs.getInt(index) --> returns integer. Index start from 1 in SQL, it refers column position

        System.out.println(rs.getInt(1));

        // getString() --> same, just returns String

        System.out.println(rs.getString(1));

        //-------------------------------------------------

        System.out.println(rs.getInt("REGION_ID"));
        System.out.println(rs.getString("REGION_ID"));
        System.out.println(rs.getString(2));

        /*
        System.out.println("---------- 2nd row: -------------");

        rs.next();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));


        System.out.println("---------- 3rd row: -------------");

        rs.next();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));

        System.out.println("---------- 4th row: -------------");

        rs.next();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));

         */

        System.out.println("---------- Table rows 2-to-the-end -------------");
        while(rs.next()){
            System.out.println(rs.getString(1) + " - " + rs.getString(2));
        }


        // close connections
        rs.close();
        statement.close();
        conn.close();


    }



}
