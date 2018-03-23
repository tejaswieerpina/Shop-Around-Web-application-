<%-- 
    Document   : canvas_d
    Created on : Dec 13, 2015, 6:45:23 PM
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Canvas Page</title>
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
        <li><font color="white" weight="bold">Welcome <%= session.getAttribute("currentSessionUser")%></font></li>
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
            <br><br>
            <h1>SUV Cars</h1><br>
            <table>
                <tr>
                    <td>
                <img src="css/images/suv (1).png" alt="" width="220.8" height="165.8" /><br><br>
                <center><b>Item ID:301</b></center><br>
                <center><b>Chevy XC </b><br>
                <strong class="price"> USD  52.99$</strong></center><center><br>
                    <input type="checkbox" name="cac1" value="301"></center><br>
                    <br>
                        <center><input type="submit" value="Rent"></center></td>
                     <td>
                    <img src="css/images/suv (2).png" alt="" width="220.8" height="165.8" /><br><br>
                     <center><b>Item ID:302</b></center><br>
                     <center><b>Chevy ZCR</b><br>
                      <strong class="price">  USD   52.99$</strong></center><br>
                      <center><input type="checkbox" name="cac2" value="302"></center><br>
            <br>
                        <center><input type="submit" value="Rent"></center></td>
                     <td>
                    <img src="css/images/suv (3).png" alt="" width="220.8" height="165.8" /><br><br>
                     <center><b>Item ID:303</b></center><br>
                     <center><b>BMW R5</b><br>
                        <strong class="price"> USD  82.99$</strong></center><br>
                      <center><input type="checkbox" name="cac3" value="303"></center><br>
                    <br>
                        <center><input type="submit" value="Rent"></center></td>
                </tr>
                <tr>
                    <td><br><br>
                <img src="css/images/suv (4).png" alt="" width="220.8" height="165.8" /><br><br>
                <center><b>Item ID:304</b></center><br>
                <center><b>Audi Z7 </b><br>
                 <strong class="price"> USD   39.99$</strong></center><br>
                <center><input type="checkbox" name="cac4" value="304"></center><br>
                <br>
                        <center><input type="submit" value="Rent"></center></td>
                    <td><br><br>
                    <img src="css/images/suv (5).png" alt="" width="220.8" height="165.8" /><br><br>
                    <center><b>Item ID:305</b></center><br>
                    <center><b> BMW y45</b><br>
                     <strong class="price"> USD   135.99$</strong></center><br>
                    <center><input type="checkbox" name="cac5" value="305"></center><br>
                    <br>
                        <center><input type="submit" value="Rent"></center></td>
                     <td><br><br>
                        <img src="css/images/suv (6).png" alt="" width="220.8" height="165.8" /><br><br>
                        <center><b>Item ID:306</b></center><br>   
                        <center><b>Audi RI9</b><br>
                           <strong class="price">  USD   43.99$</strong></center><br>
                        <center><input type="checkbox" name="cac6" value="306"></center><br>
                    <br>
                        <center><input type="submit" value="Rent"></center></td>
                </tr>
               <!-- <tr>
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
