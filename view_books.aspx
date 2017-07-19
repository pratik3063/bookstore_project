<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_books.aspx.cs" Inherits="view_books" %>

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
            width: 1312px;
            height: 20px;
            position: absolute;
            left: 13px;
            top: 709px;
        }
        .auto-style4 {
            font-size: large;
            color: #000066;
            font-weight: 700;
            background-color: #FFFFCC;
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2"><strong>Pratik Book Stores</strong><asp:Label ID="Label1" runat="server" Font-Size="Large" style="z-index: 1; left: 1211px; top: 70px; position: absolute; height: 19px" Text="Cart"></asp:Label>
        </span>
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" style="z-index: 1; left: 1283px; top: 65px; position: absolute" Text="(0)"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/images/shop-cart-icon.png" NavigateUrl="~/bookcart1.aspx" style="z-index: 1; left: 1239px; top: 54px; position: absolute">HyperLink</asp:HyperLink>
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" style="z-index: 1; left: 968px; top: 47px; position: absolute" Text="Logout" />
        <br />
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
            &nbsp;<asp:Panel ID="Panel3" runat="server" Width="235px" style="border:5px solid #CC0000; font-weight: 700; background-color: #CCFFFF; margin-top: 0px; z-index: 1; left: 10px; top: 153px; position: absolute; height: 544px; width: 245px;" BackColor="Aqua">
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" style="z-index: 1; left: 33px; top: 65px; position: absolute; color: #000066" Text="Books Category"></asp:Label>
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="X-Large" ForeColor="#000066" style="z-index: 1; left: 61px; top: 169px; position: absolute">Computers</asp:LinkButton>
                <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="X-Large" ForeColor="#000066" PostBackUrl="~/view_books1.aspx" style="z-index: 1; left: 52px; top: 265px; position: absolute">Entertainment</asp:LinkButton>
                <asp:LinkButton ID="LinkButton6" runat="server" Font-Size="X-Large" ForeColor="#000066" PostBackUrl="~/view_books2.aspx" style="z-index: 1; left: 39px; top: 379px; position: absolute">Childrens Books</asp:LinkButton>
            </asp:Panel>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="z-index: 1; left: 448px; top: 175px; position: absolute; height: 431px; width: 187px" PageSize="3" OnPageIndexChanging="GridView1_PageIndexChanging"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">

                <AlternatingRowStyle BackColor="White" />

                <Columns>
                            <asp:TemplateField HeaderText="ID">
                                <ItemTemplate>
                                    <asp:Label ID="lbl" runat="server" Text='<%#Eval("ID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="image">
                                <ItemTemplate>
                                   <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("image") %>' Height="100px" Width="100px" />
                                </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                    <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ISBN">
                                <ItemTemplate>
                    
                                    <asp:Label ID="lbl1" runat="server" Text='<%#Eval("ISBN") %>'></asp:Label>
                                </ItemTemplate>
                                </asp:TemplateField>
                                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 874px; top: 252px; position: absolute" Text="Add to cart" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" style="z-index: 1; left: 877px; top: 367px; position: absolute" Text="Add to cart" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" style="z-index: 1; left: 876px; top: 458px; position: absolute" Text="Add to cart" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" style="z-index: 1; left: 880px; top: 566px; position: absolute" Text="Add to cart" OnClick="Button4_Click" />
        </asp:Panel>
            <div class="auto-style3" style="z-index: 1">
                &nbsp;<span class="auto-style4">&copy; 2017 Pratik book stores&nbsp; </span></div>
    </form>
</body>
</html>