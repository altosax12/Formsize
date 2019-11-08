<%@ MasterPageFile="~/Site.Master"  Language="C#"  AutoEventWireup="true" CodeBehind="adddrop3.aspx.cs" Inherits="Form.adddrop3"  %>



<asp:Content  ContentPlaceHolderID="Header" ID ="Header" runat="server">

    <style type="text/css">
        .auto-style1 {
            height: 164px;
        }
    </style>


 
       
            <script type = "text/javascript" src = https://use.fontawesome.com/1fa2e54b22.js> </script>
            <script type ="text/javascript" src =" https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

            <script type ="text/javascript">
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
        </asp:Content>

     <asp:content ID="content2" ContentPlaceHolderID ="Body" runat="server">

        <link rel="stylesheet" href="~/site/css/site.css" />
         
    <div class="heading" style="background-image: url('site/images/back2.jpg'); height: 58px;" >
			<h1>Shopping Cart</h1>
		</div>
          
		<div class="cart">
			<i class="fa fa-shopping-basket fa-2x"></i>
      <i class="fa fa-caret-down"></i><br/>
			<div class="total-text">
				<p>Items</p>
				<p id="items-basket"></p>
			</div>
		</div>

		<div id="cart-items">
			<ol id="list-item">
			</ol>

			<div class="total-text">
					<p>Total: </p>
			<img src="air.jpg" style="height: 149px; width: 265px; margin-top: 67px"><p id="total-price"></p>
			</div>
		</div>





	<div class="items-container" style="background-image: url('site/images/back2.jpg')" >
		<!-- Item 1 -->
		<div class="item">
            <img alt="" class="auto-style1" src="Images/Ps4Controller.jpg" />
			&nbsp;<div class="overflow">
				<i class="fa fa-cart-plus fa-5x" id="basket"></i>
			</div>
			<div class="item-detail">
				<h4>Ps4Controller </h4>
				<div class="prices">
					<p class="price">1899</p>
					<p>$</p>
				</div>
			</div>
		</div>

		<!-- Item 2 -->
		<div class="item">
            <img alt="" class="auto-style1" src="Images/Xboxonex.jpg" />
			&nbsp;<div class="overflow">
				<i class="fa fa-cart-plus fa-5x"></i>
			</div>
			<div class="item-detail">
				<h4>Puma-Predator Cleats</h4>
				<div class="prices">
					<p class="price">149</p>
					<p>$</p>
				</div>
			</div>
		</div>

		<!-- Item 3 -->
		<div class="item">
			<img alt="" class="auto-style1" src="Images/Ps4.jpg" />
			<div class="overflow">
				<i class="fa fa-cart-plus fa-5x"></i>
			</div>
			<div class="item-detail">
				<h4>ps4</h4>
				<div class="prices">
					<p class="price">556445465</p>
					<p>$</p>
				</div>
			</div>
		</div>

		<!-- Item 4 -->
		<div class="item">
           <img  alt="" class="auto-style1" src="Images/Xcontroller.png" /> 
			<div class="overflow">
				<i class="fa fa-cart-plus fa-5x"></i>
			</div>
			<div class="item-detail">
				<h4>UA- HOVR PHANTO N SNR</h4>
				<div class="prices">
					<p class="price">169</p>
					<p>$</p>
				</div>
			</div>
		</div>



</asp:Content>
