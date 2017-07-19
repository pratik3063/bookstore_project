<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Buy1.aspx.cs" Inherits="Buy1" %>

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
            width: 313px;
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
    
    </div>
        <asp:Panel ID="Panel1" runat="server" Height="14.1cm">
            <asp:Panel ID="Panel2" runat="server" Height="57px" style="background-color: #000066">
                <asp:LinkButton ID="LinkButton8" runat="server" BackColor="#FFFFCC" CausesValidation="False" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" PostBackUrl="~/contactus2.aspx" style="z-index: 1; left: 767px; top: 121px; text-decoration:none; position: absolute">Contact us</asp:LinkButton>
                <asp:LinkButton ID="LinkButton9" runat="server" BackColor="#FFFFCC" CausesValidation="False" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" PostBackUrl="~/aboutus2.aspx" style="z-index: 1; left: 528px; top: 124px; text-decoration:none; position: absolute">About Us</asp:LinkButton>
                <asp:LinkButton ID="LinkButton10" runat="server" BackColor="#FFFFCC" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" PostBackUrl="~/welcome.aspx" style="z-index: 1; left: 324px; top: 122px; text-decoration:none; position: absolute" CausesValidation="False">Home</asp:LinkButton>
            </asp:Panel>
            &nbsp;<asp:Panel ID="Panel3" runat="server" Width="235px" style="border:5px solid #CC0000; font-weight: 700; background-color: #CCFFFF; margin-top: 0px; z-index: 1; left: 10px; top: 156px; position: absolute; height: 473px; width: 245px;">
                <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="#000066" style="z-index: 1; left: 81px; top: 71px; position: absolute; font-size: x-large; ; font-weight: 700; background-color: #CCFFFF;" Height="29px" Width="66px" PostBackUrl="~/welcome.aspx" CausesValidation="False">Home</asp:LinkButton>
                <asp:LinkButton ID="LinkButton5" runat="server" style="z-index: 1; left: 69px; top: 179px; position: absolute; font-size: x-large; background-color: #CCFFFF;  color: #000066;" PostBackUrl="~/aboutus2.aspx" CausesValidation="False">About  us</asp:LinkButton>
                <asp:LinkButton ID="LinkButton6" runat="server" style="z-index: 1; left: 62px; top: 288px; position: absolute; font-size: x-large; background-color: #CCFFFF;  color: #000066;" PostBackUrl="~/contactus2.aspx" CausesValidation="False">Contact us</asp:LinkButton>
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server" style="z-index: 1; left: 269px; top: 163px; position: absolute; height: 469px; width: 1077px" BackColor="#FFFFCC">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td>
                            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 260px; top: 26px; position: absolute" Text="Order id" Font-Bold="True"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 189px; top: 47px; position: absolute" Text="name of customer" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 320px; top: 49px; position: absolute"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter your name" ForeColor="Red" style="z-index: 1; left: 573px; top: 49px; position: absolute"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 202px; top: 72px; position: absolute" Text="Contact number" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" MaxLength="11" style="z-index: 1; left: 320px; top: 72px; position: absolute"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter the contact number" ForeColor="Red" style="z-index: 1; left: 572px; top: 72px; position: absolute"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 210px; top: 97px; position: absolute" Text="payment mode" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 320px; top: 95px; position: absolute" Text="cash on delivery" Font-Bold="True"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 258px; top: 131px; position: absolute" Text="Address" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <br />
                            <br />
                            <br />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter address" ForeColor="Red" style="z-index: 1; left: 521px; top: 131px; position: absolute"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 73px; top: 207px; position: absolute" Text="Name of the books to be purchased" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <br />
                            <br />
                            <br />
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
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 343px; top: 349px; position: absolute" Text="Buy" />
                            </td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 523px; top: 445px; position: absolute" Font-Bold="True"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 588px; top: 283px; position: absolute; height: 67px" TextMode="MultiLine"></asp:TextBox>
            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="bookname" DataValueField="bookname" style="z-index: 1; left: 595px; top: 363px; position: absolute"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookcartConnectionString %>" SelectCommand="SELECT [bookname] FROM [bookcart4]"></asp:SqlDataSource>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 597px; top: 195px; position: absolute; height: 19px" Text="Label" Font-Bold="True"></asp:Label>
            </asp:Panel>
            <div class="auto-style3">
                &nbsp;<span class="auto-style4">&copy; 2017 Pratik book stores&nbsp; </span></div>
    </form>
</body>
</html>