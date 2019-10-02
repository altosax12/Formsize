<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add-drop2.aspx.cs" Inherits="Form.Add_drop2" %>

<!DOCTYPE html>
<link href="Content/easyui.css" rel="stylesheet" />
<script src="scripts/jquery-2.1.0.min.js"></script>
<script src="scripts/jquery.easyui.min.js"></script> <!--"#0000ff" face="Consolas">-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 157px;
            height: 142px;
        }
        .auto-style2 {
            width: 151px;
            height: 129px;
        }
        .auto-style3 {
            width: 136px;
            height: 143px;
        }
        .auto-style4 {
            width: 153px;
            height: 135px;
        }
        .auto-style5 {
            height: 560px;
        }
        .auto-style6 {
            height: 313px;
        }
        .auto-style7 {
            height: 95px;
        }
    </style>
     <script type = "text/javascript">
   		 $('.item').draggable({
                revert: true,
                proxy: 'clone',
                onStartDrag: function () {
                    $(this).draggable('options').cursor = 'not-allowed';
                    $(this).draggable('proxy').css('z-index', 10);
                },
                onStopDrag: function () {
                    $(this).draggable('options').cursor = 'move';
                }
            });
      </script>
       <script type="text/javascript">
           $('.cart').droppable({
                onDragEnter: function (e, source) {
                    $(source).draggable('options').cursor = 'auto';
                },
                onDragLeave: function (e, source) {
                    $(source).draggable('options').cursor = 'not-allowed';
                },
                onDrop: function (e, source) {
                    var name = $(source).find('p:eq(0)').html();
                    var price = $(source).find('p:eq(1)').html();
                    alert("Item dropped!");
                    addProduct(name, parseFloat(price.split('$')[1]));
                }
            });
      
 
        function addProduct(name, price) {
            function add() {
                for (var i = 0; i < data.total; i++) {
                    var row = data.rows[i];
                    if (row.name == name) {
                        row.quantity += 1;
                        return;
                    }
                }
                data.total += 1;
                data.rows.push({
                    name: name,
                    quantity: 1,
                    price: price
                });
            }
            add();
            totalCost += price;
            $('#cartcontent').datagrid('loadData', data);
            $('div.cart .total').html('Total: $' + totalCost);
        }
       </script>
</head>
  
<body>
    <form id="form1" runat="server">
        <div>
            <div class="cart">
			<i class="fa fa-shopping-basket fa-2x"></i>
      <i class="fa fa-caret-down"></ib><r>
			<div class="total-text">
				<p>Items</p>
				<p id="items-basket"></p>
			</div>
		</div>

            <ul class="products">
            <li>
                <%--<a href="#" class="item">--%>
                    <img class="auto-style4" src="Images/Xboxonex.jpg" />
                    <div>
                        <p>Xbox one x</p>
                        <p>Price:$366</p>
                    </div>
                </a>
            </li>
            <li>
                <a href="#" class="item">
                    <img src="Images/Ps4Controller.jpg" class="auto-style3" />
                    <div>
                        <p>Xbox Controller</p>
                        <p>Price:$25</p>
                    </div>
                </a>
            </li>
            <li>
                <a href="#" class="item">
                    <img src="Images/Ps4Controller.jpg" class="auto-style2" />
                    <div>
                        <p>Ps4 Controller</p>
                        <p>Price:$34</p>
                    </div>
                </a>
            </li>
            <li>
                <a href="#" class="item">
                    <img src="Images/Ps4.jpg" class="auto-style1" />
                    <div>
                        <p>PS4</p>
                        <p>Price:$625</p>
                    </div>
                </a>
            </li>
        </ul>
        </div>

        <div class="cart">
            <h1>Shopping Cart</h1>
            <div style="background: #fff">
                <table id="cartcontent"  style="width: 300px; height: auto;">
                    <thead>
                        <tr>
                            <th  id="Name" style="width: 160px">Name</th>
                            <th  id="Quantity" style="width: 40px; text-align: right">Quantity</th>
                            <th   id="Price" style="width: 40px; text-align: right;">Price</th>
                        </tr>
                    </thead>
                </table>
            <p class="auto-style7">Total: $0</p>
            </div>
            <h2 class="auto-style6">Drop here to add to cart</h2>
        </div>

    </form>
</body>
</html>
