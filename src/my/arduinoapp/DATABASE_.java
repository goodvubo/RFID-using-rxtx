/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package my.arduinoapp;

/**
 *
 * @author vubon
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DATABASE_ {

    public static boolean connection;
    private Connection connect = null;
//    private PreparedStatement preparedStatement = null;
    private ResultSet resultSet = null;

    public DATABASE_(){
        try {
        // This will load the MySQL driver, each DB has its own driver
            Class.forName("com.mysql.jdbc.Driver");
            // Setup the connection with the DB
            connect = DriverManager.getConnection("jdbc:mysql://localhost/yo?" + "user=root&password=");

            // Statements allow to issue SQL queries to the database
            connection = true;
        }catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
            connection = false;
        }
    }
    
    public ResultSet readDataBase(String id) throws Exception {

        try {
            Statement statementr = null;
            statementr = connect.createStatement();
            
            System.out.println(id);
            String[] parts = id.split(" ", 2);
            resultSet = statementr.executeQuery("SELECT * FROM employee_info, employee_service_info WHERE employee_info.login_id ='" + parts[0] + "' AND employee_service_info.login_id ='" + parts[0] + "'AND employee_service_info.service_date ='" + parts[1] + "'");
            //System.out.println("?! 4");
            
        } catch (SQLException e) {
            throw e;
        } finally {
            //close();
        }
        return resultSet;
    }

    public boolean writeDataBase(String id) throws Exception {

        try {
            Statement statementw = null;
            statementw = connect.createStatement();
            
            System.out.println(id);
            String[] parts = id.split(" ", 5);
            
            
            
            if (!CheckDataBase(parts[0])) {
                return false;
            }
            
            if(parts[4].equals("in")){
               statementw.executeUpdate("INSERT INTO `employee_service_info`(`service_date`, `login_time`, `login_id`) VALUES ('" + parts[1] + "','" + parts[2] + " " + parts[3] + "','" + parts[0] + "')"); 
            }
            
            if(parts[4].equals("out")){
               statementw.executeUpdate("UPDATE `employee_service_info` SET `logout_time`='" + parts[2] + " " + parts[3] + "' WHERE service_date = '" + parts[1] + "' AND login_id = '" + parts[0] + "'"); 
            }
            

            
        } catch (SQLException e) {
            throw e;
        } finally {
            //System.out.println("done");
            //close();
        }
        return true;
    }
    
    private boolean CheckDataBase(String id) throws Exception {

        try {
            Statement statementC = null;
            statementC= connect.createStatement();
            
            ResultSet count = statementC.executeQuery("SELECT * FROM employee_info WHERE login_id ='" + id + "'");
            
            if (count.next()) {
                return true;
            }
            
        } catch (SQLException e) {
            throw e;
        } finally {
            //close();
        }
        return false;
    }

    // You need to close the resultSet
    private void close() {
        try {
            if (resultSet != null) {
                resultSet.close();
            }

//            if (statement != null) {
//                statement.close();
//            }

            if (connect != null) {
                connect.close();
            }
        } catch (Exception e) {

        }
    }

}
