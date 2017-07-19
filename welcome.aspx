<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            background-color: #FFFFCC;
            height: 89px;
        }
        .auto-style2 {
            color: #000066;
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: center;
            color: #000066;
            background-color: #000066;
            z-index: 1;
            left: 19px;
            top: 638px;
            position: absolute;
            height: 20px;
            width: 1356px;
        }
        .auto-style4 {
            font-size: large;
            color: #000066;
            font-weight: 700;
            background-color: #FFFFCC;
        }
        </style>
</head>
    <script type="text/javascript" src="javascript/JavaScript.js"></script>
<link href="css/StyleSheet2.css" rel="stylesheet" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>  
<script src="javascript/changingimage3.js"></script>

<body onload="startTime();" >
    <form id="form1" runat="server">
    <div class="auto-style1">
    <marquee style="top:0px;font-weight:bold;color:#CC0000;font-size:large"> Welcome to pratik book stores</marquee>
        <br />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/books-icon.png" style="z-index: 1; left: 526px; top: 29px; position: absolute; width: 69px; height: 48px" />
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 1166px; top: 56px; position: absolute" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label>
        <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/changepassword.aspx" style="z-index: 1; left: 83px; top: 60px; position: absolute" Font-Bold="True" ForeColor="#000066">Change password</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2"><strong>Pratik Book Stores</strong><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 948px; top: 52px; position: absolute" Text="Logout" />
        </span><br />
        <br />
        <br />
        <div style="height: 51px">
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" style="z-index: 1; left: 348px; top: 119px; position: absolute; text-decoration:none; font-weight: 700; font-size: x-large; width: 102px; color: #000000; background-color: #FFFFCC;" Height="29px" PostBackUrl="~/aboutus2.aspx">About us</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" style="z-index: 1; top: 119px; position: absolute; height:29px; font-size: x-large; background-color: #FFFFCC;text-decoration:none; left: 584px;" Font-Bold="True" ForeColor="Black" PostBackUrl="~/contactus2.aspx">Contact us</asp:LinkButton>
        </div>
    
    </div>
        <asp:Panel ID="Panel1" runat="server" Height="14cm">
            <asp:Panel ID="Panel2" runat="server" Height="57px" style="background-color: #000066">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" style="z-index: 1; left: 114px; top: 117px; position: absolute; font-weight: 700; height: 29px; color: #000000; width: 66px; font-size: x-large; background-color: #FFFFCC;text-decoration:none" PostBackUrl="~/welcome.aspx">Home</asp:LinkButton>
            </asp:Panel>
            <img alt="" id="img1"  src="images/books1.jpg"  style="z-index: 1; left: 255px; top: 155px; position: absolute; width: 80%; height: 264px; border:5px solid #CC0000" />
            <asp:Panel ID="Panel3" runat="server" Height="264px" Width="235px" style="border:5px solid #CC0000; font-weight: 700; background-color: #CCFFFF; margin-top: 0px; color: #CCFFFF;">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" style="z-index: 1; left: 40px; top: 180px; position: absolute; width: 174px" Text="Books Category"></asp:Label>
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Large" ForeColor="#000066" PostBackUrl="~/view_books.aspx" style="z-index: 1; left: 62px; top: 228px; position: absolute">Computers</asp:LinkButton>
                <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000066" PostBackUrl="~/view_books1.aspx" style="z-index: 1; left: 55px; top: 272px; position: absolute">Entertainment</asp:LinkButton>
                <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000066" PostBackUrl="~/view_books2.aspx" style="z-index: 1; left: 52px; top: 321px; position: absolute">Childrens book</asp:LinkButton>
                hh</asp:Panel>
            <asp:Panel ID="Panel4" runat="server" style="z-index: 1; left: 10px; top: 435px; position: absolute; height: 198px; width: 1085px; background-color: #FFFFCC;width:99%">
                <div class="hs">
    <div class="left-arrow" style="position:absolute;top:1.3cm; left:2cm">
         <a href="#prev">
         <!--<img src="images/Arrows-Back-icon.png"
         		name="scroller_left"
                width="70" 
                height="100" 
                border="0"
                alt="" style="z-index: 2" />-->
         </a>
    </div>
                     <div class="showcase" style="position:absolute;top:0cm; left:7.8cm">    
        <ul style="width:99999px;">
        <li><img src="images/book1.png"
        width="130" height="170"/>
            </li>
        <li><a href="aboutus1.aspx"><img src="images/book2.jpg" 
        width="130" height="170"/></a></li>
        <li><img src="images/book3.jpg"
        width="130" height="170"/></li>
        <li><img src="images/book4.jpg"
        width="130" height="170"/></li>
         <li><img src="images/book5.jpg"
         width="130" height="170"/></li>
            <li><img src="images/book6.jpg"
        width="130" height="170"/></li>
        </ul>    
    </div>

<div class="right-arrow" style="position:absolute;top:0.7cm; right:1.3cm">
    	<a href="#next">
        <!--<img src="images/Arrows-Forward-icon.png" 
        		name="scroller_right" 
                width="70" 
                height="100" 
                border="0"
                alt="">-->
        </a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" style="z-index: 1; left: 11px; top: 81px; position: absolute; text-decoration: underline;" Text="Our recent releases" Font-Underline="True"></asp:Label>
</div>


            </asp:Panel>
            <br />
            <br />
        </asp:Panel>
            <div class="auto-style3" style="position:absolute; left:7px; right:-23px;">
                &nbsp;<span class="auto-style4">&copy; 2017 Pratik book stores&nbsp; 
    </form>
    </body>
    </html>
