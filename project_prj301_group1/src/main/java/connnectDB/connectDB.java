/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package connnectDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author LENOVO
 */
public class connectDB {

    protected Connection connection;

    public connectDB() {
        {
            try {
// Edit URL , username, password to authenticate with your MS SQL Server
                String url = "jdbc:sqlserver://localhost:1433;databaseName=prj301;encrypt=true;trustServerCertificate=true";
                String username = "sa";
                String password = "123";
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                connection = DriverManager.getConnection(url, username, password);
            } catch (ClassNotFoundException | SQLException ex) {
                System.out.println(ex);
            }
        }
    }
}
