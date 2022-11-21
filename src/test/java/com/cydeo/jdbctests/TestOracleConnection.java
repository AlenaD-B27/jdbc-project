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






        // close connections
        rs.close();
        statement.close();
        conn.close();


    }



}
