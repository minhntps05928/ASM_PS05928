<%-- 
    Document   : content
    Created on : Oct 17, 2017, 1:44:51 AM
    Author     : thaim
--%>


<%@page import="Controller.ControllerProducts"%>
<%@page import="java.util.List"%>
<%@page import="Model.Product"%>
<%@page import="Model.Products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/boxOver.js"></script>
<!DOCTYPE html>

<div id="main_content">
    <!-- star of left content -->
    <div class="crumb_navigation"> Navigation: <span class="current">Home</span> </div>
    <div class="left_content">
        <div class="title_box">Categories</div>
        <ul class="left_menu">
            <li class="odd"><a href="#">CPU</a></li>
            <li class="even"><a href="#">MAINBOARD</a></li>
            <li class="odd"><a href="#">RAM</a></li>
            <li class="even"><a href="#">VGA</a></li>
            <li class="odd"><a href="#">HDD</a></li>
            <li class="even"><a href="#">ODD</a></li>
            <li class="odd"><a href="#">PUS</a></li>
            <li class="even"><a href="#">CASE</a></li>
            <li class="odd"><a href="#">KEYBOARD</a></li>
            <li class="even"><a href="#">MOUSE</a></li>
        </ul>
        <div class="title_box">Special Products</div>
        <div class="border_box">
            <div class="product_title"><a href="#">VGA Gigabyte GTX1060WF2OC-6GD</a></div>
            <div class="product_img"><a href="#"><img src="images/p1_1.jpg" alt="" border="0" /></a></div>
            <div class="prod_price"><span class="reduce">500$</span> <span class="price">300$</span></div>

        </div>
        <div class="title_box">Newsletter</div>
        <div class="border_box">
            <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
            <a href="#" class="join">subscribe</a> </div>
        <div class="banner_adds"> <a href="#"><img src="images/left.jpg" width='170px;' height='150px;' alt="" border="0" /></a> </div>
    </div>
    <!-- end of left content -->
    <div class="center_content">
        <div class="oferta"> <img src="images/p1_4.png" width="165" height="113" border="0" class="oferta_img" alt="" />
            <div class="oferta_details">
                <div class="oferta_title">VGA Gigabyte Radeon™ RX 580 Gaming 8G (GV-RX580GAMING-8GD) (Cày coin)</div>
                <div class="oferta_text">
                    VGA Gigabyte Radeon™ RX 580 Gaming 8G (GV-RX580GAMING-8GD)<br/>
                    Features<br/> 
                    - Powered by Radeon ™ RX 580<br/>
                </div>
                <a href="#" class="prod_buy">details</a> </div>
        </div>
        <div class="center_title_bar">Latest Products</div>
        <% Products listSP = new Products();
            List<Product> list = listSP.showProduct("");
            for (Product sp : list) {
                out.print("<form action=\"ControllerCartBean\">");
                out.print("<div class=\"prod_box\">" + "<div class=\"center_prod_box\">"
                        + "<div class=\"product_title\"><a href=\"#\">" + sp.getName() + "</a></div>"
                        + "<div class=\"product_img\"><a href=\"#\"><img width=\"150px\" height=\"180px\" src='images/" + sp.getImage() + "'/></a></div>"
                        + "<div class=\"prod_price\">" + sp.getPrice() + "</span>$</div>"
                        + "<div class=\"prod_details_tab\"><input type=\"submit\" name=\"action\" value=\"Add to Cart\" />"
                        + "<a href=\"#\" class=\"prod_details\">Details</a></div>"
                        + "</div>"
                        + "<input type=\"hidden\" name=\"txtCode\" value='" + sp.getCode() + "'>"
                        + "<input type=\"hidden\" name=\"txtName\" value='" + sp.getName() + "'>"
                        + "<input type=\"hidden\" name=\"txtPrice\" value='" + sp.getPrice() + "'>"
                        + "<input type=\"hidden\" name=\"txtImg\" value='" + sp.getImage() + "'>"
                        + "</div>"
                 );

                 out.print("</form>");
             }%>
    </div>
    <!-- end of center content -->

    <div class="right_content">
        <div class="title_box">Search</div>
        <div class="border_box">
            <input type="text" name="newsletter" class="newsletter_input" value="keyword"/>
            <a href="#" class="join">search</a> </div>
        <div class="shopping_cart">
                    <form action="ControllerCartBean">
            
        
            <div class="title_box">Shopping cart</div>
            <div class="cart_details"> 3items <br />
                <span class="border_cart"></span> Total: <span class="price">350$</span> </div>
            <div class="cart_icon"><a href="showcart.jsp"><img src="images/shoppingcart.png " alt="" width="35" height="35" border="0" /></a></div>
            </form>
        </div>
        <div class="title_box">What’s new</div>
        <div class="border_box">
            <div class="product_title"><a href="#">Motorola 156 MX-VL</a></div>
            <div class="product_img"><a href="#"><img src="images/p1_1.jpg" alt="" border="0" /></a></div>
            <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
        </div>
        <div class="title_box">Manufacturers</div>
        <ul class="left_menu">
            <li class="odd"><a href="#">Gigabyte</a></li>
            <li class="even"><a href="#">Asus</a></li>
            <li class="odd"><a href="#">MSI</a></li>
            <li class="even"><a href="#">Asrock</a></li>
            <li class="odd"><a href="#">Intel</a></li>
            <li class="even"><a href="#">Foxconn</a></li>
            <li class="odd"><a href="#">Dell</a></li>
            <li class="even"><a href="#">HP</a></li>
        </ul>
        <div class="banner_adds"> <a href="#"><img src="" alt="" border="0" /></a> </div>

    </div>
</div>


