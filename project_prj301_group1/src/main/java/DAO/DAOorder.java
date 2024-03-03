/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entity.order;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class DAOorder extends connnectDB.connectDB {

    public List<order> getAll() {
        List<order> list = new ArrayList<>();
        String sql = "select * from [order]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                order o = new order(rs.getString("username"), rs.getInt("order_quan"), rs.getInt("order_price"), rs.getString("address"),
                        rs.getString("phoneNumber"), rs.getString("order_name"), rs.getString("order_pic"));
                list.add(o);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    public void insertOrder(String username, int order_quan, int order_price, String address, String phoneNumber, String order_name, String order_pic) {
        String sql = "insert into\n"
                + "[order]\n"
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

    public static void main(String[] args) {
        DAOorder order = new DAOorder();
        List<order> list = order.getAll();
    }
}
