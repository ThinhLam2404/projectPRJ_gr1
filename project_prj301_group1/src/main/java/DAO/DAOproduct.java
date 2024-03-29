/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entity.product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author LENOVO
 */
public class DAOproduct extends connnectDB.connectDB {

    public List<product> getAll() {
        List<product> list = new ArrayList<>();
        String sql = "select * from product";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                product p = new product(rs.getInt("type"), rs.getInt("pro_quan"), rs.getInt("pro_id"), rs.getString("pro_name"),
                        rs.getInt("pro_sale"), rs.getInt("pro_price"), rs.getString("pro_pic"), rs.getString("pro_des"));
                list.add(p);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
     public List<product> getAllSale() {
        List<product> list = new ArrayList<>();
        String sql = "select * from product where pro_sale >0";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                product p = new product(rs.getInt("type"), rs.getInt("pro_quan"), rs.getInt("pro_id"), rs.getString("pro_name"),
                        rs.getInt("pro_sale"), rs.getInt("pro_price"), rs.getString("pro_pic"), rs.getString("pro_des"));
                list.add(p);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    
     public List<product> getTop() {
        List<product> list = new ArrayList<>();
        String sql = "select * from product where type=0";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                product p = new product(rs.getInt("type"), rs.getInt("pro_quan"), rs.getInt("pro_id"), rs.getString("pro_name"),
                        rs.getInt("pro_sale"), rs.getInt("pro_price"), rs.getString("pro_pic"), rs.getString("pro_des"));
                list.add(p);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
     
         public List<product> getBottom() {
        List<product> list = new ArrayList<>();
        String sql = "select * from product where type=1";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                product p = new product(rs.getInt("type"), rs.getInt("pro_quan"), rs.getInt("pro_id"), rs.getString("pro_name"),
                        rs.getInt("pro_sale"), rs.getInt("pro_price"), rs.getString("pro_pic"), rs.getString("pro_des"));
                list.add(p);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public void insert(product p) {
        String sql = "INSERT INTO [dbo].[product]\n"
                + "           ([type]\n"
                + "           ,[pro_quan]\n"
                + "           ,[pro_id]\n"
                + "           ,[pro_name]\n"
                + "           ,[pro_sale]\n"
                + "           ,[pro_price]\n"
                + "           ,[pro_pic]\n"
                + "           ,[pro_des])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?)";

        try {

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, p.getType());
            st.setInt(2, p.getPro_quan());
            st.setInt(3, p.getPro_id());
            st.setString(4, p.getPro_name());
            st.setInt(5, p.getPro_sale());
            st.setInt(6, p.getPro_price());
            st.setString(7, p.getPro_pic());
            st.setString(8, p.getPro_des());
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public void delete(String id) {
        String sql = "delete from product where pro_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void update(product p) {
        String sql = "UPDATE [dbo].[product]\n"
                + "   SET [type] = ?\n"
                + "      ,[pro_quan] = ?\n"
                + "      ,[pro_name] = ?\n"
                + "      ,[pro_sale] = ?\n"
                + "      ,[pro_price] = ?\n"
                + "      ,[pro_pic] = ?\n"
                + "      ,[pro_des] = ?\n"
                + " WHERE pro_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, p.getType());
            st.setInt(2, p.getPro_quan());
            st.setString(3, p.getPro_name());
            st.setInt(4, p.getPro_sale());
            st.setInt(5, p.getPro_price());
            st.setString(6, p.getPro_pic());
            st.setString(7, p.getPro_des());
            st.setInt(8, p.getPro_id());
            st.executeUpdate();
        } catch (Exception e) {
        }
    }
      public List<product> search(String pro_name) {
        List<product> list = new ArrayList<>();
        String sql = "select * from product \n"
                + "where pro_name like ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pro_name);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                product p = new product(rs.getInt("type"), rs.getInt("pro_quan"), rs.getInt("pro_id"), rs.getString("pro_name"),
                        rs.getInt("pro_sale"), rs.getInt("pro_price"), rs.getString("pro_pic"), rs.getString("pro_des"));
                list.add(p);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public void updateQuan(int quan, int id) {
        String sql = "update product\n"
                + "set pro_quan = ?\n"
                + "where pro_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, quan);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public product getProductById(String id) {

        String sql = "select * from product where pro_id=?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                product p = new product(rs.getInt("type"), rs.getInt("pro_quan"), rs.getInt("pro_id"), rs.getString("pro_name"),
                        rs.getInt("pro_sale"), rs.getInt("pro_price"), rs.getString("pro_pic"), rs.getString("pro_des"));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public static void main(String[] args) {
        DAOproduct product = new DAOproduct();
        List<product> list = product.getAll();
//        for (int i = 0; i < 5; i++) {

        System.out.println(list.get(0).toString());

    }

}
