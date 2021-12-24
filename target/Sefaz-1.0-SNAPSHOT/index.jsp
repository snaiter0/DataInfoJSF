<%@ page import="com.example.sefaz.HelloServlet" %>
<%@ page import="com.example.sefaz.HelloServlet, java.util.*,com.example.sefaz.Usuario "%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="style.css" />
<html
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:ui="http://java.sun.com/jsf/facelets"
      xmlns:f="http://xmlns.jcp.org/jsf/core"
      xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_4_0.xsd">

<h:head>
    <title>JSP - Hello World</title>
</h:head>

<h:body>
    <div class="container" >
        <a class="links" id="paracadastro"></a>
        <a class="links" id="paralogin"></a>

        <div class="content">
            <!--FORMULÁRIO DE LOGIN-->
            <div id="login">
                <form method="post" action="">
                    <h1>Login</h1>
                    <p>
                        <label for="nome_login">Seu nome</label>
                        <input id="nome_login" name="nome_login" required="required" type="text" placeholder="ex. contato@gmail.com"/>
                    </p>

                    <p>
                        <label for="email_login">Seu e-mail</label>
                        <input id="email_login" name="email_login" required="required" type="password" placeholder="ex. senha" />
                    </p>

                    <p>
                        <input type="checkbox" name="manterlogado" id="manterlogado" value="" />
                        <label for="manterlogado">Manter-me logado</label>
                    </p>

                    <p>
                        <input type="submit" value="Logar" />
                    </p>

                    <p class="link">
                        Ainda não tem conta?
                        <a href="#paracadastro">Cadastre-se</a>
                    </p>
                </form>
            </div>

            <!--FORMULÁRIO DE CADASTRO-->
            <div id="cadastro">
                <form method="post" action="">
                    <h1>Cadastro</h1>

                    <p>
                        <label for="nome_cad">Seu nome</label>
                        <input id="nome_cad" name="nome_cad" required="required" type="text" placeholder="nome" />
                    </p>

                    <p>
                        <label for="email_cad">Seu e-mail</label>
                        <input id="email_cad" name="email_cad" required="required" type="email" placeholder="contato@gmail.com"/>
                    </p>

                    <p>
                        <label for="senha_cad">Sua senha</label>
                        <input id="senha_cad" name="senha_cad" required="required" type="password" placeholder="ex. 1234"/>
                    </p>

                    <p>
                        <input type="submit" value="Cadastrar"/>
                    </p>

                    <p class="link">
                        Já tem conta?
                        <a href="#paralogin"> Ir para Login </a>
                    </p>
                </form>
            </div>
        </div>
    </div>
</h:body>
</html>
