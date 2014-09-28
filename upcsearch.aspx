<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upcsearch.aspx.cs" Inherits="upcsearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("button").click(function () {
            // while(1) {
            $.ajax(
	{

	    url: "http://www.upcdatabase.org/api/json/77abc8d0d2e94f428095a46b1095ac1b/" + document.getElementById("upccode").value,

	    success: function (result) {
	        $("#div1").html("Success in analyzing barcode");
	         alert(result);
	    },

	    error: function (result) {
	        $("#div1").html("failure in analyzing barcode");
	         alert(result);

	    },

	    cache: false
	});


        });
    });
</script>

</head>
<body>
    <div class="text-glow">
        
           
            <h1 color="black" align="center"> Welcome To Groccery Store</h1>
        </div>
    <font size="6">
            <ul>

                <li>
                    <a href="/Website5/GetStores.aspx">NearStores </a>
                </li>
                <li>
                    <a href="/WebSite5/EnterItems.aspx">ItemsList </a>
                </li>
                <li>
                    <a href="/WebSite5/GetDirections_aspx.aspx">Directions</a>
                </li>
                <li>
                    <a href="/WebSite5/GetInfoOfItems.aspx">GroceryInfo</a>
                </li>
                <li>
                    <a href="/WebSite5/upcsearch.aspx"><font color="yellow">UPCSSearch</font></a>
                </li>
                <li>
                    <a href="/WebSite5/SearchItems.aspx">ItemsSearch</a>
                </li>

            </ul>
        </font>
    <form id="form1" runat="server">
     <h2> UPC Code Search</h2>
    <div>
    <label> Enter UPC Code:</label>
    <input type="text" id="upccode" /> <br />

    <button>Submit</button>

    <div id="div1"></div>
    </div>
   
    </form>
</body>
</html>