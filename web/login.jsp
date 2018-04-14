<%-- 
    Document   : login
    Created on : Oct 1, 2017, 10:17:52 PM
    Author     : thaim
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="js/boxOver.js"></script>
        <link href="table.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="vid-container">
            <video class="bgvid" autoplay="autoplay" muted="muted" preload="auto" loop>
                <source src="http://mazwai.com/system/posts/videos/000/000/109/webm/leif_eliasson--glaciartopp.webm?1410742112" type="video/webm">
            </video>
            <div class="inner-container">
                <video class="bgvid inner" autoplay="autoplay" muted="muted" preload="auto" loop>
                    <source src="http://mazwai.com/system/posts/videos/000/000/109/webm/leif_eliasson--glaciartopp.webm?random=1" type="video/webm">
                </video>
                <div class="box">
                    <h1>Login</h1>
                    <form action="ControllerCustomers">
                        <input type="text" name="txtUser" value="" placeholder="Username"/>
                        <input type="password" name="txtPass" value="" placeholder="Password"/>
                        <button type="submit" name="action" value="Login" >Login</button>
                        <p>Not a member? <span>Sign Up</span></p>
                                            <div class="error">
                        <c:set var="err" value="${sessionScope.Error}"/>
                        <c:if test="${not empty err}">
                            <i>Username or Password is Invalid</i>
                        </c:if>
                    </div>
                    </form>

                </div>
            </div>
        </div>
    </body>
</html>



