/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import DAO.DAOcart;
import DAO.DAOproduct;
import entity.cart;
import entity.product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author thinh
 */
@WebServlet(name="decreaseQuan", urlPatterns={"/decreaseQuan"})
public class decreaseQuan extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet decreaseQuan</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet decreaseQuan at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
//        processRequest(request, response);
 int totalP = 0;
        int priceP = 0;
        int totalPrice = 0;
        int totalQ = 0;
        int quantity = 0;
        String pic = "";
        String username = "";
        Cookie arr[] = request.getCookies();
        for (Cookie o : arr) {
            if (o.getName().equals("userC")) {
                username = o.getValue();
            }
        }
        String name = request.getParameter("sid");
        String address = request.getParameter("address");
        String phone = request.getParameter("phoneNumber");
        String quan = request.getParameter("quantity");
        int quantity2 = Integer.parseInt(quan);
        DAOproduct product = new DAOproduct();
        List<product> list2 = product.getAll();
        DAOcart cart = new DAOcart();
        List<cart> list = cart.getAll(username);
        for (int i = 0; i < list2.size(); i++) {
            if (name.equals(list2.get(i).getPro_name())) {
                totalP = list2.get(i).getPro_quan();
                priceP = list2.get(i).getPro_price();
                pic = list2.get(i).getPro_pic();
            }
        }
        for (int i = 0; i < list.size(); i++) {
            if (name.equals(list.get(i).getOrder_name()) && address.equals(list.get(i).getAddress()) && phone.equals(list.get(i).getPhoneNumber()) && username.equals(list.get(i).getUsername())) {
                if (quantity < totalP) {
                    totalPrice = priceP * quantity2;
                    cart.updateCart(username, quantity2, totalPrice, address, phone, name, pic);
                    response.sendRedirect("loadCart");
                }
    }
        }
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
