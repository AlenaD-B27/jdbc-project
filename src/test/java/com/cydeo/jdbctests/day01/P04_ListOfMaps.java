package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class P04_ListOfMaps {


    String dbUrl="jdbc:oracle:thin:@174.129.150.19:1521:XE";
    String dbUsername="hr";
    String dbPassword="hr";


    @Test
    public void task1() {


        Map<String, Object> rowMap1 = new HashMap<>();
        System.out.println("----- Row Map 1 ------");
        rowMap1.put("first_name", "Steven");
        rowMap1.put("last_name", "King");
        rowMap1.put("salary", 24000);
        System.out.println(rowMap1);

        System.out.println("=============================");

        List<Map<String, Object>> dataList = new ArrayList<>();

        dataList.add(rowMap1);

        System.out.println(dataList);

        // get last name of Steven

        System.out.println(dataList.get(0).get("last_name"));


    }















}
