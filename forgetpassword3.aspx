<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgetpassword3.aspx.cs" Inherits="forgetpassword3" %>

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
            width: 320px;
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2"><strong>Pratik Book Stores</strong></span><br />
        <br />
        <br />
        <div style="height: 51px">
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" style="z-index: 1; left: 348px; top: 119px; position: absolute; text-decoration:none; font-weight: 700; font-size: x-large; width: 102px; color: #000000; background-color: #FFFFCC;" Height="29px" PostBackUrl="~/aboutus1.aspx">About us</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" style="z-index: 1; top: 119px; position: absolute; height:29px; font-size: x-large; background-color: #FFFFCC;text-decoration:none; left: 584px;" Font-Bold="True" ForeColor="Black" PostBackUrl="~/contactus.aspx">Contact us</asp:LinkButton>
        </div>
    
    </div>
        <asp:Panel ID="Panel1" runat="server" Height="14.1cm">
            <asp:Panel ID="Panel2" runat="server" Height="57px" style="background-color: #000066">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" style="z-index: 1; left: 114px; top: 117px; position: absolute; font-weight: 700; height: 29px; color: #000000; width: 66px; font-size: x-large; background-color: #FFFFCC;text-decoration:none; right: 925px;" PostBackUrl="~/login1.aspx">Home</asp:LinkButton>
            </asp:Panel>
            &nbsp;<asp:Panel ID="Panel3" runat="server" style="border:5px solid #CC0000; font-weight: 700; background-color: #CCFFFF; margin-top: 0px; z-index: 1; left: 10px; top: 163px; position: absolute; height: 461px; width: 224px;">
                <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="#000066" style="z-index: 1; left: 74px; top: 78px; position: absolute; font-size: x-large;  font-weight: 700; background-color: #CCFFFF;" Height="29px" Width="66px" PostBackUrl="~/login1.aspx">Home</asp:LinkButton>
                <asp:LinkButton ID="LinkButton5" runat="server" style="z-index: 1; left: 64px; top: 213px; position: absolute; font-size: x-large; background-color: #CCFFFF;  color: #000066; bottom: 222px;" PostBackUrl="~/aboutus1.aspx">About  us</asp:LinkButton>
                <asp:LinkButton ID="LinkButton6" runat="server" style="z-index: 1; left: 62px; top: 339px; position: absolute; font-size: x-large; background-color: #CCFFFF;  color: #000066;" PostBackUrl="~/contactus.aspx">Contact us</asp:LinkButton>
                <asp:Panel ID="Panel4" runat="server" style="z-index: 1; left: 233px; top: -1px; position: absolute; height: 455px; width: 824px">
                    <table class="auto-style5">
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 225px; top: 49px; position: absolute; height: 37px" Text="Enter email id"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 327px; top: 49px; position: absolute"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 327px; top: 95px; position: absolute" Text="Submit" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="lblmsg" runat="server" style="z-index: 1; left: 3px; top: 141px; position: absolute"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </asp:Panel>
            <br />
            <br />
        </asp:Panel>
            <div class="auto-style3">
                &nbsp;<span class="auto-style4">&copy; 2017 Pratik book stores&nbsp; </span></div>
    </form>
</body>
</html>
