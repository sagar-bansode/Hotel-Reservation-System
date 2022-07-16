<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication1.Hotel.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

<style type="text/css">

body{

background-color:	#E8E8E8;

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





.zsk{
font-size:1.5rem;

}

.hnext{

font-size:1.5rem;
background-color:ffeda3;
text-align:center;
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

.head{



background-color: ffeda3; 
}
.qq{

color: blue;
}

    .auto-style3 {
        font-size: xx-large;
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
        }   text-align: right;
    
    .tab1{
      
            width: 581px;
            margin-left: 512px;
            margin-top: 50px;
             
    }
    .select{
             background: url(images/bg.jpg) no-repeat center center fixed;
    
    background-size: cover;
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
        <div class="auto-style5">
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
       
<table border="1" bgcolor="FFB26B" width="30%" height="70%" align="center" >
<tr>
<th class="head" colspan="6" ><h1><b> Registration</b></h1>
</th></tr>
<tr>
<td class="hnext">
 <b> User Id:</b>

</td>
<td class="head">

    <asp:TextBox ID="id" runat="server" style="width:200px;height: 35px;"></asp:TextBox>
   
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="id" ErrorMessage="Enter User Id" ForeColor="Red"></asp:RequiredFieldValidator>
   
</td></tr>
<tr>
<td class="hnext">
 <b> Name:</b>

</td>
<td class="head">
 <asp:TextBox ID="name" runat="server" style="width:200px;height: 35px;"></asp:TextBox>   
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="name" ErrorMessage="Enter the Name" ForeColor="Red"></asp:RequiredFieldValidator>
</td></tr>

<tr>
<td class="hnext">
<b>  Password:</b>
</td>
<td class="head">
 <asp:TextBox ID="password" runat="server" TextMode="Password" style="width:200px;height: 35px;"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="Enter the Password" ForeColor="Red"></asp:RequiredFieldValidator>
</td></tr>

<tr>
<td class="hnext">
<b>Gmail :</b>
</td>
<td class="head">
 <asp:TextBox ID="gmail" runat="server" style="width:200px;height: 35px;"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="gmail" ErrorMessage="Enter  the Gmail" ForeColor="Red"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td class="hnext">
 <b>Phone No :</b></td>
<td class="head">
 <asp:TextBox ID="phone" runat="server" style="width:200px;height: 35px;"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="phone" ErrorMessage="Enter the phone Number" ForeColor="Red"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td class="hnext">
<b>  Address:</b>
</td>
<td class="head">
 <asp:TextBox ID="address" runat="server" style="width:200px;height: 35px;"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="address" ErrorMessage="Enter your Address.." ForeColor="Aqua"></asp:RequiredFieldValidator>
</td></tr>
<th class="head" colspan="2">

   

    <center><asp:Button ID="Button1" runat="server" Text="Registration" class="style4 a11" OnClick="Button1_Click1" /></center>


<span class="zsk">Not yet a member ? <a href="Login.aspx">Login</a></span>



    
</th>

</tr>
</table>
    
    </form>

</body>
</html>
