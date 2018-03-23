<%-- 
    Document   : cartoon_d
    Created on : Dec 13, 2015, 6:43:41 PM
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cartoon Page</title>
         <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    </head>
    <body>
        <div class="shell">
  <!-- Header -->
  <div id="header">
    <h1 id="logo"><a href="#">shoparound</a></h1>
    <!-- Cart -->
    <div id="cart"> <a href="shoppingcart.jsp" class="cart-link">Your Shopping Cart</a>
      <div class="cl">&nbsp;</div>
     <!-- <span>Articles: <strong>4</strong></span> &nbsp;&nbsp; <span>Cost: <strong>$250.99</strong></span>--> </div>
    <!-- End Cart -->
    <!-- Navigation -->
    <div id="navigation">
      <ul>
         <li><font color="white">Welcome <%= session.getAttribute("currentSessionUser")%></font></li>
        <li><a href="home_d.jsp">Home</a></li>
        <li><a href="checkout.jsp">Checkout</a></li>
        <li><a href="contact_d.jsp">Contact</a></li>
        <li><a href="profile.jsp">Profile</a></li>
        <li><a href="home.jsp">Logout</a></li>
      </ul>
    </div>
    <!-- End Navigation -->
  </div>
  <!-- End Header -->
  <!-- Main -->
  <div id="main">
    <div class="cl">&nbsp;</div>
    <!-- Content -->
    <div id="content">
      <!-- Content Slider -->
     <!-- <div>
        <div >
          
        </div>
        <div id="slider-nav"> <a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a> <a href="#">6</a><a href="#">7</a></div>
      </div>-->
   
      <!-- End Content Slider -->
      <!-- Products -->
      <div class="products">
        <div class="cl">&nbsp;</div>
        <form action="cart" method="post">
            <br><br><h1>Trucks Rental</h1><br><br>
            <table>
                <tr>
                    <td>
                <img src="css/images/truck (1).png" alt="" width="200" height="150" /><br><br>
                <center><b>Item ID:401</b></center><br>
                <center><b>Cartoon Dog Wall Clock</b><br>
                <strong class="price"> USD  35.59$</strong></center><br>
                <center><input type="checkbox" name="cc1" value="401"></center><br>
                     <br>
                        <center><input type="submit" value="Rent"></center></td>
                     <td>
                     <img src="css/images/truck (2).png" alt="" width="200" height="150" /><br><br>
                     <center><b>Item ID:402</b></center><br>
                     <center><b>Children's Room Wall Clock</b><br>
                      <strong class="price">  USD   48.84$</strong></center><br>
                     <center><input type="checkbox" name="cc2" value="402"></center><br>
                    <br>
                        <center><input type="submit" value="Rent"></center></td>
                     <td>
                     <img src="css/images/truck (3).png" alt="" width="200" height="150" /><br><br>
                     <center><b>Item ID:403</b></center><br>
                     <center><b>Cartoon Alpaca Polyresin Wall Clock </b><br>
                        <strong class="price"> USD  89.70$</strong></center><br>
                     <center><input type="checkbox" name="cc3" value="403"></center><br>
                    <br>
                        <center><input type="submit" value="Rent"></center></td>
                </tr>
                <tr>
                    <td><br><br>
                <img src="css/images/truck (4).png" alt="" width="200" height="150" /><br><br>
                <center><b>Item ID:404</b></center><br>
                <center><b>Tiger Wooden Round Wall Clock</b><br>
                 <strong class="price"> USD   69.48$</strong></center><br>
                <center><input type="checkbox" name="cc4" value="404"></center><br>
                    <br>
                        <center><input type="submit" value="Rent"></center></td>
                    <td><br><br>
                    <img src="css/images/truck (5).png" alt="" width="200" height="150" /><br><br>
                    <center><b>Item ID:405</b></center><br>
                    <center><b> Lotus Leaf and Frogs Wall Clock </b><br>
                     <strong class="price"> USD   64.84$</strong></center><br>
                    <center><input type="checkbox" name="cc5" value="405"></center><br>
                    <br>
                        <center><input type="submit" value="Rent"></center></td>
                     <td><br><br>
                       <img src="css/images/truck (6).png" alt="" width="200" height="150" /><br><br>
                        <center><b>Item ID:406</b></center><br>  
                        <center><b>Bird Stainless Steel Wall Clock</b><br>
                           <strong class="price">  USD   30.99$</strong></center><br>
                         <center><input type="checkbox" name="cc6" value="406"></center><br>
                    <br>
                        <center><input type="submit" value="Rent"></center></td>
                </tr>
                <!--<tr>
                    <td colspan="3"><br><br><br><center><input type="submit" value="Rent"></center></td>
                </tr>-->
            </table>
        </form>
       <!-- <ul>
            <li> <input type="checkbox" name="c1" value="17.59$"><img src="css/images/mirror1.jpg" alt="" /><br>
            <div class="product-info">
              <h3>3D Mirror Numbers</h3>
              <div class="product-desc">
                <h4>39"W DIY  Acrylic Sticker Wall Clock</h4>
                <p>USD<br />
                  </p>
                <strong class="price">$17.59</strong> </div>
            </div>
          </li>
          <li> <input type="checkbox" name="c2" value="12.84$"><img src="css/images/mirror2.jpg" alt="" /><br>
            <div class="product-info">
              <h3>Fashion Removable Clock Mirror</h3>
              <div class="product-desc">
                <h4> DIY Art Wall Stickers for Home Decor (Silver) </h4>
                <p>USD<br />
                  </p>
                <strong class="price">$12.84</strong> </div>
            </div>
          </li>
          <li> <input type="checkbox" name="c3" value="15.70$"><img src="css/images/mirror3.jpg" alt="" /><br>
            <div class="product-info">
              <h3>Butterfly Acrylic Mirror Wall Clock</h3>
              <div class="product-desc">
                <h4>3D DIY Modern Style Angle </h4>
                <p>USD<br />
                  </p>
                <strong class="price">$15.70</strong> </div>
            </div>
          </li><br><br>
          <li> <input type="checkbox" name="c4" value="12.84$"><img src="css/images/mirror4.jpg" alt="" /><br>
            <div class="product-info">
              <h3>Hearts Love DIY Luxury</h3>
              <div class="product-desc">
                <h4>Wall Art Acrylic Clock Mirror Stickers for Home Decoration (Silver)</h4>
                <p>USD<br />
                  </p>
                <strong class="price">$12.84</strong> </div>
            </div>
          </li>
            
          <li><input type="checkbox" name="c5" value="12.84$"><img src="css/images/mirror5.jpg" alt="" /><br>
            <div class="product-info">
              <h3>Butterfly & Fairy Modern Mirrors</h3>
              <div class="product-desc">
                <h4>Wall Stickers DIY Acrylic Wall Decals for Home Decoration (Two Colors Options)</h4>
                <p>USD<br />
                  </p>
                <strong class="price">$12.84</strong> </div>
            </div>
          </li>
          <li class="last"><input type="checkbox" name="c6" value="21.41$"><img src="css/images/mirror6.jpg" alt="" /><br>
            <div class="product-info">
              <h3> Number Mirror Wall Clock</h3>
              <div class="product-desc">
                <h4>30"H Modern Style New Acrylic Simple </h4>
                <p>USD<br />
                  </p>
                <strong class="price">$21.41</strong> </div>
            </div>
          </li>
          
        </ul>-->
        <!--<div class="cl">&nbsp;</div>-->
      </div>
      <!-- End Products -->
    </div>
    <!-- End Content -->
    <!-- Sidebar -->
    <div id="sidebar">
      <!-- Search -->
      <div class="box categories">
        <h2>Categories <span></span></h2>
        <div class="box-content">
          <ul>
            <li><a href="mirror_d.jsp">Compact Cars</a></li>
            <li><a href="canvas_d.jsp">SUV Cars</a></li>
            <li><a href="vintage_d.jsp">Luxury Cars</a></li>
            
            
            <li class="last"><a href="cartoon_d.jsp">Trucks</a></li>
          </ul>
        </div>
      </div>
     <!-- <div class="box search">
        <h2>Search by <span></span></h2>
        <div class="box-content">
          <form action="#" method="post">
            <label>Keyword</label>
            <input type="text" class="field" />
            <label>Category</label>
            <select class="field">
              <option value="">-- Select Category --</option>
            </select>
            <div class="inline-field">
              <label>Price</label>
              <select class="field small-field">
                <option value="">$10</option>
              </select>
              <label>to:</label>
              <select class="field small-field">
                <option value="">$50</option>
              </select>
            </div>
            <input type="submit" class="search-submit" value="Search" />
            <p> <a href="#" class="bul">Advanced search</a><br />
              <a href="#" class="bul">Contact Customer Support</a> </p>
          </form>
        </div>
      </div>
      <!-- End Search -->
      <!-- Categories -->
    <!--  <div class="box categories">
        <h2>Categories <span></span></h2>
        <div class="box-content">
          <ul>
            <li><a href="#">Category 1</a></li>
            <li><a href="#">Category 2</a></li>
            <li><a href="#">Category 3</a></li>
            <li><a href="#">Category 4</a></li>
            <li><a href="#">Category 5</a></li>
            <li><a href="#">Category 6</a></li>
            <li><a href="#">Category 7</a></li>
            <li><a href="#">Category 8</a></li>
            <li><a href="#">Category 9</a></li>
            <li><a href="#">Category 10</a></li>
            <li><a href="#">Category 11</a></li>
            <li><a href="#">Category 12</a></li>
            <li class="last"><a href="#">Category 13</a></li>
          </ul>
        </div>
      </div>
      <!-- End Categories -->
    </div>
    <!-- End Sidebar -->
    <div class="cl">&nbsp;</div>
  </div>
  </div>
    </body>
</html>