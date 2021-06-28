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

        Usuario user = new Usuario();

        String userName = request.getParameter("username");
        String password = request.getParameter("Password");
        user.setNombreUsuario(userName);
        user.setContra(password);
        UsuarioDAO userDB = new UsuarioDAO();
        LoginDAO logindao = new LoginDAO();
        Usuario userAllDB = new Usuario();

        System.out.println("here");

        try {

            System.out.println("here");
         boolean success = logindao.validar(user.getNombreUsuario(),user.getContra());

         if (success){
             userAllDB = userDB.selectAllData(user);
             System.out.println(userAllDB.getIdUsuario());
             response.sendRedirect("HomeUser.jsp");


         }else{
             request.setAttribute("error","usuario o contraseña incorrectos");
             request.getRequestDispatcher("index.jsp").forward(request,response);
         }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}