<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApplication1.Hotel.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


<style type="text/css">



#nav {
    background-color: #FF1654;
    padding: 5px;
}

ul {
    list-style-type: none;
}

li a {
    color: #F1FAEE;
    font-size: 25px;
    column-width: 5%;
}

li {
    display: inline;
    padding-left: 2px;
    column-width: 20px;
}

a {
    text-decoration: none;
    margin-left: 20px
}

li a:hover {
    background-color: #F3FFBD;
    color: #FF1654;
   
}        .auto-style1 {
            font-size: xx-large;
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style2 {
            height: 49px;
            text-align: right;
            font-size: 25px;
               
        }
        body {
    background: url(images/bg.jpg) no-repeat #FFF;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    background-size: cover;
}
        .tab1{
            
           
            background-color: #FFFFFF;
        }
        .auto-style5 {
            font-size: large;
        }
        
        .ggh {
            margin-top:297px;
  background-color: #ffffff ;
   
 
  border: 1px solid green ;
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


        .auto-style9 {
        height: 389px;
        width: 1257px;
        background-color: #FFFFFF;
        font-size: large;
    }


        .auto-style10 {
        text-align: center;
    }
    .auto-style11 {
        text-align: center;
        width: 319px;
    }
    .auto-style12 {
        text-align: right;
    }
    .auto-style13 {
        text-align: right;
        width: 319px;
    }


        </style>




</head>
<body>
    <nav id="nav">  
    <ul class="auto-style5">  <p class="auto-style1"><strong>Hotel Booking</strong></p>
        <div class="auto-style2">
         <li><a href="Master.aspx">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>  
        
            
            
            
            
            
            <li>       

                <div class="dropdown">
 <p class="dropbtn">&nbsp;Book Now</p>
  <div class="dropdown-content">
    <a href="admin_login.aspx">Admin Login</a>
    <a href="registration.aspx">User Registration</a>
    <a href="login.aspx">User Login</a>
      <a href="master.aspx">&nbsp; Logout</a>
    
  </div>
</div>

            </li>
            




         
        <li><a href="contact.aspx">Contact</a>&nbsp;&nbsp;</li>  
        </div>
    </ul>  
</nav>
   


    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
   


    <table  align="center" class="auto-style9">

        <tr>
            <td class="auto-style10"><strong>Taj
                <p>Phone : 75487528475</p>
                <p>Email : taj@gmail.com</p>
            </td>
            </strong>
            <td class="auto-style11"><strong>Orchid
                </strong>
                <p><strong>Phone : 7410752847</strong></p>
                <p><strong>Email : orchid@gmail.com</strong></p>
            </td>
            <strong>
            <td class="auto-style10"><strong>Hyatt
                </strong>
                <p><strong>Phone : 9658752845</strong></p>
                <p><strong>Email : hyatt@gmail.com</strong></p>
            </td>

        </tr>
         </strong>
         <tr>
            <td class="auto-style10"><strong>Hilton
                </strong>
                <p><strong>Phone : 9658752847</strong></p>
                <p><strong>Email : hilton@gmail.com</strong></p>
            </td>
             <strong>
            <td class="auto-style11"><strong>Marriott
                </strong>
                <p><strong>Phone : 83487528475</strong></p>
                <p><strong>Email : marriott@gmail.com</strong></p>
            </td>
             </strong>
            <td class="auto-style10"><strong>Oberoie Trident
                </strong>
                <p><strong>Phone : 85487528475</strong></p>
                <p><strong>Email : oberoietrident@gmail.com</strong></p>
            </td>

        </tr>
         <strong>
         <tr>
            <td class="auto-style12">
                <div class="auto-style10">
                    <strong>Star Buks
                </div>
                <p class="auto-style10"><strong>Phone : 65847528475</strong></p>
                <p class="auto-style10"><strong>Email : starbuks@gmail.com</strong></strong></p></td>
             <td></td>
            <td class="auto-style13">
                <div class="auto-style10">
                    <strong>Sai Place
                </div>
                <p class="auto-style10"><strong>Phone : 96487528475</strong></p>
                <p class="auto-style10"><strong>Email : sai@gmail.com</strong></strong></strong></p>
            </td>
            

        </tr>




        </table>







</body>
</html>
