﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking758.aspx.cs" Inherits="WebApplication1.Hotel.Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Booking</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Hotel Booking Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //For-Mobile-Apps -->

<!-- Style --> <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/jquery-ui.css" />
<!-- JavaScript --> <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
           <div>
    
    
    <h1 class="book">HOTEL BOOKING </h1>

<div class="reg">

		<h1>Book Your Suite!</h1>
    
		
		
		
		<div class="members">
			    <div class="adult">
			        	
				<h2>No. of Adults</h2>
					<div class="dropdown-button">  
                        <asp:DropDownList ID="DropDownList1" class="dropdown" runat="server" tabindex="10" data-settings='{"wrapperClass":"flat"}'>
                        <asp:ListItem Value="">0</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                        </asp:DropDownList>
					         			
				    
					</div>
			</div>

			<div class="child">
				<h2>No. of Children</h2>
					<div class="dropdown-button">  
					
					 <asp:DropDownList ID="DropDownList2" class="dropdown" runat="server" tabindex="10" data-settings='{"wrapperClass":"flat"}'>
                        <asp:ListItem Value="">0</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                       
                        </asp:DropDownList>
					       			

 		
					</div>
			</div>
		<div class="clear"></div>
		</div>

		<div class="suite">
			<div class="dropdown-button">
				<h2>Suite</h2> 
				
				  <asp:DropDownList ID="DropDownList3" class="dropdown" runat="server" tabindex="10" data-settings='{"wrapperClass":"flat"}'>
                        <asp:ListItem Value="1">-</asp:ListItem>
                        <asp:ListItem Value="1">Single Room</asp:ListItem>
                        <asp:ListItem Value="2">Premium Single Room</asp:ListItem>
                        <asp:ListItem Value="2">Double Room</</asp:ListItem>
                        <asp:ListItem Value="2">Premium Double Room</asp:ListItem>
                        <asp:ListItem Value="3">Deluxe Suite</asp:ListItem>
                        <asp:ListItem Value="4">Executive Suite</asp:ListItem>
                        <asp:ListItem Value="4">Ocean View Suite</asp:ListItem>
                        <asp:ListItem Value="4">Presidential Suite</asp:ListItem>
                        <asp:ListItem Value="3">The Penthouse</asp:ListItem>
                       
                        </asp:DropDownList>        			
    			
			</div>
		</div>

		<div class="book-pag">
			<h2>Select Date</h2>
			<div class="book-pag-frm1">
				<label>Check In</label>
                <asp:TextBox ID="datepicker1" class="date"  runat="server" value="Date"  onblur="if (this.value == '') {this.value = '';}" required=""></asp:TextBox>
				<%--<input class="date" id="datepicker1" type="text" value="Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required="">--%>
			</div>
			<div class="book-pag-frm2">
				<label>Check Out</label>
				<asp:TextBox ID="datepicker2" class="date"  runat="server" value="Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required=""></asp:TextBox>
				<%--<input class="date" id="datepicker2" type="text" value="Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required="">--%>
			</div>
		<div class="clear"></div>
		</div>	

		<!--Date Picker-->
			
			<script src="js/jquery-ui.js" type="text/javascript"></script>
					  <script type="text/javascript">
                          $(function () {
                              $("#datepicker,#datepicker1,#datepicker2").datepicker();
                          });
                      </script>
		<!--//Date Picker-->

		<%--<div class="rs">					
				<div class="check_box"> <div class="radio"> <label><input type="checkbox" name="radio" checked=""><i></i>Enable Room Service</label> </div></div>
		</div>--%>

		<div class="food">
			<h2>Choose Cuisine</h2>
				<div class="radio-btns">						
					
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Value="0">Loval</asp:ListItem>
                    <asp:ListItem Value="1">Multi</asp:ListItem>
						
                    </asp:RadioButtonList>	
                    
		           
				</div>
		</div>
		
		<div class="food">
			<h2>Full name</h2>
				<div class="radio-btns" 
                        style="font-size: x-large; font-weight: bold; background-color: #0000FF">						
					
                    <asp:TextBox ID="txt_fulname" runat="server" Width="509px"></asp:TextBox> 	
                    
		           
				</div>
		</div>

		<div class="submit">
			
			<asp:Button ID="Button1" runat="server" class="" Text="Book Now" OnClick="Button1_Click1" />

               <%-- <asp:Button ID="btn_dm" runat="server" class="book" Text="Book Now" />--%>
				<%--<input type="submit" class="book" value="BOOK NOW">--%>
		</div>

</div>

<div class="reg-footer">
     <p>Copyright &copy; 2021 Booking . All Rights Reserved | Design by <a href="#">Jayesh Ahir</a></p>
</div>
    
    
    </div>

    </form>
</body>
</html>
