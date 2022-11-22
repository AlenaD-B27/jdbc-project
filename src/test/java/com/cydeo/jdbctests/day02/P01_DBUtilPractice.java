package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class P01_DBUtilPractice {

    @Test
    public void task1(){

        // create connection
        DB_Util.createConnection();

        // run query
        DB_Util.runQuery("select first_name, last_name, salary from employees");

        // get results
        System.out.println("--- GET FIRST ROW FIRST COLUMN FIRST CELL -----");
        System.out.println(DB_Util.getFirstRowFirstColumn());

        System.out.println("--- GET ALL COLUMN NAMES -----");
        System.out.println(DB_Util.getAllColumnNamesAsList());

        System.out.println("--- GET ALL FIRST NAMES -----");
        System.out.println(DB_Util.getColumnDataAsList("first_name"));

        System.out.println("--- GET CERTAIN ROW -----");
        // as map
        System.out.println(DB_Util.getRowMap(2));
        // as list
        System.out.println(DB_Util.getRowDataAsList(2));

        System.out.println("--- GET ALL DATA AS LIST OF MAP -----");
        System.out.println(DB_Util.getAllRowAsListOfMap());

        System.out.println("------- OR ---------");

        List<Map<String, String>> listOfMap = DB_Util.getAllRowAsListOfMap();

        for (Map<String, String> eachRow : listOfMap) {
            System.out.println(eachRow);
        }


        // close connection
        DB_Util.destroy();





    }



}
