<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GetStores.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<meta name="script" http-equiv="Content-Script-Type" content="text/javascript" />
	<meta name="script" http-equiv="Content-Style-Type" content="text/css" />
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script language="javascript" type="text/javascript">
        var map;
        var p1;
        var map;
        var directionsDisplay;
        var directionsService = new google.maps.DirectionsService();


        function initialize() {
            directionsDisplay = new google.maps.DirectionsRenderer();
            var myLatlng1 = new google.maps.LatLng(0, 0);

            var mapOptions = {
                zoom: 6,
                center: myLatlng1,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
             map = new google.maps.Map(document.getElementById('map'),
     mapOptions);
            
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(function (position) {
                        initialLocation = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
                        p1 = position.coords.latitude;
                        p2 = position.coords.longitude;
                        map.setCenter(initialLocation);
                    });
                }
             
            }


            function calcRoute() {
                directionsDisplay = new google.maps.DirectionsRenderer();
                var latlng = new google.maps.LatLng(p1, p2);
               // alert(p1, p2);
                var myOptions =
                 {
                           zoom: 8,
                       center: latlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
              };
                var map = new google.maps.Map(document.getElementById("map"), myOptions);

                directionsDisplay.setMap(map);
               


                var start = p1 +"," +p2;
             //  alert(start);
                var end = document.getElementById('dest').value;
                var request = {
                    origin: start,
                    destination: end,
                    travelMode: google.maps.DirectionsTravelMode.DRIVING
                };
                directionsService.route(request, function (response, status) {
                    if (status == google.maps.DirectionsStatus.OK) {
                        directionsDisplay.setDirections(response);
                    }
                });
            }

            window.onload = initialize;

           

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
                    <a href="/Website5/GetStores.aspx"><font color="yellow">NearStores</font> </a>
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
                    <a href="/WebSite5/upcsearch.aspx">UPCSSearch</a>
                </li>
                <li>
                    <a href="/WebSite5/SearchItems.aspx">ItemsSearch</a>
                </li>

            </ul>
        </font>
</div>
    <form id="form1" runat="server">
    <div>
<br />
<br />
        </br>


        Enter Zip Code:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
    </div>
    &nbsp;<asp:ListBox ID="ListBox1" runat="server" 
        onselectedindexchanged="ListBox1_SelectedIndexChanged" Width="234px"></asp:ListBox>
    <p>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit To Get Stores" />
    </p>
    <p>
        <input type="text" id="dest" placeholder="Copy Dest From above Store Locations" />
        <button id="getmap" onclick="calcRoute()">GetMap</button>
    </p>
     <div id="map" style="width: 500px; height: 400px;"></div>
     <div id="dpanel" style="width: 200px; height: 200px;"></div>
    </form>
    </body>
</html>
