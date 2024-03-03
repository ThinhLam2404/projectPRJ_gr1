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
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Properties;
import java.util.Random;
import javax.mail.Message;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author thinh
 */
@WebServlet(name = "forgetPass", urlPatterns = {"/forgetPass"})
public class forgetPass extends HttpServlet {

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
            out.println("<title>Servlet forgetPass</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet forgetPass at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        DAOaccount dao = new DAOaccount();
        List<account> list = dao.getAll();

        String emailReceive = request.getParameter("email");
        String userSend = "";
        String passSend = "";
        String mess = "";
        boolean check = true;

        for (account account : list) {
            if (emailReceive.equals(account.getEmail())) {
                userSend = account.getUsername();
                passSend = account.getPassword();
                HttpSession s = request.getSession();
                s.setAttribute("user", userSend);
                s.setAttribute("pass", passSend);

                final String userName = "dotaiverify@gmail.com"; // Tài khoản email gửi
                final String password = "uclz vips nxek dzbl"; // Mật khẩu email gửi

                Properties props = new Properties();
                props.put("mail.smtp.host", "smtp.gmail.com"); // SMTP server của bạn
                props.put("mail.smtp.port", "587"); // Cổng SMTP của bạn (thường là 587 hoặc 25)

                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable", "true");

                javax.mail.Session session = javax.mail.Session.getInstance(props, new javax.mail.Authenticator() {
                    protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                        return new javax.mail.PasswordAuthentication(userName, password);
                    }
                });

                String code = generateRandomString(5);
                s.setAttribute("code", code);
//                mess = "Username: " + userSend + "\nPassword: " + newPass;
                mess = "Your code: " + code;
                try {
                    Message message = new MimeMessage(session);
                    message.setFrom(new InternetAddress(userName));
                    message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailReceive));
                    message.setSubject("Forget Password");
                    message.setText(mess);
                    Transport.send(message);

//                    System.out.println("OK");
                } catch (Exception e) {
                    System.out.println(e);
                }
                check = false;

//                String md5 = getMd5(newPass).toUpperCase();
//                dao.updatePassword(userSend, md5);
                request.setAttribute("message", "Please enter the code sent to your email to continue");
                request.setAttribute("emailReceive", emailReceive);
                s.setAttribute("emailReceive", emailReceive);
                request.getRequestDispatcher("forgetPassNext.jsp").forward(request, response);

            }
        }

        if (check) {
            mess = "Invalid email";
            request.setAttribute("message", mess);
            request.getRequestDispatcher("forgetPass.jsp").forward(request, response);

        }

    }

    public static String generateRandomString(int length) {
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        StringBuilder randomString = new StringBuilder(length);
        Random random = new Random();

        for (int i = 0; i < length; i++) {
            int index = random.nextInt(characters.length());
            char randomChar = characters.charAt(index);
            randomString.append(randomChar);
        }

        return randomString.toString();
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
//        processRequest(request, response);
        HttpSession session = request.getSession();
        String codeSend = (String) session.getAttribute("code");
        String emailReceive = (String) session.getAttribute("emailReceive");
        request.setAttribute("emailReceive", emailReceive);
        String codeInput = request.getParameter("code");
        if (codeSend.equals(codeInput)) {
            session.setAttribute("email", emailReceive);
            String username = (String) session.getAttribute("user");
            String password = (String) session.getAttribute("pass");

            Cookie u = new Cookie("userC", username);
            Cookie p = new Cookie("passC", password);
            u.setMaxAge(60 * 60 * 24 * 3);
            p.setMaxAge(60 * 60 * 24 * 3);
            response.addCookie(u);
            response.addCookie(p);
            Cookie e = new Cookie("email", emailReceive);
            e.setMaxAge(60 * 60 * 24 * 3);
            response.addCookie(e);

            String style = "style=\"display:none;\"";
            session.setAttribute("style", style);
            String logOutBtn = "<a href =\"loginServlet\" >Log out</a>";
            session.setAttribute("logOutBtn", logOutBtn);

            response.sendRedirect("home");
        } else {
            String ms = "Wrong code";
            request.setAttribute("message", ms);
            request.getRequestDispatcher("forgetPassNext.jsp").forward(request, response);
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
