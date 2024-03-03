/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entity.cart;
import entity.product;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class DAOcart extends connnectDB.connectDB {

    public List<cart> getAll(String username) {
        List<cart> list = new ArrayList<>();
        String sql = "select * from cart where username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                cart c = new cart(rs.getString("username"), rs.getInt("order_quan"), rs.getInt("order_price"), rs.getString("address"),
                        rs.getString("phoneNumber"), rs.getString("order_name"), rs.getString("order_pic"));
                list.add(c);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public void insertCart(String username, int order_quan, int order_price, String address, String phoneNumber, String order_name, String order_pic) {
        String sql = "insert into\n"
                + "cart\n"
                + "values(?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setInt(2, order_quan);
            st.setInt(3, order_price);
            st.setString(4, address);
            st.setString(5, phoneNumber);
            st.setString(6, order_name);
            st.setString(7, order_pic);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateCart(String username, int order_quan, int order_price, String address, String phoneNumber, String order_name, String order_pic) {
        String sql = "update cart\n"
                + "set username = ?,\n"
                + "order_quan = ?,\n"
                + "order_price = ?,\n"
                + "[address] = ?,\n"
                + "phoneNumber = ?,\n"
                + "order_name = ?,\n"
                + "order_pic = ?\n"
                + "where username = ? and order_name = ? and [address] = ? and phoneNumber = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setInt(2, order_quan);
            st.setInt(3, order_price);
            st.setString(4, address);
            st.setString(5, phoneNumber);
            st.setString(6, order_name);
            st.setString(7, order_pic);
            st.setString(8, username);
            st.setString(9, order_name);
            st.setString(10, address);
            st.setString(11, phoneNumber);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    public void deleteCart(String username, String order_name, String address, String phoneNumber){
        String sql = "delete from cart \n" +
                        "where username = ? and order_name = ? and [address] = ? and phoneNumber = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, order_name);
            st.setString(3, address);
            st.setString(4, phoneNumber);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        DAOcart cart = new DAOcart();
        List<cart> list = cart.getAll("user");
    }
}
