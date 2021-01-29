 
 <?php include('partials-front/menu.php'); ?>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
html {
  box-sizing: border-box;
}
h2{
    margin: 0 auto;
    margin-top: 20px;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}
img{
    width: 100%;
    height: 50%;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}
</style>
</head>
<body>

<h2 style="text-align: center; color:#ff6b81 ; ">3CE Team</h2>
<p></p>
<br>

<div class="row">
  <div class="column">
    <div class="card">
      <img src="images/team/1.jpg" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Ho Thi Thanh Binh</h2></br>
        <p>httbinh.17ce@vku.udn.vn</p>
</br>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="images/team/2.jpg" alt="Mike">
      <div class="container">
        <h2>Ho Nguyen Hoang Vy</h2></br>
        <p>hnhvy.17ce@vku.udn.vn</p>
</br>
       
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="images/team/3.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>Nguyen Thi Nga</h2></br>
        <p>ntnga.17ce@vku.udn.vn</p>
</br>
      </div>
    </div>
  </div>
</div>

</body>
</html>
