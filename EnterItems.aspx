<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EnterItems.aspx.cs" Inherits="EnterItemsaspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.4.3/jquery.mobile-1.4.3.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=true"></script>
	
	
    <script language="javascript" type="text/javascript">
        function store() {
            var data = document.getElementById("TextArea1").value;

            localStorage.setItem("items_list", localStorage.getItem("cname") + data);
            //alert(localStorage.getItem("items_list"));
            document.getElementById("d1").innerHTML = "Item List is Successfully Stored";
        }
        
    </script>
        <style>
        .text-glow {
            font-size: 2em;
            font-color:black;
            color: black;
            font-family: Arial;
        }

            .text-glow:hover,
            .text-glow:focus .text-glow:active {
                -webkit-stroke-width: 3px;
                -webkit-stroke-color: #FFFFFF;
                -webkit-fill-color: #FFFFFF;
                text-shadow: 1px 0px 20px Green;
                -webkit-transition: width 0.3s; /*Safari & Chrome*/
                transition: width 0.3s;
                -moz-transition: width 0.3s; /* Firefox 4 */
                -o-transition: width 0.3s; /* Opera */
            }

            .text-glow a {
                -webkit-transition: all 0.3s ease-in; /*Safari & Chrome*/
                transition: all 0.3s ease-in;
                -moz-transition: all 0.3s ease-in; /* Firefox 4 */
                -o-transition: all 0.3s ease-in; /* Opera */
                text-decoration: none;
                color: white;
            }
           
           a {
    float: left;
    width: 5.5em;
    text-decoration: none;
    color: white;
    background-color: purple;
    padding: 0.2em 0.6em;
    border-right: 1px solid white;
}
           li {
    display: inline;

}
           body{
               background-color:lightblue;
           }
   
    </style>
</head>
<body>
    <div class="text-glow">
        
           
            <h1 color="black" align="center"> Welcome To Groccery Store</h1>
   <font size="6">
            <ul>

                <li>
                    <a href="/Website5/GetStores.aspx">NearStores </a>
                </li>
                <li>
                    <a href="/WebSite5/EnterItems.aspx"><font color="yellow">ItemsList</font> </a>
                </li>
                <li>
                    <a href="/WebSite5/GetDirections_aspx.aspx">Directions</a>
                </li>
                <li>
                    <a href="/WebSite5/GetInfoOfItems.aspx">GroceryInfo</a>
                </li>
                <li>
                    <a href="/WebSite5/upcsearch.aspx">UPCSSearch</a>
                </li>
                <li>
                    <a href="/WebSite5/SearchItems.aspx">ItemsSearch</a>
                </li>

            </ul>
        </font>
            
</div>
    <form id="form1" runat="server">
    <p>
        &nbsp;</p>
</br>

    <h1 align="center"> Enter List Of Items To Send To Store</h1>
    <p align="center"><asp:Label ID="Label1" runat="server" Text="Enter List Of Items"></asp:Label>
    <textarea id="TextArea1" cols="20" name="S1" rows="10" onclick="return TextArea1_onclick()"></textarea></form>
    <p align="center">
    <button onclick="store()" > Store Items</button>
    
    </p>
    
    <div id="d1"> </div>
</p>
</body>
</html>
