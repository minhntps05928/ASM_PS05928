<%-- 
    Document   : customer
    Created on : Oct 1, 2017, 10:16:15 PM
    Author     : thaim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer</title>
    </head>
    <body>
        <div class="wrapper">
             <div class="container">
                   
        <jsp:include page="_menu.jsp"></jsp:include>
        <h1>Welcome, ${sessionScope.USER}</h1>
                     </div>         
        </div>
    </body>
</html>
