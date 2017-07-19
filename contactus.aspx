<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="home" %>

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
        }
        .auto-style7 {
            width: 395px;
            text-align: right;
        }
        .auto-style8 {
            color: #FFFFCC;
        }
        </style>
</head>
    <script type="text/javascript" src="javascript/changingimage3.js"></script>

<body onload="startTime();" >
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <br />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/books-icon.png" style="z-index: 1; left: 511px; top: 21px; position: absolute; width: 69px; height: 48px" />
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
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" style="z-index: 1; left: 114px; top: 117px; position: absolute; font-weight: 700; height: 29px; color: #000000; width: 66px; font-size: x-large; background-color: #FFFFCC;text-decoration:none" PostBackUrl="~/login1.aspx">Home</asp:LinkButton>
            </asp:Panel>
            &nbsp;<asp:Panel ID="Panel3" runat="server" style="font-weight: 700;border:5px solid #CC0000;position:absolute; background-color: #CCFFFF; top: 151px; left: 11px; height: 467px; width: 230px;">
                <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="#000066" Height="29px" style="z-index: 1; left: 72px; top: 126px; position: absolute; font-size: x-large;  font-weight: 700; background-color: #CCFFFF; width: 116px;" PostBackUrl="~/login1.aspx">Home</asp:LinkButton>
                <asp:LinkButton ID="LinkButton5" runat="server" style="z-index: 1; left: 58px; top: 221px; position: absolute; font-size: x-large; background-color: #CCFFFF;  color: #000066; bottom: 224px;" PostBackUrl="~/aboutus1.aspx">About us</asp:LinkButton>
                <asp:LinkButton ID="LinkButton6" runat="server" style="z-index: 1; left: 50px; top: 321px; position: absolute; font-size: x-large; background-color: #CCFFFF; color: #000066;" PostBackUrl="~/contactus.aspx">Contact us</asp:LinkButton>
                </asp:Panel>
                <asp:Panel ID="Panel4" runat="server" style="z-index: 1; left: 257px; top: 155px; margin-right:0px; position: absolute; height: 474px; width: 29cm; background-color: #FFFFCC">
                
                    <table class="auto-style5">
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td><strong>Contact Form</strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" style="z-index: 1; left: 356px; top: 72px; position: absolute" Text="Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 402px; top: 72px; position: absolute; height: 22px; width: 162px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 402px; top: 138px; position: absolute;height:22px;width:162px" TextMode="Email"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; top: 184px; position: absolute; left: 402px;height:22px;width:162px;" TextMode="Number"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" style="z-index: 1; left: 327px; top: 141px; position: absolute; width: 68px" Text="E-mail ID"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" style="z-index: 1; left: 311px; top: 187px; position: absolute; width: 81px" Text="Contact no"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <iframe allowfullscreen="" frameborder="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3767.280118101288!2d72.8638788149035!3d19.226619987001676!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7b0ce14e2d6e7%3A0x1eb63bac8a190a32!2sKulupwadi+Rd%2C+Borivali+East%2C+Mumbai%2C+Maharashtra+400066!5e0!3m2!1sen!2sin!4v1489063971839" style="border-style: none; border-color: inherit; border-width: 0; height: 193px; width: 296px; z-index: 1; left: 658px; top: 245px; position: absolute;"></iframe>
                            </td>
                            <td>
                                <asp:Panel ID="Panel5" runat="server" style="z-index: 2; left: 113px; top: 310px; position: absolute; height: 107px; width: 238px; font-size: x-large; background-color: #000066">
                                    <strong><span class="auto-style8">Contact us on </span>
                                    <br class="auto-style8" />
                                    <span class="auto-style8">1800-44-55</span><br class="auto-style8" /> <span class="auto-style8">email id</span><br class="auto-style8" /> <span class="auto-style8">pratikbks@gmail.com</span></strong><br />
                                    <br />
                                </asp:Panel>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 409px; top: 250px; position: absolute" Text="Submit" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                
            </asp:Panel>
            <br />
            <br />
        </asp:Panel>
            <div class="auto-style3">
                &nbsp;<span class="auto-style4">&copy; Pratik book stores&nbsp; </span></div>
    </form>
</body>
</html>
