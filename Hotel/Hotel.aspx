<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hotel.aspx.cs" Inherits="WebApplication1.hi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


<!-- Style --> <link rel="stylesheet" href="ho.css" type="text/css" media="all">




    <style type="text/css">
 
  #nav {
    background-color: #FF1654;
    padding: 5px;
}

ul {
    list-style-type: none;
}

.li1 .a1 {
    color: #F1FAEE;
    font-size: 25px;
    column-width: 5%;
}

.li1 {
    display: inline;
    padding-left: 2px;
    column-width: 20px;
}

.a1 {
    text-decoration: none;
    margin-left: 20px
}

.li1 .a1:hover {
    background-color: #F3FFBD;
    color: #FF1654;
    
}

        
        .auto-style6 {
            width: 31%;
            margin: 0 auto;
             height: 120px;
            text-align: right;
        }
        .auto-style7 {
            width: 85%;
            font-size: x-large;
        }

        @keyframes blink{
            50%  { opacity: 0
            }
            
        }
        .auto-style9 {
            text-align: center;
            font-size: xx-large;
            color: #FFFFFF;
            animation: blink 1s linear
            infinite;
        }
        .amt {
             text-align: center;
            color: #FFFFFF;
            font-size: xx-large;
            animation:blink;
           
        }
        .auto-style11 {
            height: 51px;
            text-align: right;
        }

        
        .auto-style12 {
            color: #FF00FF;
        }
        .auto-style13 {
            color: #FFFF00;
        }

        
        .auto-style14 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style15 {
            font-size: x-large;
        }

       

        

.dropbtn {
  background-color: #FF1654;
  color: white;
  padding: 0px;
  font-size: 26px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #FF1654;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #F3FFBD;
                           
}

.dropdown:hover .dropdown-content {display: block;
                                   
}

.dropdown:hover .dropbtn {background-color: #F3FFBD;
   color:#FF1654;                      
}

       

    </style>




</head>
<body>

	 <nav id="nav">  
    <ul class="auto-style5">  <p class="amt"><strong>Hotel Booking</strong></p>
        <div class="auto-style11">
        <li class="li1"><a class="a1" href="Master.aspx">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>  
        
            
            
            
            
            
            <li class="li1">       

                <div class="dropdown">
  <p class="dropbtn">Book Now</p>
  <div class="dropdown-content">
 <a href="admin_login.aspx">Admin Login</a>
    <a href="registration.aspx">User Registration</a>
    <a href="login.aspx">User Login</a>
      <a href="master.aspx">&nbsp; Logout</a>
    
  </div>
</div>

            </li>
            




         
        <li class="li1"><a class="a1" href="contact.aspx">Contact</a>&nbsp;&nbsp;&nbsp;</li>  
        </div>
    </ul>  
</nav>
    <form id="form1" runat="server">
       <div>
      

	<div class="auto-style6">

		<ul class="menu">
				
						<ul class="">
                            <li><p class="auto-style9"><strong>⭐<span class="auto-style12">Choose</span> <span class="auto-style13">Hotel</span>⭐</strong></p></li>
							<li class="auto-style14"><a href="booking.aspx" class="auto-style15"><strong>TAJ</strong></a></li>
							<li class="auto-style14" ><a href="booking.aspx" class="auto-style15"><strong>ORCHID</strong></a></li>
							<li class="auto-style14"><a href="booking.aspx" class="auto-style15"><strong>HYATT</strong></a></li>
							<li class="auto-style14" ><a href="booking.aspx" class="auto-style15"><strong>HILTON</strong></a></li>
							<li class="auto-style14" ><a href="booking.aspx" class="auto-style7"><strong>MARRIOTT</strong></a></li>
							<li class="auto-style14" ><a href="booking.aspx" class="auto-style15"><strong>OBEROI TRIDENT</strong></a></li>
							<li class="auto-style14" ><a href="booking.aspx" class="auto-style15"><strong>STAR BUKS</strong></a></li>
							<li ><span class="auto-style14"><a href="booking.aspx" class="auto-style15"> <strong>SAI PLACE</strong></a></span></li>
							
							</table>
						</ul>
				</li>
    	
		
	</div>


    </div>

    </form>
</body>
</html>
