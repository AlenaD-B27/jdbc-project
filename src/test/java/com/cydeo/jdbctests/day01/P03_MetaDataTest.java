package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P03_MetaDataTest {


    String dbUrl = "jdbc:oracle:thin:@174.129.150.19:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";


    @Test
    public void task1() throws SQLException {

        Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        ResultSet resultSet = statement.executeQuery("select * from REGIONS");


        // MetaData is the information about database itself
        DatabaseMetaData databaseMetaData = connection.getMetaData();

        System.out.println(databaseMetaData.getUserName());
        System.out.println(databaseMetaData.getDatabaseProductName());
        System.out.println(databaseMetaData.getDatabaseProductVersion());
        System.out.println(databaseMetaData.getDriverName());
        System.out.println(databaseMetaData.getDriverVersion());
        System.out.println("=============================");

        // Provides the info about table upper side
        ResultSetMetaData resultSetMetaData = resultSet.getMetaData();

        //how many columns?
        System.out.println(resultSetMetaData.getColumnCount());

        // column name of index 5

        System.out.println(resultSetMetaData.getColumnName(2));
        System.out.println("=======================================");

        // print all column names dynamically

        for (int i = 1; i <= resultSetMetaData.getColumnCount() ; i++) {
            System.out.println(resultSetMetaData.getColumnName(i));
        }

        System.out.println("============== Print All Data Dynamic =============");


        // iterate each row
        while (resultSet.next()){

            // iterate each column
            for (int i = 1; i <= resultSetMetaData.getColumnCount(); i++) {
                System.out.println(resultSetMetaData.getColumnName(i) + "-" + resultSet.getString(i) + " ");
            }

            System.out.println();

        }



        resultSet.close();
        statement.close();
        connection.close();
    }
}
