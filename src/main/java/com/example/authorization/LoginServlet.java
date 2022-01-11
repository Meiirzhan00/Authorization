package com.example.authorization;

import kz.javaee.db.DBManager;
import kz.javaee.db.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/login.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Users user = DBManager.getUser(email);

        String redirect = "/login?emailerror";

        if (user != null){

            redirect = "/login?passworderror";

            if (user.getPassword().equals(password)){

                request.getSession().setAttribute("CURRENT_USER", user);
                redirect = "/";

            }
        }

        response.sendRedirect(redirect);
    }
}
