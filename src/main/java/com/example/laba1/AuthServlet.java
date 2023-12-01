package com.example.laba1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet (name = "AuthServlet", value = "/auth")
public class AuthServlet extends HttpServlet {
    public static Map<String, String> Users;

    @Override
    public void init() throws ServletException {
        super.init();
        Users = new HashMap<String, String>();
        Users.put("user", "qwerty123");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.getRequestDispatcher("auth.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        boolean authResult = false;
        PrintWriter result = resp.getWriter();
        if (password.equals(Users.get(username))) {
            authResult = true;
        }
        result.write(String.valueOf(authResult));
    }
}
