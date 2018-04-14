<%-- 
    Document   : index
    Created on : Oct 7, 2017, 1:06:49 AM
    Author     : thaim
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="Model.Product"%>
<%@page import="Model.Products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/boxOver.js"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/style.css" rel='' type='text/css'/>
        <script src="${root}/js/jquery-1.11.1.min.js"></script>
        
    </head>
    <body>
        <jsp:include page="_header.jsp"></jsp:include>
        <jsp:include page="_menu.jsp"></jsp:include>
        <jsp:include page="content.jsp"></jsp:include>

        
        <jsp:include page="_footer.jsp"></jsp:include>        
    </body>
</html>
