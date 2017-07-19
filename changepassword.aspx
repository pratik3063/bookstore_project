<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

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
            width: 218px;
        }
        .auto-style7 {
            width: 339px;
        }
        #Reset1 {
            z-index: 1;
            left: 476px;
            top: 119px;
            position: absolute;
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
            <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#FFFFCC" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" NavigateUrl="~/welcome.aspx" style="z-index: 1; left: 246px; top: 122px; text-decoration:none; position: absolute">Home</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" BackColor="#FFFFCC" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" NavigateUrl="~/aboutus2.aspx" style="z-index: 1; left: 445px; top: 122px; text-decoration:none; position: absolute">About Us</asp:HyperLink>
        </div>
    
    </div>
        <asp:Panel ID="Panel1" runat="server" Height="14.1cm">
            <asp:Panel ID="Panel2" runat="server" Height="57px" style="background-color: #000066">
                <asp:HyperLink ID="HyperLink2" runat="server" BackColor="#FFFFCC" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" NavigateUrl="~/contactus2.aspx" style="z-index: 1; left: 638px; top: 122px; text-decoration:none; position: absolute">Contact Us</asp:HyperLink>
            </asp:Panel>
            &nbsp;<asp:Panel ID="Panel3" runat="server" style="border:5px solid #CC0000; font-weight: 700; background-color: #CCFFFF; margin-top: 0px; z-index: 1; left: 10px; top: 158px; position: absolute; height: 461px; width: 219px;">
                <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="#000066" style="z-index: 1; left: 41px; top: 134px; position: absolute; font-size: x-large;  font-weight: 700; background-color: #CCFFFF; width: 118px;" Height="29px" PostBackUrl="~/view_books.aspx" CausesValidation="False">Computers</asp:LinkButton>
                <asp:LinkButton ID="LinkButton5" runat="server" style="z-index: 1; left: 30px; top: 227px; position: absolute; font-size: x-large; background-color: #CCFFFF;  color: #000066;" ForeColor="#000066" PostBackUrl="~/view_books2.aspx" CausesValidation="False">Entertainment</asp:LinkButton>
                <asp:LinkButton ID="LinkButton6" runat="server" style="z-index: 1; left: 27px; top: 355px; position: absolute; font-size: x-large; background-color: #CCFFFF; color: #000066;" ForeColor="#000066" PostBackUrl="~/view_books1.aspx" BackColor="#CCFFFF" CausesValidation="False">Childrens Books</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Panel ID="Panel4" runat="server" style="z-index: 1; left: 227px; top: 4px; position: absolute; height: 457px; width: 813px">
                    <table class="auto-style5">
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style6">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 201px; top: 26px; position: absolute" Text="Enter old password"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 343px; top: 23px; position: absolute"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter old password" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 568px; top: 26px; position: absolute"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" style="z-index: 1; left: 199px; top: 48px; position: absolute" Text="Enter new password"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 342px; top: 47px; position: absolute" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter new password" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 568px; top: 49px; position: absolute"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 174px; top: 72px; position: absolute" Text="Enter confirm password"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 342px; top: 71px; position: absolute" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter confirm Password" ForeColor="Red" style="z-index: 1; left: 568px; top: 72px; position: absolute"></asp:RequiredFieldValidator>
                                <br />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="New password and confirm password does not match" ForeColor="Red" style="z-index: 1; left: 568px; top: 91px; position: absolute"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style6">
                                <input id="Reset1" type="reset" value="reset" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 284px; top: 118px; position: absolute" Text="Change password" />
                            </td>
                            <td class="auto-style6">&nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style6">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style6">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Label ID="Label4" runat="server" Font-Size="X-Large" ForeColor="#000066" style="z-index: 1; left: 23px; top: 51px; position: absolute" Text="Books Category"></asp:Label>
            </asp:Panel>
            <br />
            <br />
        </asp:Panel>
            <div class="auto-style3">
                &nbsp;<span class="auto-style4">&copy; 2017 Pratik book stores&nbsp; </span></div>
    </form>
</body>
</html>
