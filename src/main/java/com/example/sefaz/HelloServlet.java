
package com.example.sefaz;

import com.example.sefaz.src.Connection.Conexao;

import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;
    public void init() {
        message = "Hello World!";
    }


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<h:html><h:body>");
        out.println("<h:h1>" + message + "</h:h1>");
        out.println("</h:body></h:html>");
    }

        public static Connection getConnection() throws SQLException {
        Connection con = Conexao.faz_conexao();

            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (Exception e) {
                System.out.println(e);
            }
            return con;
        }


        public static List<Usuario> getAllUsuarios() throws SQLException {
            List<Usuario> list = new ArrayList<Usuario>();

            try {
                Connection con = Conexao.faz_conexao();
                String sql = "select * from dados_senhas";
                PreparedStatement stmt = con.prepareStatement(sql);
                ResultSet rs = stmt.executeQuery();


                while(rs.next()){
                    Usuario usuario = new Usuario();
                    usuario.setNome(rs.getString("nome"));
                    usuario.setEmail(rs.getString("email"));
                    usuario.setTelefone(rs.getString("telefone"));
                    usuario.setSenha(rs.getString("senha"));
                    list.add(usuario);
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
            return list;
        }
    public void destroy() {
    }
}


