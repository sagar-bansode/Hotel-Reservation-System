<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Hotel.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     
    <style>
.wqr{

font-size: 1.5rem;
background-color:ffeda3;
text-decoration: none;
}

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
    
}



a{

text-decoration: none;
}


.a11{

  border: none;
  color: #fff;

  background-color: Blue;
  padding: 10px 20px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;

}
.wo2{
background-color:ffeda3;
}
.llqn{
font-size:1.6rem;
background-color:ffeda3;

}
.wqe{
text-align: center;

}

body{

background-color:	#E8E8E8;

}

        .auto-style1 {
            width: 581px;
            margin-left: 512px;
            margin-top: 50px;
            
        }
        .select{
             background: url(images/bg.jpg) no-repeat center center fixed;
    
    background-size: cover;
        }
        
        .auto-style4 {
            text-align: center;
            color: #FFFFFF;
            font-size: xx-large;
        }

        .auto-style5 {
            height: 120px;
            text-align: right;
        }
        .auto-style6 {
            text-align: right;
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
    <ul class="auto-style5">  <p class="auto-style4"><strong>Hotel Booking</strong></p>
        <div class="auto-style6">
        <li><a href="Master.aspx">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>  
        
            
            
            
            
            
            <li>       

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
            




         
        <li><a href="contact.aspx">Contact</a>&nbsp;&nbsp;&nbsp;</li>  
        </div>
    </ul>  
</nav></body>
    <body class="select">
    <form id="form1" runat="server">
      

<table border="1" bgcolor="FFB26B" height="60%" valign="center" class="auto-style1">
<tr>
<th  class="llqn" colspan="6" ><h1><b> Login </b></h1>
</th></tr>
<tr>
<td class="wqr wqe">
 <b> User Id:</b>

</td>
<td class="wo2">
    <asp:TextBox ID="id" runat="server" style="width: 200px;height: 35px;"></asp:TextBox>

    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="id" ErrorMessage="Enter the User Id"></asp:RequiredFieldValidator>

</td></tr>
<tr>
<td class="wqr wqe">

<b>  Password:</b>
</td>
<td class="wo2">
    <asp:TextBox ID="password1" runat="server" TextMode="Password" style="width: 200px;height: 35px;"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password1" ErrorMessage="Enter the Password"></asp:RequiredFieldValidator>
</td></tr>
<th class="wo2" colspan="2">

<center>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Login" class="style4 a11" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    </center><br>
    <span class="wqr">Not yet a member ? <a href="Registration.aspx">Registration</a></span>

</table>

</div>

    </form>
    </form>
</body>
</html>
