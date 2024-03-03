/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import connnectDB.connectDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import entity.account;

/**
 *
 * @author LENOVO
 */
public class DAOaccount extends connectDB {

    //------------account handele 
    public List<account> getAll() {
        List<account> listAccount = new ArrayList<>();
        String sql = "select * from account";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                account a = new account(rs.getString("username"),
                        rs.getString("password"), rs.getString("email"));
                listAccount.add(a);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return listAccount;
    }

     public void updatePassword(String user, String pass) {
        String sql = "update account\n"
                + "set [password] = ?\n"
                + "where username = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, pass);
            ps.setString(2, user);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public boolean insert(account a) {
        String sql = "INSERT INTO [dbo].[account]\n"
                + "           ([username]\n"
                + "           ,[password]\n"
                + "           ,[email])\n"
                + "     VALUES\n"
                + "           (?,?,?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getUsername());
            st.setString(2, a.getPassword());
            st.setString(3, a.getEmail());
            st.executeUpdate();
            return true;
        } catch (Exception e) {
            
        }
        return false;
    }

    public account getAccountByUserName(String username) {

        String sql = "select * from account where username=?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                 account a = new account(rs.getString("username"),
                        rs.getString("password"), rs.getString("email"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }


    public static void main(String[] args) {
        DAOaccount account = new DAOaccount();
        List<account> listAccount = account.getAll();
        System.out.println(listAccount.get(0).toString());


    }
}
