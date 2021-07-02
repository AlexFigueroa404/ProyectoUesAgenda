package com.example.Login.Controlador;

import com.example.Login.DAO.LoginDAO;
import com.example.Login.DAO.UsuarioDAO;
import com.example.Login.Entidad.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(name = "ControladorLogin", value = "/ControladorLogin")
public class ControladorLogin extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userName = request.getParameter("username");
        String password = request.getParameter("Password");

        Usuario user = new Usuario();

        user.setNombreUsuario(userName);
        user.setContra(password);

        UsuarioDAO userDB = new UsuarioDAO();

        LoginDAO logindao = new LoginDAO();

        Usuario userAllDB = new Usuario();

        try {

            boolean success = logindao.validar(user.getNombreUsuario(), user.getContra());

            if (success) {
                userAllDB = userDB.selectAllData(user);


                if (userAllDB != null) {

                    HttpSession session = request.getSession();
                    session.setAttribute("user", userAllDB);

                    response.sendRedirect("HomeUser.jsp");
                } else {
                    request.setAttribute("error", "usuario o contraseña incorrectos");
                    request.getRequestDispatcher("Error.jsp").forward(request, response);
                }

            } else {
                request.setAttribute("error", "usuario o contraseña incorrectos");
                request.getRequestDispatcher("Error.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}