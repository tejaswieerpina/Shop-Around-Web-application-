<%-- 
    Document   : mirror.jsp
    Created on : Dec 13, 2015, 3:02:55 AM
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    </head>
    <body>
        <div class="shell">
  <!-- Header -->
  <div id="header">
    <h1 id="logo"><a href="#">shoparound</a></h1>
    <!-- Cart -->
    <div id="cart"> <a href="login.jsp" class="cart-link">Your Shopping Cart</a>
      <div class="cl">&nbsp;</div>
     <!-- <span>Articles: <strong>4</strong></span> &nbsp;&nbsp; <span>Cost: <strong>$250.99</strong></span>--> </div>
    <!-- End Cart -->
    <!-- Navigation -->
    <div id="navigation">
      <ul>
          <li><a href="home.jsp" >Home</a></li>
        <li><a href="login.jsp">Login</a></li>
        <li><a href="register.jsp">Register</a></li>
        <li><a href="checkout.jsp">Checkout</a></li>
        <li><a href="contact.jsp">Contact</a></li>
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
        <form action="login.jsp" method="post">
            <table>
                <tr>
                    <td>
                <center><input type="checkbox" name="c1" value="17.59$"></center><br><img src="css/images/mirrors1.jpg" alt="" width="231" height="300" /><br><br>
                <b>39"W DIY  Acrylic Sticker Wall Clock</b><br>
                <center><strong class="price"> USD  17.59$</strong></center></td>
                     <td>
                     <center><input type="checkbox" name="c2" value="12.84$"></center><br><img src="css/images/mirrors2.jpg" alt="" width="231" height="300" /><br><br>
                     <b>Fashion Removable Clock Mirror</b><br>
                     <center> <strong class="price">  USD   12.84$</strong></center></td>
                     <td>
                     <center><input type="checkbox" name="c3" value="15.70$"></center><br><img src="css/images/mirrors3.jpg" alt="" width="231" height="300" /><br><br>
                     <b> Butterfly Acrylic Mirror Wall Clock</b><br>
                        <center><strong class="price"> USD  15.70$</strong></center></td>
                </tr>
                <tr>
                    <td><br><br>
                <center><input type="checkbox" name="c4" value="12.48$"></center><br><img src="css/images/mirrors4.jpg" alt="" width="231" height="300" /><br><br>
                <center><b>Hearts Love DIY Luxury</b><br>
                 <strong class="price"> USD   12.48$</strong></center></td>
                    <td><br><br>
                    <center><input type="checkbox" name="c5" value="12.84$"></center><br><img src="css/images/mirrors5.jpg" alt="" width="231" height="300" /><br><br>
                    <center><b>  Butterfly & Fairy Modern Mirrors</b><br>
                     <strong class="price"> USD   12.84$</strong></center></td>
                     <td><br><br>
                        <center><input type="checkbox" name="c6" value="21.41$"></center><br><img src="css/images/mirrors6.jpg" alt="" width="231" height="300" /><br><br>
                           <center><b> Number Mirror Wall Clock</b><br>
                           <strong class="price">  USD   21.41$</center></strong></td>
                </tr>
                <tr>
                    <td colspan="3"><br><br><br><center><input type="submit" value="Add to cart"></center></td>
                </tr>
            </table>
        </form>
       <!-- <ul>1 
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
            <li><a href="mirror.jsp">Mirror Wall Clocks</a></li>
            <li><a href="canvas.jsp">Canvas Wall Clocks</a></li>
            <li><a href="vintage.jsp">Vintage Wall Clocks</a></li>
            
            
            <li class="last"><a href="cartoon.jsp">Cartoon Wall Clocks</a></li>
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
