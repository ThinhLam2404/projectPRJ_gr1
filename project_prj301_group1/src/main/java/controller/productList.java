/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.DAOproduct;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import entity.product;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;

/**
 *
 * @author LENOVO
 */
@WebServlet(name = "productList", urlPatterns = "/productList")
public class productList extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet product</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet product at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DAOproduct dao = new DAOproduct();

        List<product> listProduct = dao.getAll();
        request.setAttribute("listProduct", listProduct);

//        for (product object : listProduct) {
//            if(object.getPro_sale() ==0){
//                String style = "style=\"display: none\"";
//                request.setAttribute("style", style);
//            }
//        }
        String email = "";
        String user = "";
        Cookie arr[] = request.getCookies();
        for (Cookie o : arr) {
            if (o.getName().equals("email")) {
                email = o.getValue();
            }
        }
        if (email == null || email.isEmpty()) {
            String admin2 = "admin2";
            request.setAttribute("admin2", admin2);
        } else {
            if (email.equals("thinhldce171774@fpt.edu.vn")) {
                String cssAdmin = "style=\"display: inline;\"";
                request.setAttribute("cssAdmin", cssAdmin);
                String admin = "admin";

                request.setAttribute("admin", admin);

            } else {
                 user = "user";

                request.setAttribute("user", user);
            }
        }
        System.out.println(email);
        System.out.println(user);
        request.getRequestDispatcher("product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        if(username.equals("admin") && password.equals("admin")) {
//                    String cssAdmin = "style=\"display: inline;\""; 
//                    request.setAttribute("cssAdmin", cssAdmin);
//                }
        String email = request.getParameter("email");
        if (email.equals("thinhldce171774@fpt.edu.vn")) {
            String cssAdmin = "style=\"display: inline;\"";
            request.setAttribute("cssAdmin", cssAdmin);
        }

        DAOproduct dao = new DAOproduct();
        String filterID = request.getParameter("filterID");

        if (filterID.equals("Top")) {
            List<product> listTop = dao.getTop();
            request.setAttribute("listProduct", listTop);

        } else if (filterID.equals("Bottom")) {
            List<product> listBottom = dao.getBottom();
            request.setAttribute("listProduct", listBottom);
        } else {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

        request.getRequestDispatcher("product.jsp").forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
