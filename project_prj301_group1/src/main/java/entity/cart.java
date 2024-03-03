/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Administrator
 */
public class cart {
    String username;
    int order_quan;
    int order_price;
    String address;
    String phoneNumber;
    String order_name;
    String order_pic;
    public cart(){
        
    }

    public cart(String username, int order_quan, int order_price, String address, String phoneNumber, String order_name, String order_pic) {
        this.username = username;
        this.order_quan = order_quan;
        this.order_price = order_price;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.order_name = order_name;
        this.order_pic = order_pic;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getOrder_quan() {
        return order_quan;
    }

    public void setOrder_quan(int order_quan) {
        this.order_quan = order_quan;
    }

    public int getOrder_price() {
        return order_price;
    }

    public void setOrder_price(int order_price) {
        this.order_price = order_price;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getOrder_name() {
        return order_name;
    }

    public void setOrder_name(String order_name) {
        this.order_name = order_name;
    }

    public String getOrder_pic() {
        return order_pic;
    }

    public void setOrder_pic(String order_pic) {
        this.order_pic = order_pic;
    }

    @Override
    public String toString() {
        return "cart{" + "username=" + username + ", order_quan=" + order_quan + ", order_price=" + order_price + ", address=" + address + ", phoneNumber=" + phoneNumber + ", order_name=" + order_name + ", order_pic=" + order_pic + '}';
    }
    
}
