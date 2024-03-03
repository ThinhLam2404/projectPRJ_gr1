/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import DAO.DAOproduct;
import entity.product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author LENOVO
 */
@WebServlet(name = "updateProduct", urlPatterns = "/updateProduct")
public class updateProduct extends HttpServlet {
   
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
            out.println("<title>Servlet updateProducr</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updateProducr at " + request.getContextPath () + "</h1>");
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
        String pro_id = request.getParameter("pro_id");
        DAOproduct dao = new DAOproduct();

        product c = dao.getProductById(pro_id);
        request.setAttribute("product", c);
        request.getRequestDispatcher("updateProduct.jsp").forward(request, response);
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
//          <td>${product.getType()}</td>
//                     <td>${product.getPro_quan()}</td>
//                    <td>${product.getPro_id()}</td>
//                    <td>${product.getPro_name()}</td>
//                    <td>${product.getPro_sale()}</td>
//                    <td>${product.getPro_price()}</td>
//                    <td> <img src="${product.getPro_pic()}" alt="alt"/></td>
//                    <td>${product.getPro_des()}</td>-->
        
           try {
            String type = request.getParameter("type");
            String pro_quan = request.getParameter("pro_quan");
            String pro_id = request.getParameter("pro_id");
            String pro_name = request.getParameter("pro_name");
            String pro_sale = request.getParameter("pro_sale");
            String pro_price = request.getParameter("pro_price");
            String pro_pic = request.getParameter("pro_pic");
            String pro_des = request.getParameter("pro_des");

            DAOproduct dao = new DAOproduct();
            int pro_quanInt = Integer.parseInt(pro_quan);
            int pro_priceInt = Integer.parseInt(pro_price);
            int pro_idInt = Integer.parseInt(pro_id);
            int typeInt = Integer.parseInt(type);
            int pro_saleInt = Integer.parseInt(pro_sale);
            
//            product p = dao.getProductById(pro_id);
//            PrintWriter out = response.getWriter();

//            out.print("<h1>zxc</h1>");
            product prod = new product(typeInt, pro_quanInt, pro_idInt, pro_name, 
                    pro_saleInt, pro_priceInt, pro_pic, pro_des);
            dao.update(prod);

//                out.print("<h1>zxc</h1>");
//                request.getRequestDispatcher("list.jsp").forward(request, response);
            response.sendRedirect("productList");

        } catch (IOException ex) {

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
