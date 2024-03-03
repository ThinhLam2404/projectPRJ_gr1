/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author LENOVO
 */
public class product {
    int type;
    int pro_quan;
    int pro_id;
    String pro_name;
    int pro_sale;
    int pro_price;
    String pro_pic;
    String pro_des;

    public product(int type, int pro_quan, int pro_id, String pro_name, int pro_sale, int pro_price, String pro_pic, String pro_des) {
        this.type = type;
        this.pro_quan = pro_quan;
        this.pro_id = pro_id;
        this.pro_name = pro_name;
        this.pro_sale = pro_sale;
        this.pro_price = pro_price;
        this.pro_pic = pro_pic;
        this.pro_des = pro_des;
    }

    public int getPro_quan() {
        return pro_quan;
    }

    public void setPro_quan(int pro_quan) {
        this.pro_quan = pro_quan;
    }

   

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getPro_id() {
        return pro_id;
    }

    public void setPro_id(int pro_id) {
        this.pro_id = pro_id;
    }

    public String getPro_name() {
        return pro_name;
    }

    public void setPro_name(String pro_name) {
        this.pro_name = pro_name;
    }

    public int getPro_sale() {
        return pro_sale;
    }

    public void setPro_sale(int pro_sale) {
        this.pro_sale = pro_sale;
    }

    public int getPro_price() {    
        return pro_price;
    }

    public void setPro_price(int pro_price) {
        this.pro_price = pro_price;
    }

    public String getPro_pic() {
        return pro_pic;
    }

    public void setPro_pic(String pro_pic) {
        this.pro_pic = pro_pic;
    }

    public String getPro_des() {
        return pro_des;
    }

    public void setPro_des(String pro_des) {
        this.pro_des = pro_des;
    }

    @Override
    public String toString() {
        return "product{" + "type=" + type + ", pro_id=" + pro_id + ", pro_name=" + pro_name + ", pro_sale=" + pro_sale + ", pro_price=" + pro_price + ", pro_pic=" + pro_pic + ", pro_des=" + pro_des + '}';
    }
    
    
    
    
}
