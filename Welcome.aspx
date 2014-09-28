<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">

        function store() {
            var customer = document.getElementById("uname").value;
            localStorage.setItem("cname", customer);
        }

    </script>
    <style>
body {
   background-repeat:repeat-x;
    background-color:lightblue;
    background-origin:content-box;
}
ul {
    float: left;
    width: 80%;
    padding: 0;
    margin: 0;
    list-style-type: square;
}

a {
    float: left;
    width: 16em;
    text-decoration: none;
    color: white;
    background-color: purple;
    padding: 0.2em 0.6em;
    border-right: 1px solid white;
}

a:hover {
    background-color: fuchsia;
}

li {
    display: inline;
}
form {
    position: center;
    left: 100px;
    top: 100px;
   
}

</style>
</head>
<body background="images/photo.jpg">
    
    <form id="form1" runat="server">
    <div>
        <font type="italic" color="white"  size="6">
    <h1 align="center" > Welcome To Groccery Store</h1>
    <p align="center">
        <label>
         Enter User Name:</label></align>
    <input type="text" align="center" id="uname"/>
     <button  onclick="store()"> Submit UserName </button> <br />
        <a  href="/Website5/HomePage.htm"> Click to Enter into WebSite</a></p>


    <p><br /> <br>Please Enter UserName And Enter into Website</br></p>
        <marquee>
          <font color="black" size="6" >One Stop For All Grocerys </font> 
        </marquee>
    </div>
    </form>
    
</body>
</html>
