<%-- 
    Document   : products
    Created on : Oct 2, 2017, 6:11:33 AM
    Author     : thaim
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="style.css" rel="stylesheet" type="text/css"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="_header.jsp"></jsp:include>
        <jsp:include page="menuadmin.jsp"></jsp:include>        
        <h1>Products</h1>
        <form action="ControllerProducts">
            Nhap ten SP: <input type="text" name="txtTenSP" value="" />
            <input type="submit" name="action" value="Search" />
        </form>
            <table border="1">
                <tr>
                    <td>Code</td>
                    <td>Name</td>
                    <td>Price</td>
                    <td>Images</td>
                    <td>Edit</td>
                    <td>Delete</td>
                </tr>
                <c:forEach var="rows" items="${listSP}">
                    <tr>
                        <td>${rows.code}</td>
                        <td>${rows.name}</td>
                        <td>${rows.price}</td>
                        <td>${rows.image}</td>
                        <c:url var="del" value="ControllerProducts">
                            <c:param name="action" value="Edit"/>
                            <c:param name="txtCode" value="${rows.code}"/>
                            <c:param name="txtName" value="${rows.name}"/>
                            <c:param name="txtPrice" value="${rows.price}"/>
                            <c:param name="txtImage" value="${rows.image}"/>
                        </c:url>
                        <td><a href="${del}">Edit</a></td>
                        <td>
                            <form action="ControllerProducts">
                            <input type="hidden" name="txtCode" value="${rows.code}"/>
                            <input type="submit" name="action" value="Delete"/> 
                            </form>
                        </td>
                    </tr>
        </c:forEach> 
    </table>
    <br/>
        <jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>
