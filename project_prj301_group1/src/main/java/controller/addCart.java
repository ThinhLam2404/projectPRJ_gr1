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
@WebServlet(name="addCart", urlPatterns={"/addCart"})
public class addCart extends HttpServlet {
   
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
            out.println("<title>Servlet addCart</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addCart at " + request.getContextPath () + "</h1>");
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
        processRequest(request, response);
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
//        processRequest(request, response);
 String username = "";
        String ms = "<script>\n"
                + "        alert(\"Sold out!\")\n"
                + "    </script>";
        int totalQ = 0;
        int price2 = 0;
        int temp = 0;
        int temp2 = 0;
        int quantity2 = 0;
        String picP = request.getParameter("pic");
        String nameP = request.getParameter("nameP");
        String quanP = request.getParameter("quantity");
        int quantity = Integer.parseInt(quanP);
        totalQ = quantity;
        String addressP = request.getParameter("address");
        String phoneNumberP = request.getParameter("phoneNumber");
        Cookie arr[] = request.getCookies();
        for (Cookie o : arr) {
            if (o.getName().equals("userC")) {
                username = o.getValue();
            }
        }
        DAOproduct product = new DAOproduct();
        List<product> list = product.getAll();
        DAOcart cart = new DAOcart();
        List<cart> list2 = cart.getAll(username);
        if (list2.size() > 0) {
            for (int i = 0; i < list2.size(); i++) {
                if (nameP.equals(list2.get(i).getOrder_name()) && username.equals(list2.get(i).getUsername())) {
                    totalQ = totalQ + list2.get(i).getOrder_quan();
                }
            }
        }
        System.out.println(totalQ);
        for (int i = 0; i < list.size(); i++) {
            if (nameP.equals(list.get(i).getPro_name())) {
                String id = String.valueOf(list.get(i).getPro_id());
                product p = product.getProductById(id);
                price2 = quantity * list.get(i).getPro_price();
                if (totalQ > list.get(i).getPro_quan()) {
                    request.setAttribute("ms", ms);
                    request.setAttribute("p", p);
                    request.getRequestDispatcher("detailP.jsp").forward(request, response);
                    temp2++;
                }
            }
        }
        if (temp2 == 0) {
            for (int i = 0; i < list2.size(); i++) {
                if (nameP.equals(list2.get(i).getOrder_name()) && addressP.equals(list2.get(i).getAddress()) && phoneNumberP.equals(list2.get(i).getPhoneNumber()) && username.equals(list2.get(i).getUsername())) {
                    quantity = list2.get(i).getOrder_quan() + quantity;
                    for (int j = 0; j < list.size(); j++) {
                        if (nameP.equals(list.get(j).getPro_name())) {
                            price2 = quantity * list.get(j).getPro_price();
                            cart.updateCart(username, quantity, price2, addressP, phoneNumberP, nameP, picP);
                            temp++;
                        }
                    }

                }
            }
            if (temp == 0) {
                cart.insertCart(username, quantity, price2, addressP, phoneNumberP, nameP, picP);
            }
            response.sendRedirect("loadCart");
        }
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
