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
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Random;

/**
 *
 * @author LENOVO
 */

@WebServlet(name = "addProduct", urlPatterns = "/addProduct")
public class addProduct extends HttpServlet {
   
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
            out.println("<title>Servlet addProduct</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addProduct at " + request.getContextPath () + "</h1>");
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
            int pro_typeInt = Integer.parseInt(type);

            product a = dao.getProductById(pro_id);
//            PrintWriter out = response.getWriter();

//            out.print("<h1>zxc</h1>");
            if (a == null) {
                product prod = new product(pro_typeInt, pro_quanInt, pro_idInt, pro_name, pro_idInt, pro_priceInt, pro_pic, pro_des);
                dao.insert(prod);
                request.setAttribute("id", pro_id);

                String downloadPath = "E:\\4\\GITBash\\Project-PRJ301\\project_prj301_group1\\src\\main\\java\\img"; // Change this to your desired path

                Random r = new Random();

                String fileName = downloadPath + r.nextInt() + ".jpg";

                try {
                    URL url = new URL(pro_pic);
                    HttpURLConnection connection = (HttpURLConnection) url.openConnection();

                    // Set User-Agent and Referer headers to mimic a web browser
                    connection.setRequestProperty("User-Agent", "Mozilla/5.0");
                    connection.setRequestProperty("Referer", "https://example.com"); // Replace with the appropriate referer URL

                    // Get response code to check for HTTP 403 (Forbidden)
                    int responseCode = connection.getResponseCode();
                    if (responseCode == HttpURLConnection.HTTP_OK) {
                        // If the response code is OK, proceed to download
                        InputStream is = connection.getInputStream();

                        // Create the directory path if it doesn't exist
                        File directory = new File(downloadPath);
                        if (!directory.exists()) {
                            directory.mkdirs();
                        }

                        FileOutputStream os = new FileOutputStream(fileName);
                        byte[] buffer = new byte[2048];
                        int length;
                        System.out.println("Downloading from URL: " + url);
                        while ((length = is.read(buffer)) != -1) {
                            os.write(buffer, 0, length);
                        }
                        System.out.println("Download finished: " + fileName);

                        is.close();
                        os.close();
                    } else {
                        // Handle other response codes as needed
                        System.out.println("HTTP Error: " + responseCode);
                    }
                } catch (Exception e) {
                    System.out.println(e.getMessage());
                }
//                out.print("<h1>zxc</h1>");
//                request.getRequestDispatcher("list.jsp").forward(request, response);
                response.sendRedirect("productList");
            } else {
                request.setAttribute("error", "id " + pro_id + " existed!");
//                out.print("<h1>zxc</h1>");
                request.getRequestDispatcher("addProduct.jsp").forward(request, response);
            }

        } catch (IOException ex) {

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