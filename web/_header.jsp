<%-- 
    Document   : header
    Created on : Oct 8, 2017, 8:13:45 AM
    Author     : thaim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/boxOver.js"></script>
<div id="main_container">
  <div id="header">
    <div class="wrapper">
    <div class="container">
    Welcome, ${sessionScope.USER}
     </div>         
    </div>
    <div class="top_right">

      <div class="languages">
        <div class="lang_text">Languages:</div>
        <a href="#" class="lang"><img src="images/en.gif" alt="" border="0" /></a> <a href="#" class="lang"><img src="images/de.gif" alt="" border="0" /></a> </div>
      <div class="big_banner"> <a href="#"><img src="" alt="" border="0" /></a> </div>
    </div>
    <div id="logo"> <a href="#"><img src="images/logo.png" alt="" border="0" width="182" height="85" /></a> </div>
  </div>

