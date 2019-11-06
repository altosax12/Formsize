<%@ Page MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true"  CodeBehind="product.aspx.cs" Inherits="Form.product" %>






 

	  <asp:Content ContentPlaceHolderID="Header" ID ="Header" runat="server">
          <script type = "text/javascript">
                $(function(){

		$("#cart-items").slideUp();
		$(".cart").on("click", function () {
		$("#cart-items").slideToggle();
		});

		$("#items-basket").text("(" + ($("#list-item").children().length) + ")");

		
		$(".item").on("click", function () {
         $("#cart-items").slideDown();
     setTimeout(function(){
        $("#cart-items").slideUp();
     }, 2000)
			//add items to basket
			$(this).each(function () {
				var name = $(this).children(".item-detail").children("h4").text();
				var remove = "<button class='remove'> X </button>";
				var cena = "<span class='eachPrice'>" + (parseFloat($(this).children(".item-detail").children(".prices").children(".price").text())) + "</span>";
				$("#list-item").append("<li>" + name + "&#09; - &#09;" + cena + "$" + remove + "</li>");

				//number of items in basket
				$("#items-basket").text("(" + ($("#list-item").children().length) + ")");
				$("#items-basket").text();
        
	        //calculate total price
	        var totalPrice = 0;
		        $(".eachPrice").each(function (){ 
		          var cenaEach = parseFloat($(this).text());
		          totalPrice+=cenaEach;
		        });
		        $("#total-price").text(totalPrice + "$");
			});

			//remove items from basket
			$(".remove").on("click", function () {
				$(this).parent().remove();

		        var totalPrice = 0;
		        $(".eachPrice").each(function (){ 
		          var cenaEach = parseFloat($(this).text());
		          totalPrice+=cenaEach;
		        });
		        $("#total-price").text(totalPrice + "$");
				$("#items-basket").text("(" + ($("#list-item").children().length) + ")");
			});
		});
})
      </script>
       <style type="text/css">

*{
	margin: 0px;
	padding: 0px;
}

body{
	background-image: url('https://lh3.googleusercontent.com/-QEYT2a1VA-s/V9IhCZNMfKI/AAAAAAAAAuY/kuuJ3LD4L3QG_0EwaNFhIalJPOD-C7opQCJoC/w1600-h900/black%2Band%2Bgreen%2Bshards.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}

img{
	width: 100%;
	height: 200px;
}

.fa{
  cursor: pointer;
}

.header{
	width: 100%;
	overflow: auto;
	background-color: #31353d;
	color: #00a000;
	clear: both;
	padding: 20px 50px;
	box-sizing: border-box;	
}

.heading{
	float: left;
}

.cart{
	float: right;
	text-align: center;
}

.total-text p{
	display: inline;
}

#cart-items{
	position: absolute;
	right: 20px;
	top: 10%;
	background-color: #31353d;
	margin-top: 50px;
	padding: 50px 40px;
	z-index: 999;
}

.item{
	position: relative;
	float: left;
	margin: 1%;
	border: 1px solid #00a000;
	width: 30%;
	text-align: center;
	background-color: rgba(0, 0, 0, 0.3);
}

.item-detail h4{
	color: #fff;
}

.item-detail p{
	color: #00a000;
	font-weight: bold;
}

.prices p{
	display: inline;
}

.overflow{
	background-color: rgba(0, 0, 0, 0.5);
	color: #00a000;
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 80%;
	opacity: 0;
	transition: opacity 1s;
}

.overflow i{
	position: absolute;
    top: 20%;
    left: 40%;
}

.overflow:hover{
	opacity: 1;
}

.price-display{
	float: right;
}

.remove{
	background-color: #00a000;
	border-color:  #00a000;
	border-radius: 3px;
	color: #fff;
	margin: 0px 5px;
	padding: 0px 2px;
	float: right;
}

#list-item li{
	margin: 10px 0px;
}
           .auto-style1 {
               width: 97%;
               overflow: auto;
               background-color: #31353d;
               color: #00a000;
               clear: both;
               padding: 20px 50px;
               box-sizing: border-box;
           }
           .auto-style2 {
               height: 573px;
               width: 1397px;
           }
           .auto-style3 {
               right: 20px;
               top: 10%;
               width: 61px;
           }
       </style>
