<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication1.Hotel.admin" %>

<!DOCTYPE html>

<html>
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
    
}



a{

text-decoration: none;
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
  padding: 10px 16px;
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









.a11{

  border: none;
  color: #fff;

  background-color: Blue;
  padding: 10px 20px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;

}

        .auto-style1 {
            font-size: xx-large;
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style6 {
          height: 48px;
            text-align: right;
        }
       body {
    background: url(images/bg.jpg) no-repeat #FFF;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    background-size: cover;
}

                 
        .tablew{
            background-color:#FF8A80;
            margin-top: 50px;
        }
        .auto-style5 {
            font-size: large;
        }
        

           @keyframes blink{
            50%  { opacity: 0
            }
            
        }
        .auto-style10 {
            color: #00FFFF;
            text-align: center;
            font-size: x-large;
            animation: blink 1s linear
            infinite;
        }
        .auto-style11 {
            font-weight: bold;
        }
        .auto-style12 {
            margin-left: 38px;
            margin-top: 18px;
        }
        .auto-style14 {
            background-color: #FF8A80;
            margin-top: 8px;
        }
        .auto-style15 {
            height: 44px;
        }
        .auto-style16 {
            height: 15px;
        }
        </style>
</head>
<body>
    <nav id="nav">  
    <ul class="auto-style5">  <p class="auto-style1"><strong>Hotel Booking</strong></p>
        <div class="auto-style6">
        <li><a href="Master.aspx">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>  
        
            
            
            
            
            
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
</nav>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
        <table  align="center" class="auto-style14">
            <tr><td class="auto-style1">
                <strong><span class="auto-style10"> Hello! Admin<img alt="🙂" src="data:image/png;base64,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" class="auto-style16" /></span></strong></td></tr>
        <tr><td>
            <span class="auto-style5"><strong>User Id :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox10" runat="server" CssClass="auto-style5" Height="29px" Width="155px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            
             </strong> 
            
             </span> 
            
             <strong> 
            
             <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="155px" CssClass="auto-style5"></asp:TextBox> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style5">Suite : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="auto-style5" Height="35px" Width="159px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="0">---SELECT---</asp:ListItem>
                <asp:ListItem Value="2500">Single Room</asp:ListItem>
                <asp:ListItem Value="5000">Primiun Single Room</asp:ListItem>
                <asp:ListItem Value="6500">Double Room</asp:ListItem>
                <asp:ListItem Value="9000">Primium Double Room</asp:ListItem>
                <asp:ListItem Value="10000">Deluxe Suite</asp:ListItem>
                <asp:ListItem Value="12000">Penthouse</asp:ListItem>
                <asp:ListItem Value="12500">Relax View Room</asp:ListItem>
            </asp:DropDownList>
            <span class="auto-style5">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</span></strong></td> </tr>

            <tr><td> 
                <strong>
                <span class="auto-style5">&nbsp;Per Day Rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="155px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No. of Person &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="auto-style5" Height="35px" Width="159px">
                    <asp:ListItem>---SELECT---</asp:ListItem>
                    <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem Value="2"></asp:ListItem>
                    <asp:ListItem Value="3"></asp:ListItem>
                    <asp:ListItem Value="4"></asp:ListItem>
                    <asp:ListItem Value="5"></asp:ListItem>
                    <asp:ListItem Value="6"></asp:ListItem>
                    <asp:ListItem Value="7"></asp:ListItem>
                    <asp:ListItem Value="8"></asp:ListItem>
                    <asp:ListItem Value="9"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No. of Room &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" CssClass="auto-style5" Height="35px" Width="159px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                    <asp:ListItem>---SELECT---</asp:ListItem>
                    <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem Value="2"></asp:ListItem>
                    <asp:ListItem Value="3"></asp:ListItem>
                    <asp:ListItem Value="4"></asp:ListItem>
                    <asp:ListItem Value="5"></asp:ListItem>
                    <asp:ListItem Value="6"></asp:ListItem>
                    <asp:ListItem Value="7"></asp:ListItem>
                    <asp:ListItem Value="8"></asp:ListItem>
                    <asp:ListItem Value="9"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong> 
                </td> </tr>

            <tr><td>
            
            
                    
                    <strong>
            
            
                    
                    <span class="auto-style5">Check In Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style5" Height="29px" type="date" Width="155px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Check Out Date&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style5" Height="29px" type="date" Width="155px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    </span>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                      </strong>

                                      </td> 
            </tr>


            <tr><td><span class="auto-style5"><strong>Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong>
                </span>
                <strong>
                <asp:TextBox ID="TextBox5" runat="server" Height="29px" Width="155px" CssClass="auto-style5"></asp:TextBox>
                <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mobile No. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </span>
                 <asp:TextBox ID="TextBox6" runat="server" Height="29px" Width="152px" CssClass="auto-style5" MaxLength="10"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong>
                </td></tr>

            <tr><td class="auto-style15"><span class="auto-style5"><strong>Suite Type &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong>
                </span>
                <strong>
                <asp:TextBox ID="TextBox7" runat="server" Height="29px" Width="155px" CssClass="auto-style5"></asp:TextBox>
                <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Discount &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</span><asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" Height="35px"  Width="160px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                    <asp:ListItem Value="0">---SELECT---</asp:ListItem>
                    <asp:ListItem Value="5">5%</asp:ListItem>
                    <asp:ListItem Value="10">10%</asp:ListItem>
                    <asp:ListItem Value="15">15%</asp:ListItem>
                    <asp:ListItem Value="25">25%</asp:ListItem>
                    <asp:ListItem Value="30">30%</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                </strong>
                </td></tr>


             <tr><td><span class="auto-style5"><strong>Address &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong>
                </span>
                 <strong>
                <asp:TextBox ID="TextBox8" runat="server" Height="29px" Width="155px" CssClass="auto-style5"></asp:TextBox>
                 <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Amount &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </span>
                 <asp:TextBox ID="TextBox9" runat="server" Height="29px" Width="155px" CssClass="auto-style5"></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" CssClass="auto-style11" Text="ADD" Width="81px" OnClick="Button1_Click" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Text="Edit" Width="82px" OnClick="Button2_Click" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Height="29px" Text="Delete" Width="82px" OnClick="Button3_Click" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </strong>
                </td></tr>
            </asp:Panel>
        <br>
             
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style12" ForeColor="Black" GridLines="Horizontal" Height="105px" Width="1141px">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
 

    </form>
      
</body>
</html>
