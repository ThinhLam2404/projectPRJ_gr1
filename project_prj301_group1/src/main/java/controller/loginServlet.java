/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.DAOaccount;
import entity.account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

/**
 *
 * @author LENOVO
 */
public class loginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    public static String getMd5(String input) {
        try {

            // Static getInstance method is called with hashing MD5
            MessageDigest md = MessageDigest.getInstance("MD5");

            // digest() method is called to calculate message digest
            // of an input digest() return array of byte
            byte[] messageDigest = md.digest(input.getBytes());

            // Convert byte array into signum representation
            BigInteger no = new BigInteger(1, messageDigest);

            // Convert message digest into hex value
            String hashtext = no.toString(16);
            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        } // For specifying wrong message digest algorithms
        catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        Cookie arr[] = request.getCookies();

        for (Cookie o : arr) {
            if (o.getName().equals("userC")) {
                o.setMaxAge(0);
                response.addCookie(o);
//                request.setAttribute("username", o.getValue());

            }
            if (o.getName().equals("passC")) {
                o.setMaxAge(0);
                response.addCookie(o);

//                request.setAttribute("password", o.getValue());
            }
            if (o.getName().equals("email")) {
                o.setMaxAge(0);
                response.addCookie(o);

//                request.setAttribute("password", o.getValue());
            }

        }
        HttpSession session = request.getSession();
        session.setAttribute("email", "");
        String style = "";
        session.setAttribute("style", style);
        String logOutBtn = "";
        session.setAttribute("logOutBtn", logOutBtn);
        String stylee = "style=\"display:none;\"";
        session.setAttribute("stylee", stylee);
        response.sendRedirect("home");
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String message = "";

        DAOaccount account = new DAOaccount();
        List<account> list = account.getAll();

        String md5 = getMd5(password);
        boolean isEmpty = true;
        for (account account1 : list) {
            if (username.equals(account1.getUsername()) && md5.equalsIgnoreCase(account1.getPassword())) {
                String email = account1.getEmail();

                HttpSession session = request.getSession();
                session.setAttribute("email", email);

                isEmpty = false;

                Cookie u = new Cookie("userC", username);
                Cookie p = new Cookie("passC", password);
                u.setMaxAge(60 * 60 * 24 * 3);
                p.setMaxAge(60 * 60 * 24 * 3);
                Cookie e = new Cookie("email", email);
                u.setMaxAge(60 * 60 * 24 * 3);
                response.addCookie(u);
                response.addCookie(e);
                response.addCookie(p);

                String style = "style=\"display:none;\"";
                session.setAttribute("style", style);

                String logOutBtn = "<a href =\"loginServlet\" >Log out</a>";
                session.setAttribute("logOutBtn", logOutBtn);

                if (email.equals("thinhldce171774@fpt.edu.vn")) {
                    
                    String stylee = "style=\"display:inline;\"";
                    session.setAttribute("stylee", stylee);
                }

                response.sendRedirect("home");
            }
        }
        if (isEmpty) {
            message = "<div style=\"color: red;\">Wrong email or password.</div>";
            request.setAttribute("message", message);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