</asp:Content>

  

    
         <asp:Content ContentPlaceHolderID="Body" ID ="Body" runat="server">

  <div class="auto-style1">
		<div class="heading">
			<h1>Shopping Cart</h1>
		</div>
		<div class="cart">
			<i class="fa fa-shopping-basket fa-2x"></i>
      <i class="fa fa-caret-down"></i>
            <br/>
			<div class="total-text">
				<p>Items</p>
				<p id="items-basket"></p>
			</div>
		</div>



	</div>
    <div>
	<div class="auto-style2">
		<!-- Item 1 -->
		<div class="item">
			<img src="https://assets.razerzone.com/eeimages/products/26727/rzrblade14-04__store_gallery.png">
			<div class="overflow">
				<i class="fa fa-cart-plus fa-5x" id="basket"></i>
			</div>
			<div class="item-detail">
				<h4>RAZER BLADE - FULL HD</h4>
				<div class="prices">
					<p class="price">1899</p>
					<p>$</p>
				</div>
			</div>
		</div>

		<!-- Item 2 -->
		<div class="item">
			<img src="https://assets.razerzone.com/eeimages/products/752/razer-ouroboros-gallery-3__store_gallery.png">
			<div class="overflow">
				<i class="fa fa-cart-plus fa-5x"></i>
			</div>
			<div class="item-detail">
				<h4>RAZER OUROBOROS</h4>
				<div class="prices">
					<p class="price">149</p>
					<p>$</p>
				</div>
			</div>
		</div>

		<!-- Item 3 -->
		<div class="item">
			<img src="https://assets.razerzone.com/eeimages/products/5890/razer-blackshark-gallery-4__store_gallery.png">
			<div class="overflow">
				<i class="fa fa-cart-plus fa-5x"></i>
			</div>
			<div class="item-detail">
				<h4>RAZER BLACKSHARK</h4>
				<div class="prices">
					<p class="price">1299</p>
					<p>$</p>
				</div>
			</div>
		</div>

		<!-- Item 4 -->
		<div class="item">
			<img src="https://assets.razerzone.com/eeimages/products/26600/razer-blackwidow-chroma-v2-gallery-04-wristrest__store_gallery.png">
			<div class="overflow">
				<i class="fa fa-cart-plus fa-5x"></i>
			</div>
			<div class="item-detail">
				<h4>RAZER BLACKWIDOW CHROMA</h4>
				<div class="prices">
					<p class="price">169</p>
					<p>$</p>
				</div>
			</div>
		</div>

		<!-- Item 5 -->
		<div class="item">
			<img src="https://assets.razerzone.com/eeimages/products/21936/fireflycloth-gallery-5__store_gallery.png">
			<div class="overflow">
				<i class="fa fa-cart-plus fa-5x"></i>
			</div>
			<div class="item-detail">
				<h4>RAZER FIREFLY CLOTH</h4>
				<div class="prices">
					<p class="price">59</p>
					<p>$</p>
				</div>
			</div>
		</div>

		<!-- Item 6 -->
		<div class="item">
			<img src="https://assets.razerzone.com/eeimages/products/23901/nabu-watch-std-01__store_gallery.png">
			<div class="overflow">
				<i class="fa fa-cart-plus fa-5x"></i>
			</div>
			<div class="item-detail">
				<h4>RAZER NABU WATCH</h4>
				<div class="prices">
					<p class="price">149</p>
					<p>$</p>
				</div>
			</div>
		</div>

		<div id="cart-items" class="auto-style3">
			<ol id="list-item">
			</ol>

			<div class="total-text">
					<p>Total: </p>
					<p id="total-price"></p>
			</div>
		</div>



	</div>
</div>
</asp:Content>



