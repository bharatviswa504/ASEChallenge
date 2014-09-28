<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Displaying text directions with <code>setPanel()</code></title>
    <style>
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
      #panel {
        position: bottom;
        top: 0px;
        bottom:10px;
        left: 50%;
        margin-left: -180px;
        z-index: 1;
        background-color: #fff;
        padding: 1px;
        border: 1px solid #999;
      }
    </style>
    <style>
      #directions-panel {
        height: 100%;
        float: right;
        width: 390px;
        overflow: auto;
      }

      #map-canvas {
        margin-right: 400px;
      }

      #control {
        background: #fff;
        padding: 5px;
        font-size: 14px;
        font-family: Arial;
        border: 1px solid #ccc;
        box-shadow: 0 2px 2px rgba(33, 33, 33, 0.4);
        display: none;
      }

      @media print {
        #map-canvas {
          height: 500px;
          margin: 0;
        }

        #directions-panel {
          float: none;
          width: auto;
        }
      }
    </style>
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
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
    <script>
        var directionsDisplay;
        var directionsService = new google.maps.DirectionsService();

        function initialize() {
            directionsDisplay = new google.maps.DirectionsRenderer();
            var mapOptions = {
                zoom: 7,
                center: new google.maps.LatLng(41.850033, -87.6500523)
            };
            var map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);
            directionsDisplay.setMap(map);
            directionsDisplay.setPanel(document.getElementById('directions-panel'));

            var control = document.getElementById('control');
            control.style.display = 'block';
            map.controls[google.maps.ControlPosition.TOP_CENTER].push(control);
        }

        function calcRoute() {
            var start = document.getElementById('start').value;
            var end = document.getElementById('end').value;
            var request = {
                origin: start,
                destination: end,
                travelMode: google.maps.TravelMode.DRIVING
            };
            directionsService.route(request, function (response, status) {
                if (status == google.maps.DirectionsStatus.OK) {
                    directionsDisplay.setDirections(response);
                }
            });
        }

        google.maps.event.addDomListener(window, 'load', initialize);

    </script>
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
                    <a href="/WebSite5/EnterItems.aspx">ItemsList </a>
                </li>
                <li>
                    <a href="/WebSite5/GetDirections_aspx.aspx"><font color="yellow">Directions</font></a>
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
 <br />
      <br />
      </br>
       <h1 align="center">Get Directions Here: </h1>
    <div id="control">
      <strong>Start:</strong>
      <input type="text" id="start" />
      <strong>End:</strong>
      <input type="text" id="end" />
      <button onclick="calcRoute()">Get Directions</button>
     
    </div>
    <div id="directions-panel"></div>
    <div id="map-canvas"></div>
  </body>
</html>