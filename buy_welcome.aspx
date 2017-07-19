<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buy_welcome.aspx.cs" Inherits="buy_welcome" %>

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
        }
        .auto-style4 {
            font-size: large;
            color: #000066;
            font-weight: 700;
            background-color: #FFFFCC;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-size: large;
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
        }
        </style>
</head>
    <script type="text/javascript" src="javascript/changingimage3.js"></script>

<body onload="startTime();" >
    <form id="form1" runat="server">
    <div class="auto-style1">
    <marquee style="top:0px;font-weight:bold;color:#CC0000;font-size:large"> Welcome to pratik book stores</marquee>
        <br />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/books-icon.png" style="z-index: 1; left: 526px; top: 29px; position: absolute; width: 69px; height: 48px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2"><strong>Pratik Book Stores</strong><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 980px; top: 54px; position: absolute" Text="Logout" />
        </span><br />
        <br />
        <br />
        <div style="height: 51px">
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" style="z-index: 1; left: 348px; top: 119px; position: absolute; text-decoration:none; font-weight: 700; font-size: x-large; width: 102px; color: #000000; background-color: #FFFFCC;" Height="29px" PostBackUrl="~/aboutus2.aspx">About us</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" style="z-index: 1; top: 119px; position: absolute; height:29px; font-size: x-large; background-color: #FFFFCC;text-decoration:none; left: 584px;" Font-Bold="True" ForeColor="Black" PostBackUrl="~/contactus2.aspx">Contact us</asp:LinkButton>
        </div>
    
    </div>
        <asp:Panel ID="Panel1" runat="server" Height="14.1cm">
            <asp:Panel ID="Panel2" runat="server" Height="57px" style="background-color: #000066">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" style="z-index: 1; left: 114px; top: 117px; position: absolute; font-weight: 700; height: 29px; color: #000000; width: 66px; font-size: x-large; background-color: #FFFFCC;text-decoration:none" PostBackUrl="~/welcome.aspx">Home</asp:LinkButton>
            </asp:Panel>
            &nbsp;<table class="auto-style5">
                <tr>
                    <td class="auto-style6"><strong>Thank you at buying at Pratik book stores</strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </asp:Panel>
            <div class="auto-style3">
                &nbsp;<span class="auto-style4">&copy; 2017 Pratik book stores&nbsp; </span></div>
    </form>
</body>
</html>

