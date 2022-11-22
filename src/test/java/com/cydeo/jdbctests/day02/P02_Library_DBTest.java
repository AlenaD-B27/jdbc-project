package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class P02_Library_DBTest {

    // Create connection to MySQL Database
    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username =  "library2_client";
    String password =  "6s2LQQTjBcGFfDhY" ;
    @Test
    public void task1 () {

        // create connection
        DB_Util.createConnection(url, username, password);


        // run query
        DB_Util.runQuery("select count(*) from books");

        // get data from DB
        String bookCountDB = DB_Util.getFirstRowFirstColumn();


        // get data from UI
        String bookCountUI = "3963";

        // compare
        // DB --> expected
        // UI --> actual

        Assertions.assertEquals(bookCountDB, bookCountUI);

        // NullPointerException if there's no driver in pom.xml
        /*
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>8.0.25</version>
        </dependency>
         */







        // close it
        DB_Util.destroy();


    }


}
