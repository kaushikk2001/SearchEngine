package org.example;

import org.jsoup.nodes.Document;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Indexer {
    static Connection connection =null;
    Indexer(Document document,String url){
        //select imp element of document
        String title=document.title();
        String link= url;
        String text=document.text();
        //Save to database
        try {
            connection=DataBaseConnection.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement("Insert into pages values (?,?,?);");
            preparedStatement.setString(1,title);
            preparedStatement.setString(2,link);
            preparedStatement.setString(3,text);
            preparedStatement.executeUpdate();
        }
        catch (SQLException sqlException){
            sqlException.printStackTrace();
        }
    }
}
